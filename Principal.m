clear();
fprintf("\n\t\t Avaliacao II\n");
fprintf("Escolha o valor de K:\n");
k = input("\t1, 3, 5\n");
fprintf("Escolha a porcentagem que quer usar da base de dados:\n");
tamanho = input("\tValor entre 1% e 100% \n");

class1 = 0;
class2 = 0;

base = load('Statlog.m');
rotulo = load('ClasseS.m');

normal = Normaliza(base);
[linha, coluna] = size(normal);

tamanho = (linha * tamanho)/100;
dados = zeros(tamanho, coluna);
label = zeros(tamanho,1);
calcClass = zeros(tamanho, 1);

%% O tamanho passa a valer metade do valor informado para seaparar entre os dois rotulos
tamanho = (tamanho/2) + 1;

i = 1;

while(class1 <= tamanho && class2 <= tamanho)
  if(rotulo(i) == 2 && class2 <= tamanho)
    class2++;
    dados(i,:) = normal(i,:);
    label(i,1) = rotulo(i,1);
  elseif(rotulo(i) == 1 && class1 <= tamanho)
    class1++;
    dados(i,:) = normal(i,:);
    label(i,1) = rotulo(i,1);
  endif
  i++;
endwhile
dados;
label;
calcClass = knn(dados, normal, rotulo, k);
matrizConf = Confusao(label, calcClass);
Continhas(matrizConf);

