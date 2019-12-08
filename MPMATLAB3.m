%Machine Problem 3 

function c = MPMATLAB3(matx)
for i = 1:length(matx)-1
    c = polyfit(matx(:,1), matx(:,2), i);
    normy = norm((matx(:,2)) - polyval(c, matx(:,1)));
    vec = [i,normy];
    if i == 1
        vec1 = vec;
    end
    if vec1(2) >= vec(2)
        vec2 = vec(1);
    end
end

c= polyfit(matx(:,1), matx(:,2), vec2);
fprintf(' Coefficient 1: %f    Coefficient 2: %f     Coefficient 3: %f',c)
end   