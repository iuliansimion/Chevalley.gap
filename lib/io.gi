

latexPoly:=function(poly,APR,var_name)
    local result,ext_rep,i,j,monom,coeff,
    avars,ext_avars,pos;

    if not IsPolynomialRing(APR) then return String(Int(poly)); fi;
    
    ext_rep:=ExtRepPolynomialRatFun(poly);
    avars:=IndeterminatesOfPolynomialRing(APR);
    ext_avars:=List(avars,i->ExtRepPolynomialRatFun(i));
    ext_avars:=List(ext_avars,i->i[1][1]);
    result:="";
    for i in 2*[1..Length(ext_rep)/2]-1 do
        monom:="";
        for j in 2*[1..Length(ext_rep[i])/2]-1 do
            pos:=Position(ext_avars,ext_rep[i][j]);
            monom:=Concatenation(monom,String(avars[pos]));
            if ext_rep[i][j+1]<>1 then
                monom:=Concatenation(monom,"^{",String(ext_rep[i][j+1]),"}");
            fi;
        od;
        coeff:=latexPoly(ext_rep[i+1],CoefficientsRing(APR),"a");#String(Int(ext_rep[i+1]));
        if i > 1 then result:=Concatenation(result,"+"); fi;
        if coeff="1" and monom<>"" then
            result:=Concatenation(result,monom);
        else
            result:=Concatenation(result,coeff,monom);
        fi;
    od;
    result:=ReplacedString(result,String(avars[1]){[1]},var_name);
    return result;
end;

latexUnipotent:=function(u)
    local result,
    coeffs,i,pr,root,poly,APR;
    
    coeffs:=coefficients(u);
    APR:=ring(chevalleyAdj(u));
    pr:=positiveRoots(chevalleyAdj(u));
    result:="";
    for i in [1..Length(coeffs)] do
        #root:=Concatenation(List(pr[coeffs[i][1]],j->String(j)));
        #poly:=ReplacedString(String(coeffs[i][2]),"*","");
        result:=Concatenation(result,"u_{",String(coeffs[i][1]),"}(",latexPoly(coeffs[i][2],APR,"t"),")");
    od;
    
    #result:=ReplacedString(result,"a","t");
    return result;
end;

latexUnipotentNice:=function(u)
    local result,
    coeffs,i,pr,root,poly,APR;
    
    coeffs:=coefficients(u);
    APR:=ring(chevalleyAdj(u));
    pr:=positiveRoots(chevalleyAdj(u));
    result:="";
    for i in [1..Length(coeffs)] do
        if type(chevalleyAdj(u))="F" then root:=Concatenation(List(pr[coeffs[i][1]],j->String(j))){[2,4,3,1]};
        else root:=Concatenation(List(pr[coeffs[i][1]],j->String(j))); fi;
        #poly:=ReplacedString(String(coeffs[i][2]),"*","");
        result:=Concatenation(result,"u_{",root,"}(",latexPoly(coeffs[i][2],APR,"t"),")");
    od;
    
    #result:=ReplacedString(result,"a","t");
    return result;
end;

latexUnipotentTrimmed:=function(u,step)
    local result,
    coeffs,i,pr,root,poly,APR,index;
    
    coeffs:=coefficients(u);
    APR:=ring(chevalleyAdj(u));
    pr:=positiveRoots(chevalleyAdj(u));
    result:="";
    index:=1;
    for i in [1..Length(coeffs)] do
        if index > step then
            index:=0;
            result:=Concatenation(result," \\\\ && ");
        fi;
        result:=Concatenation(result,"u_{",String(coeffs[i][1]),"}(",latexPoly(coeffs[i][2],APR,"t"),")\n");
        index:=index+Length(ExtRepPolynomialRatFun(coeffs[i][2]))/2;
    od;
    
    #result:=ReplacedString(result,"a","t");
    return result;
end;

trimmedString:=function(str,chars,step)
    local result,i;
    result:=[""];
    while Length(str)>0 do
        i:=step;
        while i<Length(str) and not str[i] in chars do
            i:=i+1;
        od;
        if i<Length(str) then 
            Add(result,Concatenation(str{[1..i-1]},"\\\\ \n & & "));
            str:=str{[i..Length(str)]};
        else
            Add(result,str);
            str:="";
        fi;
    od;
    return Concatenation(result);
end;

