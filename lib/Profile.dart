import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
class profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      // body: Center(
      //   child: Text('Welcome to your profile!'),

body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [
            
            // CircleAvatar(
            //   radius: 60, 
            //   backgroundImage: NetworkImage(
            //     'https://www.bing.com/th/id/OIP.8Ra2pu53bW3Tghoi2hE6rgHaHa?w=128&h=128&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2', // ضعي هنا رابط صورتكِ المفضلة
            //   ),
            // ),
            
            const SizedBox(height: 20), 
//image 
    CachedNetworkImage(
        imageUrl: "https://www.bing.com/th/id/OIP.8Ra2pu53bW3Tghoi2hE6rgHaHa?w=128&h=128&c=8&rs=1&qlt=90&o=6&dpr=1.3&pid=3.1&rm=2",
        placeholder: (context, url) => CircularProgressIndicator(),
        errorWidget: (context, url, error) => Icon(Icons.error),
     ),

    //  CachedNetworkImage(
    //    imageUrl: "http://via.placeholder.com/350x150",
    //    progressIndicatorBuilder: (context, url, downloadProgress) => 
    //            CircularProgressIndicator(value: downloadProgress.progress),
    //    errorWidget: (context, url, error) => Icon(Icons.error),
    // ),
            Text(
              'Sara Mohamed',
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold,
            ), 
              ),
            Text(
              'sara.mohamed@gmail.com', 
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey[600], // لون رمادي خفيف ليظهر بشكل أنيق
                fontWeight: FontWeight.w400,
              ),
            ),
        ListTile(
       leading: Icon(Icons.person),
       title: Text('Personal Info'),
       subtitle: Text('View and edit your personal details'),
       trailing: Icon(Icons.arrow_forward_ios),
       onTap: () {
           },
     ),
  
      ListTile(
       leading: Icon(Icons.person),
       title: Text('Education'),
       subtitle: Text('View and edit your educational details'),
       trailing: Icon(Icons.arrow_forward_ios),
       onTap: () {
           },
     ),

     ListTile(
       leading: Icon(Icons.person),
       title: Text('Progress'),
       subtitle: Text('View and edit your progress details'),
       trailing: Icon(Icons.arrow_forward_ios),
       onTap: () {
           },
     ),

        ListTile(
       leading: Icon(Icons.person),
       title: Text('Settings'),
       subtitle: Text('View and edit your settings'),
       trailing: Icon(Icons.arrow_forward_ios),
       onTap: () {
           },
     ),

         
            const SizedBox(height: 10),
        
              ElevatedButton( onPressed: () {
           },
         style: ElevatedButton.styleFrom(
         backgroundColor: Colors.blue, 
         foregroundColor: Colors.white, 
  ),
 
  child: const Text('logout'),
),
        

          ],
        ),
      ),
    

    );}}