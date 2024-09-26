import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/CounterController.dart';
import 'container_opacity.dart';

class CounterExample extends StatefulWidget {
  const CounterExample({super.key});

  @override
  State<CounterExample> createState() => _CounterExamState();
}

class _CounterExamState extends State<CounterExample> {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.incrementCounter();
        },
        child: const Icon(Icons.add),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 340.0),
            child: Obx(() {
              return Center(
                child: Text(
                  controller.counter.toString(),
                  style: const TextStyle(color: Colors.black, fontSize: 42),
                ),
              );
            }),
          ),
          SizedBox(
            child: IconButton(
              padding: const EdgeInsets.only(top: 350, left: 100),
              onPressed: () {
                Get.to(() => const ContainerOpacityScreen());
              },
              icon: const Icon(Icons.next_plan),
            ),
          ),
        ],
      ),
    );
  }
}
