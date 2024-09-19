import 'package:flutter/material.dart';
import 'package:navigation_routing_custom_widget/screen/user_list_screen.dart';

class ProductScreen extends StatelessWidget {
  final String s ;
  const ProductScreen({super.key, required this.s});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Screen"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [

            ElevatedButton(onPressed: (){
              Navigator.pop(context);
            }, child: const Text("Back")),

            ElevatedButton(onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const UserListScreen( s: 'ok',)), (route)=> false);
              // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const UserListScreen()));
            }, child: const Text("Next")),

            Card(
              child: Text(s),
            )
          ],
        ),
      ),
    );
  }
}
