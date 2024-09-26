
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/SwitchButtonController.dart';
import 'favourite_Items.dart';

class SwitchButton extends StatefulWidget {
  const SwitchButton({super.key});

  @override
  State<SwitchButton> createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {

  final SwitchController switchController = Get.put(SwitchController());

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Notifications'),
                  const Spacer(),
                  Obx(() {
                    return Switch(
                      value: switchController.notification.value,
                      onChanged: (bool value){
                        switchController.setNotification(value);
                      },
                    );
                  })
                ],
              ),
              const SizedBox(height: 260,),
              SizedBox(
                child: IconButton(
                  padding: const EdgeInsets.only(left: 300),
                  onPressed: () {
                    Get.to(() => const FavouriteItems());
                  },
                  icon: const Icon(Icons.next_plan),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
