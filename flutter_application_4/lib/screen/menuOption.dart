import 'package:flutter/material.dart';
import 'package:flutter_application_4/screen/suma.dart';

class menuOption extends StatefulWidget {
  const menuOption({super.key});

  @override
  State<menuOption> createState() => _menuOptionState();
}

class _menuOptionState extends State<menuOption> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[400],
          foregroundColor: Colors.white,
          title: Text("Menu Opcion"),
        ),
        body: ListView(
          children: [
            SizedBox(height: 16),
            Image.network(
              "https://help.apple.com/assets/65D6896CA6CCCD9ECD051E60/65D6896D44E24248E80D32D1/es_419/5250122ee560cee90b3d7cfa2d91695e.png",
              height: 280,
              width: 280,
            ),
            SizedBox(height: 10),
            Card(
                child: ListTile(
              title: Text("Suma"),
              leading: Icon(Icons.add),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => suma()));
              },
            )),
            Card(
                child: ListTile(
              title: Text("Calculadora"),
              leading: Icon(Icons.account_tree_outlined),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {},
            )),
            Card(
                child: ListTile(
              title: Text("Registro"),
              leading: Icon(Icons.account_circle_sharp),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {},
            )),
            Card(
                child: ListTile(
              title: Text("Login"),
              leading: Icon(Icons.add_card_outlined),
              trailing: Icon(Icons.arrow_circle_right_outlined),
              onTap: () {},
            ))
          ],
        ));
  }
}
