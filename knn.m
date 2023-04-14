function [label] = knn (dados, base, rotulos, k)

  [obj, atributos] = size(base);
  [jeto, atb] = size(dados);

  distancia = zeros(1, obj);

  figure(1); plot(dados(:,:), dados(:,:), 'k<>'); hold on;

  for i = 1:jeto
    for j = 1:obj
      distancia(1,j) = DIST_EUCLIDIANA(dados(i,:),base(j,:));
    endfor
    [l, indice] = sort(distancia);
    if k == 1
      ids = indice(1);
    else
      ids = mode(indice(1:k));
    endif
    label(i,1) = rotulos(ids,1);
  endfor

endfunction