trimmedStringNice:=function(str,chars,step)
    local result,i;
    result:=[""];
    while Length(str)>0 do
        i:=step;
        while i<Length(str) and not str[i] in chars do
            i:=i+1;
        od;
        if i<Length(str) then 
            Add(result,Concatenation(str{[1..i-1]},"$\\\\\n&\n$"));
            str:=str{[i..Length(str)]};
        else
            Add(result,str);
            str:="";
        fi;
    od;
    return Concatenation(result);
end;

trimmedString2:=function(str,chars,start,step)
    local result,i,flag,nr_plusuri;
    result:=[""];
    flag:=true;
    nr_plusuri:=0;
    while Length(str)>0 do
        if flag = true then
            i:=step-start;
            flag:=false;
        else i:=step; fi;

        #i:=i+2*Length(Positions(str{[1..Minimum(i,Length(str))]},'+'));
        
        while i<Length(str) and not str[i] in chars do
            i:=i+1;
            #Print(str[i]);
            #if str[i] in ['+'] then nr_plusuri:=nr_plusuri+1; fi;
        od;
        if i<Length(str) then 
            Add(result,Concatenation(str{[1..i-1]},"\\\\ \n & & "));
            str:=str{[i..Length(str)]};
        else
            Add(result,str);
            #Print("\n",nr_plusuri,"\n");
            str:="";
            nr_plusuri:=0;
        fi;
    od;
    return Concatenation(result);
end;

trimmedString2Nice:=function(str,chars,start,step)
    local result,i,flag,nr_plusuri;
    result:=[""];
    flag:=true;
    nr_plusuri:=0;
    while Length(str)>0 do
        if flag = true then
            i:=step-start;
            flag:=false;
        else i:=step; fi;

        #i:=i+2*Length(Positions(str{[1..Minimum(i,Length(str))]},'+'));
        
        while i<Length(str) and not str[i] in chars do
            i:=i+1;
            #Print(str[i]);
            #if str[i] in ['+'] then nr_plusuri:=nr_plusuri+1; fi;
        od;
        if i<Length(str) then 
            Add(result,Concatenation(str{[1..i-1]},"$\\\\\n&\n$"));
            str:=str{[i..Length(str)]};
        else
            Add(result,str);
            #Print("\n",nr_plusuri,"\n");
            str:="";
            nr_plusuri:=0;
        fi;
    od;
    return Concatenation(result);
end;

latexClass:=function(orb,info)
    local fisier,
    u,sys,str,#info,
    step,i;

    #u:=Representative(orb);
    u:=BorelRep(orb);
    sys:=chevalleyAdj(u);
    #info:=handleClass(orb);
    
    fisier:=Concatenation("tex/data/",type(sys),String(rank(sys)),
                          "/char",String(Characteristic(sys)),
                          "/",Label(orb),".tex");
    fisier:=ReplacedString(fisier,"\\tilde ","s");
    fisier:=Filename(home_dir,fisier);

    step:=150;

    SizeScreen([2000,2000]);
    PrintTo(fisier,"\\textbf{Class $",Label(orb),"$:}");
    AppendTo(fisier,"\\begin{eqnarray*}\n");
    AppendTo(fisier,"&&\\mathbf{u}=");
    AppendTo(fisier,trimmedString(latexUnipotent(u),"u+",step));
#    AppendTo(fisier,"\\end{eqnarray*}\n");
#    AppendTo(fisier,"\\begin{eqnarray*}\n");
    AppendTo(fisier,"\\\\ && \\mathbf{C_U(u)^{\\circ}} =");
    AppendTo(fisier,trimmedString2(latexUnipotent(info[1][1]),"u+",30,step));
#    AppendTo(fisier,"\\end{eqnarray*}\n");
#    AppendTo(fisier,"\\begin{eqnarray*}\n");
    AppendTo(fisier,"\\\\ && \\mathbf{Z(C_U(u)^{\\circ})^{\\circ}} =");
    AppendTo(fisier,trimmedString2(latexUnipotent(info[2]),"u+",40,step));
    AppendTo(fisier,"\\\\ &&=");

    #
    #  short form of decomposition
    #
    str:="";
    for i in info[4][1] do
        if i <> info[4][1][1] then  str:=Concatenation(str," \\mid "); fi;
        str:=Concatenation(str,"W_{",String(Dimension(info[3][i])),"}");
    od;
    AppendTo(fisier,trimmedString(str,"u+",step));
    AppendTo(fisier," \\\|");
    str:="";
    for i in info[4][2] do
        if i <> info[4][2][1] then str:=Concatenation(str," \\mid "); fi;
        str:=Concatenation(str,"W_{",String(Dimension(info[3][i])),"}");
    od;
    AppendTo(fisier,trimmedString(str,"u+",step));
    #
    #  explicite form of decomposition
    #
    AppendTo(fisier,"\\\\ && =");
    str:="";
    for i in info[4][1] do
        if i <> info[4][1][1] then str:=Concatenation(str," \\mid "); fi;
        str:=Concatenation(str,latexUnipotent(info[3][i]));
    od;
    AppendTo(fisier,trimmedString(str,"u+",step));
    AppendTo(fisier," \\\|");
    str:="";
    for i in info[4][2] do
        if i <> info[4][2][1] then str:=Concatenation(str," \\mid "); fi;
        str:=Concatenation(str,latexUnipotent(info[3][i]));
    od;
    AppendTo(fisier,trimmedString(str,"u+",step));

    
    AppendTo(fisier,"\\end{eqnarray*}\n");
    SizeScreen([156,39]);
