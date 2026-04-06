// Importa a biblioteca de entrada/saída, permitindo usar stdin (ler do teclado) e stdout (escrever no terminal).
import 'dart:io';

// Função principal: é o ponto de entrada do programa (onde ele começa a executar).
void main() {
  // Envia códigos ANSI: limpa a tela do terminal e posiciona o cursor no topo.
  stdout.write('\x1B[2J\x1B[H');

  // Imprime um título/identificação do exemplo e quebra a linha.
  stdout.writeln('=== EXEMPLO WHILE: Somar números até digitar 0 ===');

  // Declara e inicializa a variável acumuladora, que guardará a soma dos números digitados.
  int soma = 0;

  // Mostra um prompt para o usuário digitar um número, sem pular linha.
  stdout.write('Digite um número (0 para parar): ');

  // Lê a entrada como String, garante que não é nula (!) e converte para inteiro (int).
  int n = int.parse(stdin.readLineSync()!);

  // Enquanto o número digitado for diferente de 0, o loop continua (0 é o “valor sentinela” para parar).
  while (n != 0) {
    // Soma o valor digitado (n) ao total acumulado (equivalente a: soma = soma + n).
    soma += n;

    // Pede outro número ao usuário.
    stdout.write('Digite um número (0 para parar): ');

    // Lê o próximo valor e atualiza a variável n para a próxima verificação do while.
    n = int.parse(stdin.readLineSync()!);
  }

  // Exibe a soma final e imprime uma linha em branco no final para organizar a saída.
  stdout.writeln('Soma total = $soma');
  stdout.writeln('');
}