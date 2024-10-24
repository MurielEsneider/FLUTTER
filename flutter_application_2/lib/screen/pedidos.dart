import 'package:flutter/material.dart';

class Pedidoss extends StatefulWidget {
  const Pedidoss({super.key});

  @override
  State<Pedidoss> createState() => _PedidossState();
}

class _PedidossState extends State<Pedidoss> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text("Lista de pedidos"),
      ),
      body: ListView.builder(
        itemCount: listaDePedidos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(listaDePedidos[index]['nombreCliente']),
            subtitle: Text(listaDePedidos[index]['descripcion']),
            leading: Text(listaDePedidos[index]['fechaEntrega']),
            trailing: Icon(Icons.arrow_circle_right),
          );
        },
      ),
    );
  }
}

///////////////////////////////
List<Map<String, dynamic>> listaDePedidos = [
  {
    'numeroPedido': 1,
    'nombreCliente': 'Juan Pérez',
    'descripcion': 'Producto A',
    'cantidad': 3,
    'fechaEntrega': '2024-10-25',
  },
  {
    'numeroPedido': 2,
    'nombreCliente': 'Ana Gómez',
    'descripcion': 'Producto B',
    'cantidad': 2,
    'fechaEntrega': '2024-10-26',
  },
  {
    'numeroPedido': 3,
    'nombreCliente': 'Carlos Ruiz',
    'descripcion': 'Producto C',
    'cantidad': 1,
    'fechaEntrega': '2024-10-27',
  },
  {
    'numeroPedido': 4,
    'nombreCliente': 'María López',
    'descripcion': 'Producto D',
    'cantidad': 5,
    'fechaEntrega': '2024-10-28',
  },
  {
    'numeroPedido': 5,
    'nombreCliente': 'Pedro Martínez',
    'descripcion': 'Producto E',
    'cantidad': 4,
    'fechaEntrega': '2024-10-29',
  },
  {
    'numeroPedido': 6,
    'nombreCliente': 'Lucía Fernández',
    'descripcion': 'Producto F',
    'cantidad': 2,
    'fechaEntrega': '2024-10-30',
  },
  {
    'numeroPedido': 7,
    'nombreCliente': 'Javier Torres',
    'descripcion': 'Producto G',
    'cantidad': 3,
    'fechaEntrega': '2024-10-31',
  },
  {
    'numeroPedido': 8,
    'nombreCliente': 'Sofía Castillo',
    'descripcion': 'Producto H',
    'cantidad': 1,
    'fechaEntrega': '2024-11-01',
  },
  {
    'numeroPedido': 9,
    'nombreCliente': 'Diego Sánchez',
    'descripcion': 'Producto I',
    'cantidad': 2,
    'fechaEntrega': '2024-11-02',
  },
  {
    'numeroPedido': 10,
    'nombreCliente': 'Clara Morales',
    'descripcion': 'Producto J',
    'cantidad': 6,
    'fechaEntrega': '2024-11-03',
  },
];