end;

latexClasses:=function(orbs,infos)
    local i;
    for i in [1..Length(Classes(orbs))] do
        latexClass(Classes(orbs)[i],infos[i]);
    od;
end;

latexClassShort:=function(orb,info)
    local fisier,
    uu,u,sys,str,#info,
    step,i;

    uu:=Representative(orb);
    u:=BorelRep(orb);
    sys:=chevalleyAdj(u);
    #info:=handleClass(orb);
    
    fisier:=Concatenation("tex/data/",type(sys),String(rank(sys)),
                          "/char",String(Characteristic(sys)),
                          "/",Label(orb),".tex");
    fisier:=ReplacedString(fisier,"\\tilde ","s");
    fisier:=Filename(home_dir,fisier);


    step:=150;

    SizeScreen([2000,2000]);
    PrintTo(fisier,"\\textbf{Class $",Label(orb),"$:}");
    AppendTo(fisier,"\\begin{eqnarray*}\n");
    AppendTo(fisier,"&&\\mathbf{\\tilde u}=");
    AppendTo(fisier,trimmedString(latexUnipotent(uu),"u+",step));
    AppendTo(fisier,"\\\\ &&\\mathbf{u}=");
    AppendTo(fisier,trimmedString(latexUnipotent(u),"u+",step));
#    AppendTo(fisier,"\\end{eqnarray*}\n");
#    AppendTo(fisier,"\\begin{eqnarray*}\n");
    AppendTo(fisier,"\\\\ && \\mathbf{C_U(u)^{\\circ}} =");
    AppendTo(fisier,trimmedString2(latexUnipotent(info[1]),"u+",30,step));
#    AppendTo(fisier,"\\end{eqnarray*}\n");
#    AppendTo(fisier,"\\begin{eqnarray*}\n");
    AppendTo(fisier,"\\\\ && \\mathbf{Z(C_U(u)^{\\circ})^{\\circ}} =");
    AppendTo(fisier,trimmedString2(latexUnipotent(info[2]),"u+",40,step));
    AppendTo(fisier,"\\end{eqnarray*}\n");
    SizeScreen([156,39]);
end;

latexClassShortNice:=function(orb,info)
    local fisier,
    uu,u,sys,str,#info,
    step,i;

    uu:=Representative(orb);
    u:=BorelRep(orb);
    sys:=chevalleyAdj(u);
    #info:=handleClass(orb);
    
    fisier:=Concatenation("tex/data/",type(sys),String(rank(sys)),
                          "/char",String(Characteristic(sys)),
                          "/",Label(orb),".tex");
    fisier:=ReplacedString(fisier,"\\tilde ","s");
    fisier:=Filename(home_dir,fisier);


    step:=150;

    SizeScreen([2000,2000]);
#    PrintTo(fisier,"$$\n\\begin{array}{p{3cm} p{20cm}}\n");
#    AppendTo(fisier,"\\textbf{Class $",Label(orb),"$:} &\\\\\n ");
    PrintTo(fisier,"\\textbf{p=",Characteristic(sys),":}");
    AppendTo(fisier,"&$\\mathbf{u}=");
    AppendTo(fisier,trimmedStringNice(latexUnipotentNice(uu),"u+",step));
    AppendTo(fisier,"$\\\\\n&\n$\\mathbf{\\tilde u}=");
    AppendTo(fisier,trimmedStringNice(latexUnipotentNice(u),"u+",step));
    AppendTo(fisier,"$\\\\\n&\n$\\mathbf{C_U(\\tilde u)^{\\circ}} =");
    AppendTo(fisier,trimmedString2Nice(latexUnipotentNice(Unipotent(chevalleyAdj(u),coefficients(info[1]),Ordering(u))),"u+",30,step));
    AppendTo(fisier,"$\\\\\n&\n$\\mathbf{Z(C_G(u))^{\\circ}} =");
    AppendTo(fisier,trimmedString2Nice(latexUnipotentNice(Unipotent(chevalleyAdj(uu),coefficients(FromPositiveBorel(orb,info[2])),Ordering(uu))),"u+",40,step));
    AppendTo(fisier,"$\\\\\n");
