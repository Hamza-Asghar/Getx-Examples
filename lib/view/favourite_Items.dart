import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/controller/FavouriteItemsController.dart';

import 'image_picker.dart';

class FavouriteItems extends StatefulWidget {
  const FavouriteItems({super.key});

  @override
  State<FavouriteItems> createState() => _FavouriteItemsState();
}

class _FavouriteItemsState extends State<FavouriteItems> {

  FavouriteController  controller =Get.put(FavouriteController());

  @override
  Widget build(BuildContext context) {
    print("build again ");
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: controller.fruitList.length,
                itemBuilder:(context, index) {
                return Card(
                  margin:const  EdgeInsets.symmetric(horizontal: 10,vertical: 12),
            
                  child: ListTile(
                    onTap: (){
                      if( controller.favItems.contains(controller.fruitList[index].toString())){
                        controller.removeFromFavourite(controller.fruitList[index].toString());
                      }
                      else{
                        controller.addToFavourite(controller.fruitList[index].toString());
                      }
                    },
                    title: Text(controller.fruitList[index].toString()),
                    trailing:Obx(() =>  Icon(Icons.favorite_outlined ,
                      color: controller.favItems.contains(controller.fruitList[index].toString())? Colors.red:Colors.blueGrey ,
                    ),)
                  ),
            
                );
            
                },
            ),
          ),
          SizedBox(
            child: IconButton(
              padding: const EdgeInsets.only(top: 350, left: 100),
              onPressed: () {
                Get.to(() => const ImagePick());
              },
              icon: const Icon(Icons.next_plan),
            ),
          ),
        ],
      ),
    );
  }
}
