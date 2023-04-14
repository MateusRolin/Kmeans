function [normal] = Normaliza(base)
  [l,c] = size(base);
  normal = zeros(l,c);
  MAIOR = 0;
  MENOR = inf;
 for i = 1:l
   for j = 1:c
     % Pega o maior e o menor valor para fazer a conta da Normalização
     if (MAIOR < base(i,j))
       MAIOR = base(i, j);
     endif
     if (MENOR > base(i, j))
       MENOR = base(i, j);
     endif
   endfor
 endfor

 for i = 1:l
   for j = 1:c
     normal(i, j)  = (base(i, j)- MENOR)/(MAIOR - MENOR);
   endfor
 endfor

 endfunction
