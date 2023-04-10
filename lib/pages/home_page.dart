import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_injection/controller/user_controller.dart';
import 'package:getx_dependency_injection/pages/data_screen.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final nameController = TextEditingController();
  final ageController = TextEditingController();

  final userController = Get.find<UserController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: TextField(
                    controller: nameController,
                    decoration: const InputDecoration(
                      labelText: 'Nome',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    userController.setUserName(nameController.text);
                  },
                  child: const Text('Salvar'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: TextField(
                    controller: ageController,
                    decoration: const InputDecoration(
                      labelText: 'Idade',
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    userController.setUserAge(int.parse(ageController.text));
                  },
                  child: const Text('Salvar'),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Get.to(const DataScreen());
              },
              child: const Text('Tela de dados'),
            ),
          ],
        ),
      ),
    );
  }
}
