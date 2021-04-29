import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Aplicativo Aula',
      home: Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          iconTheme: IconThemeData(),
          backgroundColor: Colors.white,
          title: Text(
            'Aplicativo Aula',
            style: TextStyle(color: Colors.black),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Matheus Hetkowski Stropper'),
                accountEmail: Text('matheus.stropper@rede.ulbra.br'),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.network(
                      'https://i.ibb.co/56XsFgj/IMG-E0696.jpg',
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.computer),
                title: Text('Salas Virtuais'),
                onTap: () => print('Salas Virtuais'),
              ),
              ListTile(
                leading: Icon(Icons.archive),
                title: Text('Anotações de aula'),
                onTap: () => print('Anotações de aula'),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Avisos'),
                onTap: () => print('Avisos'),
              ),
              ListTile(
                leading: Icon(Icons.dashboard),
                title: Text('Desempenho'),
                onTap: () => print('Desempenho'),
              ),
              ListTile(
                leading: Icon(Icons.timer),
                title: Text('Frequência'),
                onTap: () => print('Frequência'),
              ),
              ListTile(
                leading: Icon(Icons.article),
                title: Text('Laboratório de apoio'),
                onTap: () => print('Laboratório de apoio'),
              ),
              ListTile(
                leading: Icon(Icons.inbox),
                title: Text('Mensagens'),
                onTap: () => print('Mensagens'),
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Minhas turmas'),
                onTap: () => print('Minhas turmas'),
              ),
              ListTile(
                leading: Icon(Icons.book),
                title: Text('Minha biblioteca'),
                onTap: () => print('Minha biblioteca'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Configurações'),
                onTap: () => print('Configurações'),
              ),
              ListTile(
                leading: Icon(Icons.close),
                title: Text('Sair'),
                onTap: () => print('Sair'),
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(24),
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 16,
              ),
              SizedBox(
                height: 8,
              ),
              Cabecalho(),
              CabecalhoBaixo(),
              BadgeCard(),
              BadgeCard2(),
            ],
          ),
        ),
      ),
    );
  }
}

class Cabecalho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Salas Virtuais',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0)),
        ],
      ),
    );
  }
}

class CabecalhoBaixo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 16.0),
          child: Text(
            'Período:',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8.0),
          child: Container(
            width: double.infinity,
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              color: Colors.white,
              border: Border.all(color: Colors.grey),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(hint: Text('2021/1')),
            ),
          ),
        ),
      ],
    );
  }
}

class CaixaCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: Column(
        children: [
          CardMateria(),
          CardMateriaBaixo(),
        ],
      ),
    );
  }
}

class CaixaCards2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
      child: Column(
        children: [
          CardMateria2(),
          CardMateriaBaixo(),
        ],
      ),
    );
  }
}

class CardMateria extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.0,
      width: double.infinity,
      child: ListView(children: <Widget>[
        Card(
          margin: EdgeInsets.all(0.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0))),
          color: Colors.blue[700],
          child: Padding(
            padding: EdgeInsets.only(
                top: 32.0, left: 16.0, right: 16.0, bottom: 24.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Desenvolvimento de Sistemas Móveis',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        fontSize: 16),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    'Turma 99N/99N - 6666A - graduação',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w300,
                        fontSize: 12),
                  ),
                ]),
          ),
        ),
      ]),
    );
  }
}

class CardMateria2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.0,
      width: double.infinity,
      child: Card(
          margin: EdgeInsets.all(0.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.0),
                  topRight: Radius.circular(4.0))),
          color: Colors.red[700],
          child: Padding(
            padding: EdgeInsets.only(
                top: 32.0, left: 16.0, right: 16.0, bottom: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Desenvolvimento Hardware e aprendizado',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 16),
                ),
                SizedBox(height: 8.0),
                Text(
                  'Turma 55N/21N - 0439A - Graduação',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 12),
                ),
              ],
            ),
          )),
    );
  }
}

class BadgeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Column(
        children: [
          Stack(children: [
            CaixaCards(),
            SizedBox(
              height: 30,
              width: 80,
              child: Card(
                margin: EdgeInsets.all(0.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0))),
                color: Colors.white,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    '4455454',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}

class BadgeCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
      child: Column(
        children: [
          Stack(children: [
            CaixaCards2(),
            SizedBox(
              height: 30,
              width: 80,
              child: Card(
                margin: EdgeInsets.all(0.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0),
                        bottomRight: Radius.circular(15.0))),
                color: Colors.white,
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    '11223344',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ])
        ],
      ),
    );
  }
}

class CardMateriaBaixo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120.0,
      width: double.infinity,
      child: Card(
        margin: EdgeInsets.all(0.0),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(4.0),
                bottomRight: Radius.circular(4.0))),
        color: Colors.white,
        child: Column(
          children: [CaixaNotificacoes()],
        ),
      ),
    );
  }
}

class CaixaNotificacoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16.0),
            child: SizedBox(
              width: 160.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.star,
                    size: 30,
                    color: Colors.grey,
                  ),
                  Badge(
                    badgeContent: Text(
                      '12',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                    child: Icon(Icons.cloud, size: 30, color: Colors.grey[700]),
                  ),
                  Icon(Icons.info, size: 30, color: Colors.grey),
                ],
              ),
            ),
          ),
          CaixaEntrarSala()
        ],
      ),
    );
  }
}

class CaixaEntrarSala extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 16.0, bottom: 16.0),
            child: SizedBox(
              height: 40.0,
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 16.0, right: 16.0),
                child: RaisedButton(
                  onPressed: () {},
                  color: Colors.green[700],
                  child: Text(
                    'Entrar na Sala',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
