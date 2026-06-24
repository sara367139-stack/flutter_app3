import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 138, 88, 129),
        centerTitle: true,
        title: Text("Log in& Sign up Page"),
      ),
        body: Center(
         child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQahDKSRashYWUa1e_bypmAU8SdZu1QS6ab0JX0KeIRsg&s=10', height: 200, 
          fit: BoxFit.cover,

          ),
          
  
          datafield("Email"),
          SizedBox(height: 10),
          datafield("Password"),
         SizedBox(height: 10),
          appButton(" Sign up"),
           SizedBox(height: 8),
           appButton("Login")
        ],
      ),
    ));
  }


Widget datafield(String lable) {
  return Container(
   
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: TextField(
      decoration: InputDecoration(
        labelText: lable,
        border: const OutlineInputBorder(),
       
      )
    ),
  );
}
  Widget appButton(String buttomname) {
    return GestureDetector(
      onTap: null,
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 138, 88, 129),
          borderRadius: BorderRadius.circular(20),
        ),
        height: 50,
        width: 360,
        child: Center(child: Text(buttomname)),
      ),
    );
  }
}