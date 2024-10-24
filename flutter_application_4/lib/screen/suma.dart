import 'package:flutter/material.dart';

class suma extends StatefulWidget {
  const suma({super.key});

  @override
  State<suma> createState() => _sumaState();
}

class _sumaState extends State<suma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Transform.translate(
          offset: Offset(0, 5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                "https://help.apple.com/assets/65D6896CA6CCCD9ECD051E60/65D6896D44E24248E80D32D1/es_419/5250122ee560cee90b3d7cfa2d91695e.png",
                height: 20,
              ),
              SizedBox(width: 10),
              Text("Sumar")
            ],
          ),
        ),
      ),
      body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Text(
                "Digie los numeros: ",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.red[400]),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Primer numero", border:  OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30)
                  ))
                ),
            ],
          )),
          
    );
  }
}
