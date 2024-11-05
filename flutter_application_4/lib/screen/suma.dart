import 'package:flutter/material.dart';

class suma extends StatefulWidget {
  const suma({super.key});

  @override
  State<suma> createState() => _sumaState();
}

class _sumaState extends State<suma> {
  //parte lógica
  final TextEditingController _number1 = TextEditingController();
  final TextEditingController _number2 = TextEditingController();
  double _resultado = 0.0;

  void _cacularSuma() {
    //texto ingresado _number 1 a un numero de tipo double si falla le voy a x def 0
    double number1 = double.tryParse(_number1.text) ?? 0.0;
    double number2 = double.tryParse(_number2.text) ?? 0.0;

    setState(() {
      _resultado = number1 + number2;
    });
  }

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
                height: 35,
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
              "Digite los numeros: ",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: const Color.fromRGBO(1, 85, 67, 1),
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
                //agregar controller
                controller: _number1,
                decoration: InputDecoration(
                    labelText: "Primer número",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)))),
            SizedBox(height: 20),
            TextFormField(
                controller: _number2,
                decoration: InputDecoration(
                    labelText: "Segundo número",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)))),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _cacularSuma();
              },
              child: Text(
                "CALCULAR",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(1, 85, 67, 1),
                foregroundColor: Colors.white,
                minimumSize: Size(double.infinity, 50),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Resultado: $_resultado',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
