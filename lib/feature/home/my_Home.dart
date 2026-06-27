import 'package:flutter/material.dart';
//import 'package:cached_network_image/cached_network_image.dart';

// import 'package:flutter_application_1/utils/app_assets.dart';
// import 'package:flutter_application_1/utils/app_colors.dart';
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


body: Center(
  child: Stack(
     
       clipBehavior: Clip.none,
        alignment: Alignment.center,
          children: [
            //
            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 126, 126, 126),
                shape: BoxShape.circle,
              ),
              child:ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                 child: Image.network(
                'https://tse3.mm.bing.net/th/id/OIP.2aNvbH0sqFK0UhDcv9WXEAHaHa?rs=1&pid=ImgDetMain&o=7&rm=3',
              ),
              )
              
            ),

            Positioned(
              top: 90,
              bottom: 1,
              right: -1,
              //
              child: Container(
                height: 30,
                width: 30,
                //  const Color.fromARGB(255, 1, 168, 43),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





































































//       drawer: Drawer(
//         child: ListView(
//           children: [
//             ListTile(
//               title: Text('Profile'),
//               onTap: () {
//                 // Handle item 1 tap
//               },
//             ),
//             ListTile(
//               title: Text('setting'),
//               onTap: () {
//                 // Handle item 2 tap
//               },
//             ),
//             ListTile(
//               title: Text('setting'),
//               onTap: () {
//                 // Handle item 2 tap
//               },
//             ),
//             ListTile(
//               title: Text('setting'),
//               onTap: () {
//                 // Handle item 2 tap
//               },
//             ),
//           ],
//         ),
//       ),

//       //    backgroundColor: AppColors.backgroundColor,
//       appBar: AppBar(
//         centerTitle: true,
//         //      backgroundColor: AppColors.backgroundColor,
//         title: Text(' My Home Page'),
//         actions: [
//           IconButton(
//             onPressed: null,
//             icon: Icon(
//               Icons.person,
//               color: const Color.fromARGB(255, 212, 215, 217),
//             ),
//           ),
//         ],
//       ),

//       //   @override
//       //   Widget build(BuildContext context) {
//       //     return Scaffold(
//       //       drawer: Drawer(),
//       //       appBar: AppBar(
//       //         title: const Text('My Home'),
//       //         centerTitle: true,
//       //       ),
//       //       body: const SingleChildScrollView(
//       //         child: Padding(
//       //           padding: EdgeInsets.all(20),
//       //           child: Column(
//       //             children: [],
//       //           ),
//       //         ),
//       //       ),
//       //     );
//       //   }
//       // }

//       // appBar: AppBar(
//       //   centerTitle: true,
//       //   title: const Text("My Home"),
//       //   leading: const Icon(Icons.menu),
//       //   actions: [
//       //     Padding(
//       //       padding: const EdgeInsets.only(right: 16.0),
//       //       child: Center(
//       //         child: CircleAvatar(
//       //           backgroundColor: const Color(0xFF437666),
//       //           child: const Text('SM', style: TextStyle(color: Colors.white)),
//       //         ),
//       //       ),
//       //     ),
//       //   ],
//       // ),
//       // drawer: Drawer(
//       //   child: ListView(
//       //     children: const [
//       //       DrawerHeader(
//       //         decoration: BoxDecoration(
//       //           color: Color(0xff4E7D6A),
//       //         ),
//       //         child: Text(
//       //           "Menu",
//       //           style: TextStyle(
//       //             color: Colors.white,
//       //             fontSize: 24,
//       //           ),
//       //         ),
//       //       ),
//       //       ListTile(
//       //         leading: Icon(Icons.home),
//       //         title: Text("Item 1"),
//       //       ),
//       //       ListTile(
//       //         leading: Icon(Icons.settings),
//       //         title: Text("Item 2"),
//       //       ),
//       //     ],
//       //   ),
//       // ),
//       body: SingleChildScrollView(
//         child: Container(
//           padding: EdgeInsets.symmetric(horizontal: 22, vertical: 16),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 'Wednesday, June 20',
//                 style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
//               ),
//               SizedBox(height: 4),

//               Text(
//                 'Good evening, Rebecca',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//               ),

//               SizedBox(height: 6),
//               Text('You have 3 rooms active and 12 devices running right now.'),
//               SizedBox(height: 24),

//               SizedBox(
//                 width: double.infinity,
//                 height: 120,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.symmetric(horizontal: 10),
//                       height: 103,
//                       width: 113,
//                       decoration: BoxDecoration(
//                         //    color: AppColors.continerColor,
//                         borderRadius: BorderRadius.all(Radius.circular(16)),
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.percent),
//                           Text('90 %'),
//                           Text('Humidity'),
//                         ],
//                       ),
//                     ),
//                     Container(
//                       margin: EdgeInsets.symmetric(horizontal: 10),
//                       height: 103,
//                       width: 113,
//                       decoration: BoxDecoration(
//                         color: const Color.fromARGB(255, 138, 88, 129),
//                         borderRadius: BorderRadius.all(Radius.circular(16)),
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.percent),
//                           Text('90 %'),
//                           Text('Humidity'),
//                         ],
//                       ),
//                     ),

