import 'package:flutter/material.dart';
import 'package:flutter_application_2/screen/inicio.dart';
import 'package:flutter_application_2/screen/pedidos.dart';

 class menuDrawer extends StatefulWidget {
   const menuDrawer({super.key});
 
   @override
   State<menuDrawer> createState() => _menuDrawerState();
 }
 
 class _menuDrawerState extends State<menuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi Aplicación'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 0, 110, 68),
              ),
              child: Text(
                'Menú',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            Divider(),
            ListTile(
              title: Text('Inicio'),
              subtitle:Text("Nuestros productos"),
              trailing: Icon(Icons.arrow_circle_right),
              leading:Icon(Icons.shopping_cart),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Inicio()));
              },
              ),
              Divider(),
              ListTile(
                title: Text('Mis Pedidos'),
                subtitle: Text("Revisa"),
                trailing: Icon(Icons.arrow_circle_right),
                leading: Icon(Icons.account_circle),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> Pedidoss()));
                },
            ),
          ],
        ),
      ),
);
}
}
