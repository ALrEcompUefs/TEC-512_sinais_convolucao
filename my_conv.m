function [y] = my_conv(x,h)
    Nx = length(x);
    Nh = length(h);
    Ny = Nx+Nh-1;
    
    x = [x zeros(1,Nh-1)];
    h = [h zeros(1,Nx-1)];
    
    y = zeros(1,Ny);
    for i = 1:Ny
        y(i)=0;
        for j = 1:i
            y(i)=y(i)+(x(j)*h(i-j+1)); 
        end
    end
end
