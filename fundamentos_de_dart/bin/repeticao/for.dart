// Importa a biblioteca de entrada/saída, permitindo usar stdin (ler do teclado) e stdout (escrever no terminal).
import 'dart:io'; 

// Função principal: é o ponto de entrada do programa (onde ele começa a executar).
void main() { 
  // Envia códigos ANSI: limpa a tela do terminal e posiciona o cursor no topo.
  stdout.write('\x1B[2J\x1B[H'); 

  // Imprime um título/identificação do exemplo e quebra a linha.
  stdout.writeln('=== EXEMPLO FOR: tabuada de 1 a 10 ==='); 

  // Mostra um prompt para o usuário digitar um número, sem pular linha.
  stdout.write('Digite um número para ver a tabuada: '); 
  
  // Lê a entrada como String, garante que não é nula (!) e converte para inteiro (int).
  int x = int.parse(stdin.readLineSync()!); 
  
  // Loop for: começa i=1; repete enquanto i<=10; a cada volta incrementa i (i++).
  for (int i = 1; i <= 10; i++) { 
    // Mostra uma linha da tabuada: x vezes i e o resultado (x*i) usando interpolação de strings.
    stdout.writeln('$x x $i = ${x * i}'); 
  }

  // Imprime uma linha em branco (equivalente a “pular uma linha”) para deixar o output mais separado/organizado.
   stdout.writeln(''); 
} 
