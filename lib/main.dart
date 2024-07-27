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
      theme: ThemeData(
          colorSchemeSeed: Color.fromARGB(255, 4, 97, 4), useMaterial3: true),
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
          // This check specifies which nested Scrollable's scroll notification
          // should be listened to.
          //
          // When `ThemeData.useMaterial3` is true and scroll view has
          // scrolled underneath the app bar, this updates the app bar
          // background color and elevation.
          //
          // This sets `notification.depth == 1` to listen to the scroll
          // notification from the nested `ListView.builder`.
          notificationPredicate: (ScrollNotification notification) {
            return notification.depth == 1;
          },
          // The elevation value of the app bar when scroll view has
          // scrolled underneath the app bar.
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
            const Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Menu Habilitação do DETRAN - MS',
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        //controller: _placaController,
                        decoration: InputDecoration(
                          labelText: 'Placa',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: TextField(
                        // controller: _renavamController,
                        decoration: InputDecoration(
                          labelText: 'RENAVAM',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                  ]),
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
            //itemCount: 25,
            //itemBuilder: (BuildContext context, int index) {
            // return ListTile(
            //     tileColor: index.isOdd ? oddItemColor : evenItemColor,
            //     title: Text('${titles[1]} $index'),
            //     );
            //},
            // ),
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


// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//         useMaterial3: true,
//       ),
//       home: Container(
//         color: Colors.white,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Stack(
//               alignment: AlignmentDirectional.center,
//               children: [
//                 Container(
//                   color: Colors.blue,
//                   width: 100,
//                   height: 100,
//                 ),
//                 Container(
//                   color: Colors.white,
//                   width: 50,
//                   height: 50,
//                 ),
//               ],
//             ),
//             Stack(
//               alignment: AlignmentDirectional.center,
//               children: [
//                 Container(
//                   color: Colors.white,
//                   width: 100,
//                   height: 100,
//                 ),
//                 Container(
//                   color: Colors.blue,
//                   width: 50,
//                   height: 50,
//                 ),
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Container(
//                   color: Colors.cyan,
//                   width: 50,
//                   height: 50,
//                 ),
//                 Container(
//                   color: Colors.pinkAccent,
//                   width: 50,
//                   height: 50,
//                 ),
//                 Container(
//                   color: Colors.purple,
//                   width: 50,
//                   height: 50,
//                 ),
//               ],
//             ),
//             Container(
//               color: Colors.amber.shade700,
//               width: 300,
//               height: 30,
//               child: const Text(
//                 'Diamante amarelo',
//                 style: TextStyle(
//                   color: Colors.black,
//                   fontSize: 28,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 print('Você apertou o botão');
//               },
//               child: Text('Entrar'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


 // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Container(
      //       color: Colors.white,
      //       width: 100,
      //       height: 100,
      //     ),
      //     Container(
      //       color: Colors.blue,
      //       width: 100,
      //       height: 100,
      //     ),
      //   ],
      // ),
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Container(
      //       color: Colors.white,
      //       width: 100,
      //       height: 100,
      //     ),
      //     Container(
      //       color: Colors.blue,
      //       width: 100,
      //       height: 100,
      //     ),
      //   ],
      // ),
      // Stack(
      //   alignment: AlignmentDirectional.topCenter,
      //   children: [
      //     Container(
      //       color: Colors.white,
      //     ),
      //     Container(
      //       color: Colors.blue,
      //       width: 500,
      //       height: 80,
      //     ),
      //   ],
      // ),