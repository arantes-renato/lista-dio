import 'package:flutter/material.dart';

class Contato {
  final String nome;
  final String telefone;
  final ContatoType tipo;

  Contato({required this.nome, required this.telefone, required this.tipo});
}

enum ContatoType { celular, trabalho, favorito, casa }

class ContatoHelper {
  static Icon getIconByContatoType(ContatoType tipo) {
    switch (tipo) {
      case ContatoType.celular:
        return Icon(Icons.phone_android, color: Colors.green[700]);
      case ContatoType.trabalho:
        return Icon(Icons.work, color: Colors.brown[600]);
      case ContatoType.favorito:
        return Icon(Icons.favorite, color: Colors.red[900]);
      case ContatoType.casa:
        return Icon(Icons.home, color: Colors.purple[600]);
    }
  }
}
