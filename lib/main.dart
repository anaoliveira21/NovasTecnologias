import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(),
    debugShowCheckedModeBanner: false,
    title: 'ListView',
    initialRoute: '/inicio',
    routes: {
      '/inicio': (context) => MenuInicial(),
      '/principal': (context) => MenuPrincipal(),
      '/list1': (context) => Entrar(),
      '/list2': (context) => Cadastro(),
      '/list3': (context) => Sobre(),
      '/list4': (context) => Cardapio(),
      '/segunda': (context) => SegundaTela(),
    },
  ));
}

class Mensagem {
  final String nome;
  final String usuario1;
  final String senha1;
  Mensagem(this.nome, this.usuario1, this.senha1);
}

//
//MENU INICIAL
//
class MenuInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Menu Inicial'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 141, 79, 50)),
      backgroundColor: Color.fromARGB(255, 238, 226, 222),
      body: Container(
          padding: EdgeInsets.all(40),

          //
          //ListView
          //
          child: ListView(children: [
            Icon(Icons.coffee_maker_outlined,
                size: 90, color: Color.fromARGB(255, 141, 79, 50)),
            Text(
                'Nosso dferencial está na qualidade dos produtos oferecidos em nossa cafeteria. Nossos cafés vêm direto de nossas fazendas, onde cuidamos rigorosamente de todo o processo, desde o plantio, passando pela coleita e torra, até a xícara.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Colors.black)),
            SizedBox(height: 40),
            OutlinedButton(
              child: Text('Entrar',
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      color: Colors.black)),
              style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Color.fromARGB(255, 158, 112, 91),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: EdgeInsets.all(20)),
              onPressed: () {
                Navigator.pushNamed(context, '/list1');
              },
            ),
            SizedBox(height: 15),
            OutlinedButton(
              child: Text('Criar Cadastro',
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      color: Colors.black)),
              style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Color.fromARGB(255, 189, 157, 142),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: EdgeInsets.all(20)),
              onPressed: () {
                Navigator.pushNamed(context, '/list2');
              },
            )
          ])),
    );
  }
}

//
//MENU Principal
//
class MenuPrincipal extends StatefulWidget {
  @override
  _MenuPrincipalState createState() => _MenuPrincipalState();
}

class _MenuPrincipalState extends State<MenuPrincipal> {
  var lista = [];
  var rota = [];

  @override
  void initState() {
    super.initState();
    lista.add('Cardapio');
    lista.add('Minha Conta');
    lista.add('Favoritos');
    lista.add('Empresa');
    lista.add('Sobre');
    rota.add('/list4');
    rota.add('/list6');
    rota.add('/list5');
    rota.add('/list7');
    rota.add('/list3');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('*** CAFETERIA ***'),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 141, 79, 50)),
        backgroundColor: Color.fromARGB(255, 238, 226, 222),
        body: Container(
            child: Column(children: [
          Icon(Icons.coffee_maker_outlined,
              size: 120, color: Color.fromARGB(255, 141, 79, 50)),
          Expanded(
              child: Container(
            padding: EdgeInsets.fromLTRB(40, 40, 20, 0),
            height: 200,
            child: ListView.builder(
              //Aparencia o item da lista
              itemBuilder: (context, index) {
                return Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.all(10),
                  width: 200,
                  height: 200,
                  color: Color.fromARGB(255, 158, 112, 91),
                  child: ListTile(
                      title: Text(lista[index],
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              color: Colors.black)),
                      onTap: () {
                        Navigator.pushNamed(context, rota[index]);
                      }),
                );
              },

              //Quantidade de itens
              itemCount: 5,
            ),
          ))
        ])));
  }
}

//
//Entrar
//
class Entrar extends StatefulWidget {
  @override
  _EntrarState createState() => _EntrarState();
}

