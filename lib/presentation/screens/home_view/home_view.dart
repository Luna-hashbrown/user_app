import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Página de Inicio", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
          ),
          centerTitle: true,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/createProfile'); // Navegará a la siguiente pantalla (que crearás después).
          },
          child: const Text('Crear perfil'),
        ),
      ),
    );
  }
}