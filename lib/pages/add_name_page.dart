import 'package:crud_firebase/services/firebase_service.dart';
import 'package:flutter/material.dart';

class AddNamePage extends StatefulWidget {
  const AddNamePage({super.key});

  @override
  State<AddNamePage> createState() => _AddNamePageState();
}

class _AddNamePageState extends State<AddNamePage> {
  TextEditingController nameController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Name'),
        backgroundColor: Colors.blue, // Color de fondo del AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Enter Name',
              ),
            ),
            const SizedBox(height: 20), // Espacio de 20 unidades
            ElevatedButton(
                onPressed: () async {
                  // print(nameController.text);
                  await addPeople(nameController.text).then((_) {
                    // ignore: use_build_context_synchronously
                    Navigator.pop(context);
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // color de fondo
                  foregroundColor: Colors.white, // Texto blanco
                ),
                child: const Text("Guardar"))
          ],
        ),
      ),
    );
  }
}
