import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagen de fondo superior izquierda
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/1.png', // Imagen superior izquierda
              width: MediaQuery.of(context).size.width,
            ),
          ),
          // Imagen de fondo inferior derecha redimensionada
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/2.png', // Imagen inferior
              fit: BoxFit.cover,
              height: 700, // Ajuste de tamaño de la imagen inferior
            ),
          ),
          // Mover solo el texto "Libro Mayor"
          Positioned(
            top: 350, // Ajusta esta propiedad para mover el texto hacia abajo
            left: MediaQuery.of(context).size.width / 2 - 80, // Centrar el texto
            child: Text(
              'Libro Mayor',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xff26c6da), // Color del texto
              ),
            ),
          ),
          // Contenido principal
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 280),
                Image.asset(
                  'assets/accounting.png', // Imagen principal
                  height: 150,
                ),
                SizedBox(height: 20),
                ElevatedButton(
  onPressed: () {
    // Acción para iniciar sesión
  },
  child: Text(
    'Iniciar sesión',
    style: TextStyle(
      fontSize: 18,
      color: Color(0xffe0f7fa), // Color del texto corregido
    ),
  ),
  style: ElevatedButton.styleFrom(
    backgroundColor: Color(0xff26c6da), // Color del fondo del botón
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15), // Tamaño interno del botón
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8), // Bordes redondeados del botón
    ),
  ),
),
                SizedBox(height: 10),
                ElevatedButton(
  onPressed: () {
    // Acción para registrarse
  },
  child: Text(
    'Registrarse',
    style: TextStyle(
      fontSize: 18, 
      color: Color(0xff26c6da), // Color del texto
    ),
  ),
  style: ElevatedButton.styleFrom(
    backgroundColor: Color(0xffe0f7fa), // Color del fondo del botón
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15), // Tamaño interno del botón
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8), // Bordes redondeados del botón
    ),
  ),
),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    // Acción para salir
                  },
                  child: Text(
                    'Salir',
                    style: TextStyle(color: Color(0xff26c6da)), // Color del texto del botón
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
