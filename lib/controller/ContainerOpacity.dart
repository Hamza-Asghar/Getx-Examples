import 'package:get/get.dart';

class ContainerOpacity extends GetxController{

  RxDouble opacity= 0.0.obs;

   setOpacity(double value){
    opacity.value =value;
  }
}