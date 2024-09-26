import 'package:get/get.dart';

class FavouriteController extends GetxController{

  RxList<String> fruitList = ['Apple', 'Banana','Mango','Grapes'].obs;
  RxList favItems = [].obs;

  void addToFavourite(String value){
    favItems.add(value);
  }
  void removeFromFavourite(String value){
    favItems.remove(value);
  }

}