#    AppendTo(fisier,"$\n\\end{array}\n$$");
    SizeScreen([156,39]);
end;

latexClassVeryShortNice:=function(orb,info)
    local fisier,
    uu,u,sys,str,#info,
    step,i;

    uu:=Representative(orb);
    u:=BorelRep(orb);
    sys:=chevalleyAdj(u);
    #info:=handleClass(orb);
    
    fisier:=Concatenation("tex/data/",type(sys),String(rank(sys)),
                          "/char",String(Characteristic(sys)),
                          "/",Label(orb),".tex");
    fisier:=ReplacedString(fisier,"\\tilde ","s");
    fisier:=Filename(home_dir,fisier);


    step:=150;

    SizeScreen([2000,2000]);
#    PrintTo(fisier,"$$\n\\begin{array}{p{3cm} p{20cm}}\n");
#    AppendTo(fisier,"\\textbf{Class $",Label(orb),"$:} &\\\\\n ");
    PrintTo(fisier,"\\textbf{p=",Characteristic(sys),":}");
    AppendTo(fisier,"&$\\mathbf{u}=");
    AppendTo(fisier,trimmedStringNice(latexUnipotentNice(uu),"u+",step));
    AppendTo(fisier,"$\\\\\n&\n$\\mathbf{\\tilde u}=");
    AppendTo(fisier,trimmedStringNice(latexUnipotentNice(u),"u+",step));
#    AppendTo(fisier,"$\\\\\n&\n$\\mathbf{C_U(\\tilde u)^{\\circ}} =");
#    AppendTo(fisier,trimmedString2Nice(latexUnipotentNice(Unipotent(chevalleyAdj(u),coefficients(info[1]),Ordering(u))),"u+",30,step));
    AppendTo(fisier,"$\\\\\n&\n$\\mathbf{Z(C_G(u))^{\\circ}} =");
    AppendTo(fisier,trimmedString2Nice(latexUnipotentNice(Unipotent(chevalleyAdj(uu),coefficients(FromPositiveBorel(orb,info[2])),Ordering(uu))),"u+",40,step));
    AppendTo(fisier,"$\\\\\n");
#    AppendTo(fisier,"$\n\\end{array}\n$$");
    SizeScreen([156,39]);
end;

latexClassesShort:=function(orbs,infos)
    local i;
    for i in [1..Length(Classes(orbs))] do
        latexClassShort(Classes(orbs)[i],infos[i]);
    od;
end;

latexClassesShortNice:=function(orbs,infos)
    local i;
    for i in [1..Length(Classes(orbs))] do
        latexClassShortNice(Classes(orbs)[i],infos[i]);
    od;
end;

latexClassesVeryShortNice:=function(orbs,infos)
    local i;
    for i in [1..Length(Classes(orbs))] do
        latexClassVeryShortNice(Classes(orbs)[i],infos[i]);
    od;
end;

latexFisiere:=function(orbs)
    local result,
    sys,tip,rang,p,
    fisier,fisi,orb;

    sys:=algebraicU(orbs);
    tip:=type(sys);
    rang:=rank(sys);
    p:=Characteristic(sys);
    fisier:=Concatenation("tex/data/all",tip,String(rang),"char",String(p),".tex");
    fisier:=Filename(home_dir,fisier);
    

    result:="";
    for orb in Classes(orbs) do
        result:=Concatenation(result,"\\input{data/",tip,String(rang),"/char",String(p),"/",Label(orb),".tex}\n");
        fisi:=Concatenation("tex/data/",tip,String(rang),"/char",String(p),"/",Label(orb),".tex");
        fisi:=ReplacedString(fisi,"\\tilde ","s");
        fisi:=Filename(home_dir,fisi);
        PrintTo(fisi," ");
    od;

    result:=ReplacedString(result,"\\tilde ","s");
    PrintTo(fisier,result);
end;

