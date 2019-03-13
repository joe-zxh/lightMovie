function [ startPos ] = textStartPos( text , inputLen)

startSymbol =' ';
endSymbol ='~';


if(text(1,1)>startSymbol && text(1,1)<endSymbol) %ASCII×Ö·û
    startPos=-30;
    if(length(text)==15)
        startPos=-30;
        return;
    end
    
    if(length(text)==14)
        startPos=-80;
        return;
    end
    
    if(length(text)==13)
        startPos=-50;
        return;
    end
    
    if(length(text)==12)
        startPos=-10;
        return;
    end
    
    if(length(text)==11)
        startPos=30;
        return;
    end
    
    if(length(text)==10)
        startPos=60;
        return;
    end
    
    if(length(text)==9)
        startPos=85;
        return;
    end
    
    if(length(text)==8)
        startPos=130;
        return;
    end
    
    if(length(text)==7)
        startPos=165;
        return;
    end
    
    if(length(text)==6)
        startPos=200;
        return;
    end
    
    if(length(text)==5)
        startPos=230;
        return;
    end
    
    if(length(text)==4)
        startPos=280;
        return;
    end
    
    if(length(text)==3)
        startPos=80;
        return;
    end
    
    if(length(text)==2)
        startPos=130;
        return;
    end
    
    if(length(text)==1)
        startPos=180;
        return;
    end
    
    
else%ÖÐÎÄ×Ö·û
    startPos=-55;
    if(length(text)==7)
        startPos=-55;
        return;
    end
    
    if(length(text)==6)
        startPos=0;
        return;
    end
    
    if(length(text)==5)
        startPos=80;
        return;
    end
    
    if(length(text)==4)
        startPos=-140;
        return;
    end
    
    if(length(text)==3)
        startPos=-50;
        return;
    end
    
    if(length(text)==2)
        startPos=40;
        return;
    end
    
    if(length(text)==1)
        startPos=130;
        return;
    end
    
end


end