//                     Container(
//                       margin: EdgeInsets.symmetric(horizontal: 10),
//                       height: 103,
//                       width: 113,
//                       decoration: BoxDecoration(
//                         color: const Color.fromARGB(255, 155, 139, 152),
//                         borderRadius: BorderRadius.all(Radius.circular(16)),
//                       ),
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Icon(Icons.percent),
//                           Text('90 %'),
//                           Text('Humidity'),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 24),

//               Row(
//                 children: [
//                   Text(
//                     'Rooms',
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                   Spacer(),
//                 GestureDetector(
//   onTap: () {},
//   child: Text('See All'),
// )
//                 ],
//               ),
//               Container(
//                 width: double.infinity,
//                 height: 70,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.all(Radius.circular(18)),
//                 ),
//                 child: ListTile(
//                   leading: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(50)),
//                     ),
//                     //     child: Image.asset(fit: BoxFit.cover),
//                   ),
//                   title: Text('data'),
//                   trailing: Icon(Icons.arrow_forward_ios),
//                   subtitle: Text('data'),
//                 ),
//               ),

//               SizedBox(height: 15),

//               Container(
//                 width: double.infinity,
//                 height: 70,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.all(Radius.circular(18)),
//                 ),
//                 child: ListTile(
//                   leading: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(50)),
//                     ),
//                     child:CachedNetworkImage(
//   imageUrl: 'https://picsum.photos/200',
//   placeholder: (context, url) =>
//       CircularProgressIndicator(),
//   errorWidget: (context, url, error) =>
//       Icon(Icons.error),
// )
//                   ),
//                   title: Text('data'),
//                   trailing: Icon(Icons.arrow_forward_ios),
//                   subtitle: Text('data'),
//                 ),
//               ),
//               SizedBox(height: 15),

//               Container(
//                 height: 70,
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.all(Radius.circular(18)),
//                 ),
//                 child: ListTile(
//                   leading: Container(
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.all(Radius.circular(50)),
//                     ),
//                     //     child: Image.asset(AppAssets.bedRomeIamge, fit: BoxFit.cover),
//                   ),
//                   title: Text('data'),
//                   trailing: Icon(Icons.arrow_forward_ios),
//                   subtitle: Text('data'),
//                 ),
//               ),
//             ],
//           ),
//         ),

//         //
//         //
//         //  const SizedBox(height: 20),

