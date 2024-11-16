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
        title: const Text(
          "Perfil",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: [
            Icon(
              Icons.account_circle, 
              size: 150, 
              color: Colors.blueGrey, 
            ),
            const SizedBox(height: 20), 
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), 
              child: Text(
                'Nombre: ${userProfile['name']}',
                style: const TextStyle(
                  fontSize: 21,
                  letterSpacing: 1.2,
                  color: Colors.blue,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Edad: ${userProfile['age']}',
                style: const TextStyle(
                  fontSize: 21,
                  letterSpacing: 1.2,
                  color: Colors.blueGrey,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Ocupación: ${userProfile['occupation']}',
                style: const TextStyle(
                  fontSize: 21,
                  letterSpacing: 1.2,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 50),
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