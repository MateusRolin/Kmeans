function [matriz] = Confusao(rotulos, calClass)
  [linhas, c] = size(calClass);
  matriz = zeros(2,2);

  for i = 1:linhas
    if(rotulos(i) == 1 && calClass(i) == 1)
      matriz(1,1)++;
    endif
    if(rotulos(i) == 1 && calClass(i) == 2)
      matriz(1,2)++;
    endif
    if(rotulos(i) == 2 && calClass(i) == 1)
      matriz(2,1)++;
    endif
    if(rotulos(i) == 2 && calClass(i) == 2)
      matriz(2,2)++;
    endif
  endfor
  matriz;
endfunction
