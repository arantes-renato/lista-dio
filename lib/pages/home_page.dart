import 'package:flutter/material.dart';
import '../services/contato.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Contato> contatos = [];

  @override
  void initState() {
    super.initState();
    contatos.add(Contato(
        nome: "Carol <3", telefone: "99802-1746", tipo: ContatoType.favorito));
    contatos.add(Contato(
        nome: "Luana", telefone: "97539-7539", tipo: ContatoType.celular));
    contatos.add(Contato(
        nome: "Meu", telefone: "96946-5552", tipo: ContatoType.celular));
    contatos.add(
        Contato(nome: "Casa", telefone: "2281-8129", tipo: ContatoType.casa));
    contatos.add(Contato(
        nome: "Carol <3", telefone: "99802-1746", tipo: ContatoType.favorito));
    contatos.add(Contato(
        nome: "Luana", telefone: "97539-7539", tipo: ContatoType.celular));
    contatos.add(Contato(
        nome: "Meu", telefone: "96946-5552", tipo: ContatoType.celular));
    contatos.add(
        Contato(nome: "Casa", telefone: "2281-8129", tipo: ContatoType.casa));
    contatos.add(Contato(
        nome: "Carol <3", telefone: "99802-1746", tipo: ContatoType.favorito));
    contatos.add(Contato(
        nome: "Luana", telefone: "97539-7539", tipo: ContatoType.celular));
    contatos.add(Contato(
        nome: "Meu", telefone: "96946-5552", tipo: ContatoType.celular));
    contatos.add(
        Contato(nome: "Casa", telefone: "2281-8129", tipo: ContatoType.casa));

    contatos.sort((a, b) => a.nome.compareTo(b.nome));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.separated(
            itemBuilder: (context, index) {
              var contato = contatos[index];
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue[200],
                  child: ContatoHelper.getIconByContatoType(contato.tipo),
                ),
                title: Text(contato.nome),
                subtitle: Text(contato.telefone),
                trailing: IconButton(
                  icon: const Icon(Icons.call),
                  onPressed: () => {},
                ),
              );
            },
            separatorBuilder: (context, index) => const Divider(),
            itemCount: contatos.length));
  }
}
