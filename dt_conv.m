function [y] = dt_conv(x,h)
    %obtem o comprimento dos sinais
    x_size = length(x);
    h_size = length(h);
    
    % Comprimento do sinal convoluído
    y_size = x_size + h_size - 1;
    
    % inicializa vetor para saida
    y = zeros(1,y_size);
    % variavel auxiliar
    soma =0;
    % executa convolução
    for n=1:y_size
        soma =0;
        for k=1:x_size
            if (n - k + 1 > 0 && n - k + 1 <= h_size)
                soma = soma + x(k) * h(n - k + 1);
            end
        end
        y(n) = soma;
    end
end

