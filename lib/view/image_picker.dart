import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/ImagePickerController.dart';

class ImagePick extends StatefulWidget {
  const ImagePick({super.key});

  @override
  State<ImagePick> createState() => _ImagePickState();

}

class _ImagePickState extends State<ImagePick> {

  PickerController pickerController = Get.put(PickerController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                 radius:57,
                backgroundImage: pickerController.imagePath.isNotEmpty
                  ? FileImage(File(pickerController.imagePath.toString()))
                    : null,

              ),
            ),
            TextButton(onPressed: (){
              pickerController.getImage();
            }, child: const Text('pick image')),
          ],
        );
      }),


    );
  }
}
