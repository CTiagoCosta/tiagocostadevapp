import 'package:flutter/material.dart';

List<String> titles = <String>[
  'Habilitação',
  'Veículo',
  'Educação',
];

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: Colors.green[800], useMaterial3: true),
      home: const AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  get onPressed => null;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);
    const int tabsCount = 3;

    return DefaultTabController(
      initialIndex: 1,
      length: tabsCount,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('DETRAN MS'),
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
          scrolledUnderElevation: 4.0,
          shadowColor: Theme.of(context).shadowColor,
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.account_box_outlined),
                text: 'Habilitação',
              ),
              Tab(
                icon: Icon(Icons.car_crash),
                text: 'Veiculo',
              ),
              Tab(
                icon: Icon(Icons.auto_stories),
                text: 'Educação',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Menu Habilitação do DETRAN - MS',
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      //controller: _placaController,
                      decoration: InputDecoration(
                        labelText: 'Placa',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      // controller: _renavamController,
                      decoration: InputDecoration(
                        labelText: 'RENAVAM',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            // Ação ao pressionar o botão 1
                            print('Botão de Enviar pressionado!');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.grey[200],
                            foregroundColor: Colors.green[800],
                          ),
                          child: const Text('Cancelar'),
                        ),
                        const SizedBox(
                            width: 16), // Espaçamento entre os botões
                        ElevatedButton(
                          onPressed: () {
                            // Ação ao pressionar o botão 2
                            print('Botão de Cancelar pressionado!');
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green[800],
                            foregroundColor: Colors.white,
                          ),
                          child: const Text('Enviar'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            //ListView.builder(
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    print('Botão 1 pressionado!');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue[900],
                    foregroundColor: Colors.white,
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons
                          .person), // Aqui você pode colocar o ícone que preferir
                      SizedBox(width: 8), // Espaço entre o ícone e o texto
                      Text('Entrar com o gov.br'),
                    ],
                  ),
                ),
              ],
            ),
            ListView.builder(
              itemCount: 25,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  tileColor: index.isOdd ? oddItemColor : evenItemColor,
                  title: Text('${titles[2]} $index'),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
