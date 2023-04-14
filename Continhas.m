function [] = Continhas(matriz)
  TPR = matriz(1,1)/(matriz(1,1) + matriz(1,2));
  TPR;
  FPR = matriz(2,1)/(matriz(2,1) + matriz(2,2));
  FPR;
  ACC = (matriz(1,1) + matriz(2,2))/(matriz(1,1) + matriz(1,2) + matriz(2,1) + matriz(2,2));
  ACC;
  v = [FPR, TPR];
  figure(1); plot(v(:,1), v(:,2), 'or'); hold on;
  axis([0,1,0,1]);
endfunction
