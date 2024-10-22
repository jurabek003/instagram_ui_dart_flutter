import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainScreen extends StatelessWidget{
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        actions: [
          IconButton(icon: SvgPicture.asset(    
            'assets/icons/ic_a.svg',
            height: 30,
            width: 30,
          ), onPressed: () {}),
          IconButton(icon: SvgPicture.asset(
            'assets/icons/ic_add.svg',
            height: 30,
            width: 30,
          ), onPressed: () {}),
          IconButton(icon: SvgPicture.asset(
            'assets/icons/ic_more.svg',
            height: 30,
            width: 30,
          ), onPressed: () {}),
          
        ],
       title: const Text("jurabek_4746",style: TextStyle(fontWeight: FontWeight.bold),),
      ),
      bottomNavigationBar: BottomNavigationBar(
    type: BottomNavigationBarType.fixed, // Qo'shilgan qator
    selectedItemColor: Colors.blue, // Qo'shilgan qatorni bos qilish
    unselectedItemColor: Colors.grey, // Qo'shilgan qatorni bos qilish
    backgroundColor: Colors.white, // Qo'shilgan qatorni rangi
    currentIndex: 0, // Qo'shilgan qatorni index
    elevation: 20.0,
    items: const [
    BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "home"),
    BottomNavigationBarItem(icon:Icon(Icons.search),label: "check"),
    BottomNavigationBarItem(icon: Icon(Icons.lte_plus_mobiledata_sharp),label: "divider"),
    BottomNavigationBarItem(icon: Icon(Icons.safety_divider_sharp),label: "divider"),
    BottomNavigationBarItem(icon: Icon(Icons.safety_divider_sharp),label: "divider")
    ],
      ),
      body:  Column(
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget> [
             Container(
                height: 80,
                width: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
            ),
            child: ClipRRect(borderRadius: BorderRadius.circular(40),
            child: Image.asset("assets/images/image3.jpg",
            fit: BoxFit.cover,
            ),
            )
          ),
     const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Text("9", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),      
              Text("posts", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,),),
            ],
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Column(
            children: [
              Text("306", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),      
              Text("followers", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,),),
            ],
          ),
          SizedBox(
            width: 20,
            height: 20,
          ),
          Column(
            children: [
              Text("132", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),      
              Text("following", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500,),),
            ],
          ),
          
        ],
      )
      ],
        )
          ],
        )
   );
  }
}