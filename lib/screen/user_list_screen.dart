import 'package:flutter/material.dart';
import 'package:navigation_routing_custom_widget/screen/product_screen.dart';

class UserListScreen extends StatelessWidget {
  final String s;
  const UserListScreen({super.key, required this.s});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("User List Screen"),
      ),
      body: Center(

        child: Column(
          mainAxisSize: MainAxisSize.min,

          children: [
            ElevatedButton(onPressed: (){
             // Navigator.pop(context);
            }, child: const Text("Back")),
            Card(
              child: Text(s),
            )
          ],
        ),
      ),
    );
  }
}
