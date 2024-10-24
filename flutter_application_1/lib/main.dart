import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(Barra());
}

class Barra extends StatefulWidget {
  const Barra({super.key});

  @override
  State<Barra> createState() => _BarraState();
}

class _BarraState extends State<Barra> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold( 
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 0, 126, 78),
        child: Column(
        children:[
          Image(image: NetworkImage("https://cdn.costumewall.com/wp-content/uploads/2017/03/master-chief.jpg")),
          ListTile(
            textColor: Colors.white,
            iconColor: Colors.white,
            title: Text("Inicio"),
            subtitle: Text("Descubre nuestros productos"),
            trailing: Icon(Icons.arrow_circle_right),
            leading: Icon(Icons.home),
            onTap: (){},

          ),
          Divider(
            color:Color.fromARGB(255, 0, 121, 84)
          ),
          ListTile(
            textColor: Colors.white,
            iconColor: Colors.white,
            title: Text("Mis pedidos"),
            subtitle: Text("Revisa el estado"),
            trailing: Icon(Icons.arrow_circle_right),
            leading: Icon(Icons.store),
            onTap: (){
              
            },

          ),
          Divider(
            color:Color.fromARGB(255, 0, 121, 84)
          ),

          ListTile(
            textColor: Colors.white,
            iconColor: Colors.white,
            title: Text("Carrito de compras"),
            subtitle: Text("Tus artículos seleccionados"),
            trailing: Icon(Icons.arrow_circle_right),
            leading: Icon(Icons.add_shopping_cart),
            onTap: (){},

          ),
          Divider(
            color:Color.fromARGB(255, 0, 121, 84)
          ),

          ListTile(
            textColor: Colors.white,
            iconColor: Colors.white,
            title: Text("Cuenta"),
            subtitle: Text("Gestionar cuenta"),
            trailing: Icon(Icons.arrow_circle_right),
            leading: Icon(Icons.account_circle),
            onTap: (){},
          ),

      ]),
      ),
      appBar: AppBar(
        title: Text("Prueba Drawer"),
        backgroundColor: Color.fromARGB(255, 0, 110, 74),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            Text("Centro de teleinformática y producción industrial"),
            Text("Centro de teleinformática y producción industrial"),
            Text("Centro de teleinformática y producción industrial"),
            Text("Centro de teleinformática y producción industrial"),
            CircleAvatar(
              radius: 100,
              backgroundImage: NetworkImage(
                "https://cdn.costumewall.com/wp-content/uploads/2017/03/master-chief.jpg"
              ),
            ),
            SizedBox(height: 8),
            Text("Bienvenido", style: TextStyle(fontSize: 16),)
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(onPressed: () {

      }, child: Icon(Icons.add_box_outlined),),
      )
    );
  }
}