import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(onPressed: (){}, child: const Text("Button")),
             ElevatedButton(onPressed: (){}, child: const Text("Button"), ),
             ElevatedButton(onPressed: (){}, child: const Text("Button")),
             ElevatedButton(onPressed: (){}, child: const Text("Button")),
             ElevatedButton(onPressed: (){}, child: const Text("Button")),


          ],
        ),
      ),
    );
  }
}
