import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_dependency_injection/controller/user_controller.dart';

class DataScreen extends GetView<UserController> {
  const DataScreen({
    Key? key,
  }) : super(key: key);

  TextStyle commonStyle() => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dados'),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Obx(
              () => Text(
                'Nome: ${controller.user.value.name}',
                style: commonStyle(),
              ),
            ),
            Obx(
              () => Text(
                'idade: ${controller.user.value.age}',
                style: commonStyle(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
