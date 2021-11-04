import 'package:flutter/material.dart';


class MyHomePage extends StatelessWidget{
  

  @override

  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title:  const Text('CBC')),
      body: ListView(
        children: [
          Center(child: Column(children: [Image.asset('images/home.jpg')],),)
        ],
      ),
       
      drawer: Drawer(child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(image: AssetImage('images/home.jpg'),
              fit: BoxFit.fill,
              ),
              
              //Center(child: Column(children: [SizedBox(height: 20), Image.asset('images/home.jpg')],),)
            ),
            child: Text('My account'),
            
            ),
            ListTile(
              title: const Text('Home Page'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Examine Self'),
              onTap: () {},
            ),

        ],
      ),
      ),
      
    );
  }

}