import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class registerUser extends StatefulWidget {
  const registerUser({super.key});

  @override
  State<registerUser> createState() => _registerUserState();
}

class _registerUserState extends State<registerUser> {
  //lógica de programación
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _correo = TextEditingController();
  final TextEditingController _contrasena = TextEditingController();

  //método para guardar los datos en shared prefenrence
  Future<void> _guardarUsuario(String correo, String contrasena) async {
    final varPreference = await SharedPreferences
        .getInstance(); //obtener una instancia de shared preference para almacenar datos.
    await varPreference.setString('userCorreo', correo);
    await varPreference.setString('userContrasena', contrasena);
    //Mostrar mensaje de validación
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Datos guardados")));
  }

  //funcino me va permitir registrar el usuario
  void _registerUser() {
    if (_formKey.currentState!.validate()) {
      // todo del formulario sea validos
      _guardarUsuario(_correo.text,
          _contrasena.text); //viene los controller _correo y _contraseña
      print("Usuario guardado en SharedPreference");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(1, 85, 67, 1),
        foregroundColor: Colors.white,
        title: Text("Registro de usuario"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
              child: Column(
            children: [
              Image.network(
                "https://cdn-icons-png.flaticon.com/512/64/64572.png",
                height: 200,
                width: 200,
              ),
              SizedBox(height: 20),
              TextFormField(
                controller: _correo,
                decoration: InputDecoration(
                  labelText: "Correo",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Email no válido...';
                  }
                  return null; // si no hay error en el ingreso del correo
                },
              ),
              SizedBox(height: 12),
              TextFormField(
                controller: _contrasena,
                decoration: InputDecoration(
                  labelText: "Contraseña",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 12),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Confirme su contraseña",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  _registerUser();
                },
                child: Text(
                  "REGISTRARSE",
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(1, 85, 67, 1),
                    foregroundColor: Colors.white),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
