
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //////////////////////////////////
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // centerTitle:true,
        // title: Text('Welcome Sara',
        //   style: TextStyle(
        //       fontWeight: FontWeight.bold,
        //     ),
        //     ),
      ),

      //body
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:Colors.blue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.login), label: 'login'),
         // BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),

          // BottomNavigationBarItem(
          //   icon:Icon(Icons.favorite_border),
          //   label:'Favorite',
          //     ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         const Image(
          image: NetworkImage('data:image/webp;base64,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'),
          width: 250,
          height: 100,
          
          fit: BoxFit.cover,
        ),
            //textfeld
            //bottom
            // const Text(
            //   'Welcome to the Home Screen!',
            //   textAlign: TextAlign.center,
            //   style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            // ),



         TextField(
              controller: emailController,
              decoration: InputDecoration(
              labelText: "Email",
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(),
            ),
                ),
             SizedBox(height: 20),
          
         TextField(
            controller: passwordController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              prefixIcon: Icon(Icons.lock),
              border: OutlineInputBorder(),
            ),
          ),



     
      TextButton(
        onPressed: () {
        },
        child: const Text(
          'Forgot Password?',
          style: TextStyle(color: Colors.blue),
        ),
      ),

    ElevatedButton(
  onPressed: () {
   
  },
  style: ElevatedButton.styleFrom(
    backgroundColor: Colors.blue, 
    foregroundColor: Colors.white, 
  ),
  child: const Text('login'),
),
          ],
        ),
      ),
    );
  }
}
