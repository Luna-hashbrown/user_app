import 'package:flutter/material.dart';
import 'package:user_app/presentation/widgets/custom.textfield.dart';


class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _CreateProfileScreenState createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController occupationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crear Perfil", style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
          ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CustomTextField(
              controller: nameController,
              labelText: 'Nombre',
            ),
            const SizedBox(height: 20,),
            CustomTextField(
              controller: ageController,
              labelText: 'Edad',
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20,),
            CustomTextField(
              controller: occupationController,
              labelText: 'Ocupación',
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String name = nameController.text.trim();
                String age = ageController.text.trim();
                String occupation = occupationController.text.trim();

                if (name.isNotEmpty && age.isNotEmpty && occupation.isNotEmpty) {
                  Navigator.pushNamed(
                    context,
                    '/profile',
                    arguments: {
                      'name': name,
                      'age': age,
                      'occupation': occupation,
                    },
                  );
                } else {
                  // Mostrar un mensaje si faltan datos
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Por favor completa todos los campos')),
                  );
                }
              },
              child: const Text('Guardar y Ver Perfil'),
            ),
          ],
        ),
      ),
    );
  }
}