latexFisiereNice:=function(orbs)
    local result,inainte,dupa,
    sys,tip,rang,p,
    fisier,fisi,orb;

    sys:=algebraicU(orbs);
    tip:=type(sys);
    rang:=rank(sys);
    p:=Characteristic(sys);
    fisier:=Concatenation("tex/data/all",tip,String(rang),"char",String(p),".tex");
    fisier:=Filename(home_dir,fisier);
    
    dupa:="\\end{array}$";

    result:="";
    for orb in Classes(orbs) do
        inainte:=Concatenation("\\\\\n\\par\\noindent\n$\\begin{array}{p{0.7cm} p{15cm}}\n$\\mathbf{",Label(orb),"}$ &\\\\");
        result:=Concatenation(result,inainte,"\n\\input{data/",tip,String(rang),"/char",String(p),"/",Label(orb),".tex}\n",dupa,"\n");
        fisi:=Concatenation("tex/data/",tip,String(rang),"/char",String(p),"/",Label(orb),".tex");
        fisi:=ReplacedString(fisi,"\\tilde ","s");
        fisi:=Filename(home_dir,fisi);
#        PrintTo(fisi," ");
    od;

    result:=ReplacedString(result,"\\tilde ","s");
    PrintTo(fisier,result);
end;


#
#   SAGE
#

sageAdu:=function(classes)
    local sys,orbs,orbs_len,o,fisier_out,dir,dir_labels,ad,result,i,j,dim;
    sys:=algebraicU(classes);
    orbs:=Classes(classes);
    dir_labels:=Directory(Concatenation("~/workspace/ChevalleyAdj/sage/data/",type(sys),String(rank(sys))));
    dir:=Directory(Concatenation("~/workspace/ChevalleyAdj/sage/data/",
                                 type(sys),String(rank(sys)),"/char",String(Characteristic(sys))));
    
    SizeScreen([2000,2000]);
    for o in orbs do
        fisier_out:=Concatenation(Label(o),".sage");
        fisier_out:=ReplacedString(fisier_out,"\\tilde ","s");
        fisier_out:=Filename(dir,fisier_out);
        ad:=Descend(Representative(o),chevalleyAdj(chevalleyAdj(Representative(o))));
        ad:=Adu(ad);
        ad:=List(ad,i->List(i,j->Int(j)));
#        result:=List(ad,i->ReplacedString(String(i),", ",","));
#        result:=ReplacedString(result,", ",",");
#        result:=ReplacedString(result,"],","],\n");
#        PrintTo(fisier_out,Concatenation("rep=",result));
        PrintTo(fisier_out,"rep=");
        AppendTo(fisier_out,"[");
        dim:=Length(ad);
        for i in [1..dim] do
            AppendTo(fisier_out,"[");
            for j in [1..dim] do
                AppendTo(fisier_out,String(ad[i][j]));
                if j<>dim then AppendTo(fisier_out,","); fi;
            od;
            AppendTo(fisier_out,"]");
            if i<>dim then AppendTo(fisier_out,",\n"); fi;
        od;
        AppendTo(fisier_out,"]");
    od;

    fisier_out:=Filename(dir_labels,Concatenation("char",String(Characteristic(sys)),"Labels.sage"));
    PrintTo(fisier_out,"labels=[");
    orbs_len:=Length(orbs);
    for i in [1..orbs_len] do
         AppendTo(fisier_out,"\"",ReplacedString(Label(orbs[i]),"\\tilde ","s"),"\"");
         if i<>orbs_len then AppendTo(fisier_out,","); fi;
    od;
    AppendTo(fisier_out,"]");
    
    SizeScreen([156,39]);
end;

latexJordanBlocks:=function(classes)
    local sys,result,fisier_out,tex_blocks,o;
    sys:=algebraicU(classes);
    fisier_out:=Concatenation("~/workspace/ChevalleyAdj/tex/data/",
                              type(sys),String(rank(sys)),"/char",String(Characteristic(sys)),"blocks.tex");

    tex_blocks:=function(blocks)
        local result;
        result:=Concatenation(List(blocks,b->Concatenation(",",String(b[1]),"^{",String(b[2]),"}")));
        result:=result{[2..Length(result)]};
        return ReplacedString(result,"^{1}","");
    end;
    
    result:="";
    for o in Classes(classes) do
        result:=Concatenation(result,"$",Label(o),"$ & $",tex_blocks(AduJordanBlocks(Representative(o))),"$\\\\ \n");
    od;

    
    PrintTo(fisier_out,"\\begin{tabular}{|c|c|}\n \\hline \n");
    AppendTo(fisier_out,"Class & Blocks\\\\ \\hline\n");
    AppendTo(fisier_out,result,"\\hline\n");
    AppendTo(fisier_out,"\\end{tabular}\n");
end;
