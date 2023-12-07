import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Wallet extends GetResponsiveView {
  Wallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wallet")),
      body: Center(child: Text("wallet"),)
    );
  }
}




// Widget build(BuildContext context) {
//     return Scaffold(
//       body: IndexedStack(
        
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       floatingActionButton: FloatingActionButton(onPressed: () {}, child: const Icon(Icons.add)),
//       bottomNavigationBar: 
//         BottomAppBar(
//           shape: CircularNotchedRectangle(),
//           color: Colors.blue,
//           child: Row(children: [
//             IconButton(onPressed: () { Get.toNamed("/browse");}, icon: const Icon(Icons.home)),
//             IconButton(onPressed: () { Get.toNamed("wallet");}, icon: const Icon(Icons.menu)),
//           ],)
        
//       ),
//     );
//   }