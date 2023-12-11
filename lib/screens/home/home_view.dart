import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxapp/screens/home/home_controller.dart';



////   1) Getx Builder




// class HomeView extends StatelessWidget {
//   const HomeView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     HomeController homeController = Get.put(HomeController());
//     return Scaffold(
//       body: Center(
//         child: Column(mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             GetBuilder<HomeController>(
//                 init: homeController,
//                 builder: (value) {
//                   return Text(value.counter.toString());
//                 }),
//             ElevatedButton(
//                 onPressed: () {
//                   homeController.addcountervalue();
//                 },
//                 child: Text("Add"))
//           ],
//         ),
//       ),
//     );
//   }
// }



////   2) Obx Builder




class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Text('${homeController.counter.value}')),
            ElevatedButton(
                onPressed: () {
                  homeController.addcountervalue();
                },
                child: const Text("Add"))
          ],
        ),
      ),
    );
  }
}
