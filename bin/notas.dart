import 'dart:io';

void main() {
  List<String> notas = <String>[];
   
  menu(notas);
}

String getComandos(){
  print('Digite um comando (1 - Adicionar nota, 2 - Listar Notas, 3 - Sair)');
  List<String> comandos = <String>['1','2','3'];
  String? entrada = '';
  entrada = stdin.readLineSync();

  if (entrada == null || !comandos.contains(entrada)) {
    print('Comando Inválid');
    getComandos();
  }
    
  return entrada!;
  
}

List<String> adicionarNotas(List<String> nota){
  print('Escreva uma nota');
  String? notes = '';
  notes = stdin.readLineSync();

  if (notes == null || notes.isEmpty) {
    print('Não é possivel adicionar uma nota vazia');
    adicionarNotas(nota);
  }
  nota.add(notes!);

  return nota;
}

void listarNotas(List<String> nota){
  for (var i = 0; i < nota.length; i++) {
    print(nota[i]);
  }
}

void menu(List<String> nota){
  print('');
  cabecalho();
  print('');
  String comando = getComandos();
  print('');
  switch(comando){
    case '1':
    adicionarNotas(nota);
    menu(nota);
    case '2':
    listarNotas(nota);
    menu(nota);
    case '3':
    print('Fechando o Programa');
    print('Até mais');
  }
}

void cabecalho(){
  
  // Cabeça
  print("  (\_/)");
  print("=(°w°)=\)");
  print("   )   (  ");
  print("  (__ __)");

  // Corpo
  print("  /------\\");
  print(" * / |    ||");
  print("    ~~   ~~");

}

