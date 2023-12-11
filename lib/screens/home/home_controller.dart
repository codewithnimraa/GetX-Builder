// import 'dart:ffi';

import 'package:get/get.dart';


////   1) Getx Builder



// class HomeController extends GetxController {
//   int counter = 0;

//   addcountervalue() {
//     counter++;
//     print(counter);
//     update();
//   }
// }



////   2) Obx Builder




class HomeController extends GetxController {
  RxInt counter = 0.obs;

  addcountervalue() {
    counter.value++;
    print(counter);
  }
}
