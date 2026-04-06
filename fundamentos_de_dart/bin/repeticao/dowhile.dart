// Importa a biblioteca de entrada/saída, permitindo usar stdin (ler do teclado) e stdout (escrever no terminal).
import 'dart:io';

// Função principal: é o ponto de entrada do programa (onde ele começa a executar).
void main() {
  // Envia códigos ANSI: limpa a tela do terminal e posiciona o cursor no topo.
  stdout.write('\x1B[2J\x1B[H');

  // Imprime o título/descrição do exemplo e quebra a linha.
  stdout.writeln('=== EXEMPLO DO..WHILE): pedir senha até acertar ===');

  // Declara a senha correta que o usuário precisa digitar para liberar o acesso.
  String senhaCorreta = 'dart123';

  // Declara a variável que vai armazenar a senha digitada pelo usuário.
  // Ela será preenchida dentro do bloco do..while.
  String senha;

  // Inicia o laço do..while:
  // O bloco "do" sempre executa pelo menos uma vez, antes de verificar a condição no "while".
  do {
    // Mostra o prompt pedindo a senha (sem pular linha).
    stdout.write('Digite a senha: ');

    // Lê a senha digitada no teclado (String).
    // O "!" assume que a leitura não será nula.
    senha = stdin.readLineSync()!;
  } while (senha != senhaCorreta); // Repete enquanto a senha digitada for diferente da senha correta.

  // Se saiu do laço, é porque a senha digitada é igual à senha correta.
  stdout.writeln('Acesso liberado!');

  // Imprime uma linha em branco para deixar a saída mais organizada.
  stdout.writeln('');
}