class _EntrarState extends State<Entrar> {
  var txtusuario = TextEditingController();
  var txtsenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Usuário'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 141, 79, 50)),
      backgroundColor: Color.fromARGB(255, 238, 226, 222),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(40),
        child: Column(children: [
          Icon(Icons.person,
              size: 120, color: Color.fromARGB(255, 141, 79, 50)),
          SizedBox(height: 40),
          TextField(
            controller: txtusuario,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 141, 79, 50))),
              labelText: 'Email',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: txtsenha,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 141, 79, 50))),
              labelText: 'Senha',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: double.infinity,
            child: OutlinedButton(
              child: Text('Entrar',
                  style: TextStyle(
                      fontSize: 18,
                      fontStyle: FontStyle.normal,
                      color: Colors.black)),
              style: OutlinedButton.styleFrom(
                  primary: Colors.black,
                  backgroundColor: Color.fromARGB(255, 158, 112, 91),
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  padding: EdgeInsets.all(20)),
              onPressed: () {
                Navigator.pushNamed(context, '/principal');
              },
            ),
          )
        ]),
      ),
    );
  }
}

//
//Vagas
//
class Cardapio extends StatefulWidget {
  @override
  _VagasState createState() => _VagasState();
}

class _VagasState extends State<Cardapio> {
  var cardapio = [];

  @override
  void initState() {
    super.initState();
    cardapio.add('Café tradicional - 70ml\n\n'
        'Café preparado com o metodo tradicional: fltro de papel.\n\n'
        'RS: 4,99');
    cardapio.add('Café tradicional - 70ml\n\n'
        'Café preparado com o metodo tradicional: fltro de papel.\n\n'
        'RS: 4,99');
    cardapio.add('Café tradicional - 70ml\n\n'
        'Café preparado com o metodo tradicional: fltro de papel.\n\n'
        'RS: 4,99');
    cardapio.add('Café tradicional - 70ml\n\n'
        'Café preparado com o metodo tradicional: fltro de papel.\n\n'
        'RS: 4,99');
    cardapio.add('Café tradicional - 70ml\n\n'
        'Café preparado com o metodo tradicional: fltro de papel.\n\n'
        'RS: 4,99');
    cardapio.add('Café tradicional - 70ml\n\n'
        'Café preparado com o metodo tradicional: fltro de papel.\n\n'
        'RS: 4,99');
    cardapio.add('Café tradicional - 70ml\n\n'
        'Café preparado com o metodo tradicional: fltro de papel.\n\n'
        'RS: 4,99');
    cardapio.add('Café tradicional - 70ml\n\n'
        'Café preparado com o metodo tradicional: fltro de papel.\n\n'
        'RS: 4,99');
    cardapio.add('Café tradicional - 70ml\n\n'
        'Café preparado com o metodo tradicional: fltro de papel.\n\n'
        'RS: 4,99');
    cardapio.add('Café tradicional - 70ml\n\n'
        'Café preparado com o metodo tradicional: fltro de papel.\n\n'
        'RS: 4,99');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Cardapio'),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 141, 79, 50)),
        backgroundColor: Color.fromARGB(255, 238, 226, 222),
        body: Column(
          children: [
            //
            //Vertical
            //
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        width: 150,
                        height: 150,
                        color: Color.fromARGB(255, 189, 157, 142),
                        child: Row(
                          children: [
                            Image.network(
                                'https://static1.conquistesuavida.com.br/ingredients/3/54/52/03/@/24702--ingredient_detail_ingredient-2.png',
                                width: 100,
                                height: 100),
                            Expanded(
                              child: Container(
                                  padding: EdgeInsets.all(10),
                                  child: Text(cardapio[index],
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontStyle: FontStyle.normal,
                                          color: Colors.black))),
                            )
                          ],
                        ));
                  },

                  //Quantidade de itens
                  itemCount: 10,
                ),
              ),
            )
          ],
        ));
  }
}

