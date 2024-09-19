import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:navigation_routing_custom_widget/screen/product_screen.dart';
import 'package:navigation_routing_custom_widget/screen/user_list_screen.dart';

class Home2 extends StatefulWidget {
   Home2({super.key});

  @override
  State<Home2> createState() => _Home2State();
}

class _Home2State extends State<Home2> {
  bool onOff = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             HomeCatagoryWidget(title: 'Product',iconData: Icons.account_circle,widget: const Icon(Icons.add_a_photo),onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (_)=> const ProductScreen(s: "title")));
             },),
             HomeCatagoryWidget(title: 'User',iconData: Icons.add_a_photo,widget: const Text("data"), onTap: (){
               Navigator.push(context, MaterialPageRoute(builder: (_)=> const UserListScreen(s: "title")));
             },),

            FlutterSwitch(value: onOff, onToggle: (bool value) {
              onOff = !onOff;
              setState(() {});
            },),


            ElevatedButton(onPressed: (){
              // Navigator.push(context, MaterialPageRoute(builder: (context){
              //   return const ProductScreen();
              // }));
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductScreen(s: 'From Home2 Screen',)));
            }, child: const Text("Go to Next Page")),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductScreen(s: 'From Product Screen',)));
            }, child: const Text("Go to Next Screen")),



          ],
        ),
      ),
    );
  }
}

class HomeCatagoryWidget extends StatelessWidget {
  final String title;
  final IconData iconData;
  final Widget widget;
  final Function onTap;
  const HomeCatagoryWidget({
    super.key, required this.title, required this.iconData, required this.widget, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: double.infinity,
      child: InkWell(
        onTap: (){
          onTap();
        },
        child: Card(
          color: Colors.amber,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
               Icon(iconData, size: 32,),
              widget,
              Text(title,style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w900),),
              const Icon(Icons.arrow_forward)
            ],
          ),
        ),
      ),
    );
  }
}
