import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/view/switch_button.dart';
import '../controller/ContainerOpacity.dart';

class ContainerOpacityScreen extends StatefulWidget {
  const ContainerOpacityScreen({super.key});

  @override
  State<ContainerOpacityScreen> createState() => _ContainerOpacityScreenState();
}

class _ContainerOpacityScreenState extends State<ContainerOpacityScreen> {
   ContainerOpacity containerOpacityController = Get.put(ContainerOpacity());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(() => Container(
            margin: const EdgeInsets.symmetric(horizontal: 80),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Colors.red.withOpacity(containerOpacityController.opacity.value),
              borderRadius: BorderRadius.circular(24),
            ),
          )),
          const SizedBox(height: 20),

          Obx(() => Slider(
            value: containerOpacityController.opacity.value,
            min: 0.0,
            max: 1.0,
            onChanged: (value) {
              containerOpacityController.setOpacity(value);
            },
          )),
          SizedBox(
            child: IconButton(
              padding: const EdgeInsets.only(top: 350, left: 100),
              onPressed: () {
                Get.to(() => const SwitchButton());
              },
              icon: const Icon(Icons.next_plan),
            ),
          )
        ],
      ),
    );
  }
}