//
//Cadastro
//
class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  var txtnome = TextEditingController();
  var txtusuario1 = TextEditingController();
  var txtsenha1 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Cadastrar Usuario'),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 141, 79, 50)),
      backgroundColor: Color.fromARGB(255, 238, 226, 222),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(40),
        child: Column(crossAxisAlignment: CrossAxisAlignment.end, children: [
          Text('Informe seus dados para cadastrar um novo usuario',
              textAlign: TextAlign.justify,
              style: TextStyle(
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                  color: Colors.black)),

          SizedBox(height: 40),
          TextField(
            controller: txtnome,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 141, 79, 50))),
              labelText: 'Informe seu nome',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: txtusuario1,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 141, 79, 50))),
              labelText: 'Digite seu email',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),
          TextField(
            controller: txtsenha1,
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromARGB(255, 141, 79, 50))),
              labelText: 'Cadastre uma senha',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10),

          //
          //Troca de dados entre as telas
          //

          OutlinedButton(
            child: Text('Cadastrar',
                style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.normal,
                    color: Colors.black)),
            style: OutlinedButton.styleFrom(
                primary: Colors.black,
                backgroundColor: Color.fromARGB(255, 158, 112, 91),
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                padding: EdgeInsets.all(20)),
            onPressed: () {
              var msg =
                  Mensagem(txtnome.text, txtusuario1.text, txtsenha1.text);
              Navigator.pushNamed(context, '/segunda', arguments: msg);
            },
          ),
        ]),
      ),
    );
  }
}

class SegundaTela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Receber o objeto da classe Mensagem
    Mensagem msg = ModalRoute.of(context).settings.arguments;
    if (msg == null) {
      msg = Mensagem('', '', '');
    }

    return Scaffold(
      appBar: AppBar(
          title: Text('Confirmação'),
          //Remover o icone de voltar
          automaticallyImplyLeading: false,
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 141, 79, 50)),
      backgroundColor: Color.fromARGB(255, 238, 226, 222),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(40),
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              OutlinedButton(
                child: Text('Editar',
                    style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        color: Colors.black)),
                style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    backgroundColor: Color.fromARGB(255, 158, 112, 91),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    padding: EdgeInsets.all(20)),
                onPressed: () {
                  //Voltar para PrimeiraTela()
                  Navigator.pop(context);
                },
              ),
              OutlinedButton(
                child: Text('Proximo',
                    style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        color: Colors.black)),
                style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    backgroundColor: Color.fromARGB(255, 158, 112, 91),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    padding: EdgeInsets.all(20)),
                onPressed: () {
                  Navigator.pushNamed(context, '/list1');
                },
              ),
            ],
          ),
          SizedBox(height: 40),
          Text('Nome',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
          Text(msg.nome, style: TextStyle(fontSize: 24)),
          SizedBox(height: 20),
          Text('Email',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
          Text(msg.usuario1, style: TextStyle(fontSize: 24)),
          SizedBox(height: 20),
          Text('Senha',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
          Text(msg.senha1, style: TextStyle(fontSize: 24)),
        ]),
      ),
    );
  }
}

//
//Sobre
//
class Sobre extends StatefulWidget {
  @override
  _SobreState createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Sobre'),
            centerTitle: true,
            backgroundColor: Color.fromARGB(255, 141, 79, 50)),
        backgroundColor: Color.fromARGB(255, 238, 226, 222),
        body: Column(
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return Container(
                        margin: EdgeInsets.all(10),
                        padding: EdgeInsets.all(10),
                        width: 200,
                        height: 200,
                        color: Color.fromARGB(255, 189, 157, 142),
                        child: Row(
                          children: [
                            Image.network('lib/imagens/foto_sobre.jpeg'),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                    'Ana Carolina Alves Batista de Oliveira - 828479.\n\n'
                                    'Esse projeto tem com objetivo desenvolver um aplicativo para uma cafeteria'),
                              ),
                            )
                          ],
                        ));
                  },

                  //Quantidade de itens
                  itemCount: 1,
                ),
              ),
            )
          ],
        ));
  }
}
