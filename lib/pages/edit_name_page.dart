import 'package:crud_firebase/services/firebase_service.dart';
import 'package:flutter/material.dart';

class EditNamePage extends StatefulWidget {
  const EditNamePage({super.key});
  @override
  State<EditNamePage> createState() => _EditNamePageState();
}

class _EditNamePageState extends State<EditNamePage> {
  TextEditingController nameController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final Map arguments = ModalRoute.of(context)!.settings.arguments as Map;
    nameController.text = arguments['name'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Name'),
        backgroundColor: Colors.blue, // Establece el color de fondo del AppBar
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Edit Name',
              ),
            ),
            const SizedBox(height: 20), // Espacio de 20 unidades
            ElevatedButton(
                onPressed: () async {
                  // print(arguments['uid']);
                  await editPeople(arguments['uid'], nameController.text)
                      .then((_) {
                    // ignore: use_build_context_synchronously
                    Navigator.pop(context);
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // color de fondo
                  foregroundColor: Colors.white, // Texto blanco
                ),
                child: const Text("Actualizar"))
          ],
        ),
      ),
    );
  }
}