//         //         // 2. كروت الطقس والرطوبة (Inside, Outside, Humidity) مرتبة في صف واحد بالتساوي
//         //         Row(
//         //           children: [
//         //             // كارت Inside
//         //             Expanded(
//         //               child: Card(
//         //                 child: Padding(
//         //                   padding: const EdgeInsets.all(12),
//         //                   child: Column(
//         //                     mainAxisAlignment: MainAxisAlignment.center,
//         //                     children: const [
//         //                       Icon(Icons.thermostat_outlined, color: Color(0xFF2C4E44)),
//         //                       SizedBox(height: 8),
//         //                       Text('22°C', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//         //                       Text('Inside', style: TextStyle(fontSize: 12)),
//         //                     ],
//         //                   ),
//         //                 ),
//         //               ),
//         //             ),
//         //             // كارت Outside (تم إصلاح الـ ListView التالف وتحويله لكارت طبيعي)
//         //             Expanded(
//         //               child: Card(
//         //                 child: Padding(
//         //                   padding: const EdgeInsets.all(12),
//         //                   child: Column(
//         //                     mainAxisAlignment: MainAxisAlignment.center,
//         //                     children: const [
//         //                       Icon(Icons.wb_sunny_outlined, color: Color(0xffB8A44C)),
//         //                       SizedBox(height: 8),
//         //                       Text('18°C', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//         //                       Text('Outside', style: TextStyle(fontSize: 12)),
//         //                     ],
//         //                   ),
//         //                 ),
//         //               ),
//         //             ),
//         //             // كارت Humidity
//         //             Expanded(
//         //               child: Card(
//         //                 child: Padding(
//         //                   padding: const EdgeInsets.all(12),
//         //                   child: Column(
//         //                     mainAxisAlignment: MainAxisAlignment.center,
//         //                     children: const [
//         //                       Icon(Icons.water_drop_outlined, color: Color(0xFF2D74A4)),
//         //                       SizedBox(height: 8),
//         //                       Text('58%', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//         //                       Text('Humidity', style: TextStyle(fontSize: 12)),
//         //                     ],
//         //                   ),
//         //                 ),
//         //               ),
//         //             ),
//         //           ],
//         //         ),
//         //         const SizedBox(height: 30),

//         //         // عنوان الغرف
//         //         Row(
//         //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //           children: [
//         //             const Text(
//         //               'Rooms',
//         //               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
//         //             ),
//         //             TextButton(
//         //               onPressed: () {},
//         //               child: const Text(
//         //                 'See all',
//         //                 style: TextStyle(fontSize: 16, color: Color(0xFF2E4F4F), fontWeight: FontWeight.w500),
//         //               ),
//         //             ),
//         //           ],
//         //         ),
//         //         const SizedBox(height: 12),

//         //         // قائمة الغرف (الكروت)
//         //         Card(
//         //           child: ListTile(
//         //             leading: Image.asset("assets/images/living_room.png", width: 55, height: 55, fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 55)),
//         //             title: const Text("Living Room"),
//         //             subtitle: const Text("4 devices · 22°C"),
//         //             trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Colors.grey),
//         //           ),
//         //         ),
//         //         const SizedBox(height: 12),
//         //         Card(
//         //           child: ListTile(
//         //             leading: Image.asset("assets/images/badroom.png", width: 55, height: 55, fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 55)),
//         //             title: const Text("Bedroom"),
//         //             subtitle: const Text("3 devices · 20°C"),
//         //             trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Colors.grey),
//         //           ),
//         //         ),
//         //         const SizedBox(height: 12),
//         //         Card(
//         //           child: ListTile(
//         //             leading: Image.asset("assets/images/kitchen.png", width: 55, height: 55, fit: BoxFit.cover, errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 55)),
//         //             title: const Text("Kitchen"),
//         //             subtitle: const Text("5 devices · 24°C"),
//         //             trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 20, color: Colors.grey),
//         //           ),
//         //         ),
//         //         const SizedBox(height: 40), // قللت الـ 200 عشان المساحة تكون منطقية

//         //         // عنوان الأجهزة
//         //         Row(
//         //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //           children: [
//         //             const Text(
//         //               'Devices',
//         //               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
//         //             ),
//         //             Container(
//         //               padding: const EdgeInsets.all(8),
//         //               decoration: BoxDecoration(
//         //                 color: const Color(0xFF1C3A27),
//         //                 borderRadius: BorderRadius.circular(12),
//         //               ),
//         //               child: const Icon(Icons.add, color: Colors.white),
//         //             )
//         //           ],
//         //         ),
//         //         const SizedBox(height: 20),
//         //       ],
//         //     ),
//         //   ),
//         // ),
//         // bottomNavigationBar: BottomNavigationBar(
//         //   type: BottomNavigationBarType.fixed,
//         //   backgroundColor: Colors.white,
//         //   selectedItemColor: Colors.deepPurple,
//         //   unselectedItemColor: Colors.grey,
//         //   items: const [
//         //     BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
//         //     BottomNavigationBarItem(icon: Icon(Icons.schedule), label: ''),
//         //     BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: ''),
//         //     BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
//         //   ],
//       ),
