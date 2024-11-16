import 'package:flutter/material.dart';
import 'package:user_app/presentation/widgets/custom_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> userProfile =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Perfil'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Nombre: ${userProfile['name']}', style: const TextStyle(fontSize: 18)),
            Text('Edad: ${userProfile['age']}', style: const TextStyle(fontSize: 18)),
            Text('Ocupación: ${userProfile['occupation']}', style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Regresar a Inicio',
              onPressed: () {
                Navigator.popUntil(context, ModalRoute.withName('/'));
              },
            ),
          ],
        ),
      ),
    );
  }
}