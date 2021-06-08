import 'package:flutter/material.dart';
import 'package:hello_world/app_controller.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Meu App Flutter',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        actions: [
          CustomSwitch(),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image.asset('assets/imagens/foto.jpg'),
              ),
              accountName: Text('Matheus'),
              accountEmail: Text('matheus8476@outlok.com'),
            ),
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text("Início"),
              subtitle: Text('Tela de inicio'),
            )
          ],
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Text('Contador $counter'),
            Container(height: 20),
            CustomSwitch(),
            Container(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 50,
                  height: 5000,
                  color: Colors.red,
                ),
                Container(
                  width: 50,
                  height: 5000,
                  color: Colors.red,
                ),
                Container(
                  width: 50,
                  height: 5000,
                  color: Colors.red,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
        child: Icon(Icons.add_task_outlined),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
      ),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: AppController.instance.isTheme,
      onChanged: (value) {
        AppController.instance.changeTheme();
      },
    );
  }
}





// Center(
//         child: GestureDetector(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceAround,
//             children: [
//               Text(
//                 'Counter:',
//                 style: TextStyle(
//                   color: Colors.black54,
//                   fontSize: 50,
//                 ),
//               ),
//               Text(
//                 '$counter',
//                 style: TextStyle(
//                   color: Colors.grey,
//                   fontSize: 50,
//                 ),
//               ),
//             ],
//           ),
//           onTap: () {
//             print('clicado $counter');

//             setState(() {
//               counter++;
//             });
//           },
//         ),
//       ),



// Container(
//         height: 200,
//         width: 200,
//         color: Colors.red,
//         child: Align(
//           // Align é um single render
//           // Ele prove um novo render e não sobescreve o anterior
//           alignment: Alignment.bottomCenter,
//           child: Container(
//             height: 100,
//             width: 100,
//             color: Colors.green,
//           ),
//         ),
//       )