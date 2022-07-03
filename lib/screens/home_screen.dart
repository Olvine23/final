import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:moviez/base_config.dart';
import 'package:moviez/screens/components/body.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: secondary_color,
      appBar: buildAppBar(),
      
      
      body: const  Body(),
       bottomNavigationBar: BottomNavigationBar(
            
        items: const <BottomNavigationBarItem>[  
          BottomNavigationBarItem(  
            icon: Icon(Icons.home),  
            label: "Home",
              
            backgroundColor: secondary_color
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.search),  
             label: "Search",
            backgroundColor: Colors.yellow  
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.person),  
            label: "Account",
            
            backgroundColor: Colors.blue,  
          ), 
           BottomNavigationBarItem(  
            icon: Icon(Icons.tv),  
            label: "Shows",
            
            backgroundColor: Colors.blue,  
          ),  
        ], 
    
       )
    );
    
    
  }

  AppBar buildAppBar() {
    return AppBar(

      
      backgroundColor: Colors.transparent,
      elevation: 0,

      title: Text("Moviez", style: TextStyle(color: Colors.white),),
      
      leading: IconButton(padding: EdgeInsets.only(left: 20), onPressed: (){}, icon: Icon(Icons.tv, color: Colors.white,)),
      actions:
      <Widget> [
        
       IconButton(padding: EdgeInsets.symmetric(horizontal: 20), onPressed: (){}, icon: Icon(Icons.search, size: 30,color: Colors.white,))
      ],
    );
    
  }
}