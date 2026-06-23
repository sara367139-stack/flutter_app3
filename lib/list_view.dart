
import 'package:flutter/material.dart';
class list_view extends StatelessWidget {
  const list_view ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

  // body: SizedBox(
  //   child: ListView.builder(
  //       itemCount: 300,
  //       itemBuilder: (context, index) {
  //            return Column(
  //       children: [
  //         Icon(
  //           Icons.wb_sunny_outlined,
  //           color: Color(0xffB8A44C),
  //         ),
  //              Text(
  //               '18°C',
  //               style: TextStyle(
  //                 fontSize: 20,
  //                 fontWeight: FontWeight.bold,
  //               ),
  //             ),
  //          ],
            
  //         );
         
  //         }
  // )
  
  // ),

  // body:SizedBox(
  //   child:ListView.separated(
  //     itemCount:300 ,


  //    itemBuilder: (context, index) {
  //   return Card(
  //     child: Padding(
  //       padding: EdgeInsets.all(16),
  //       child: Column(
  //         children: [
  //           Icon(
  //             Icons.wb_sunny_outlined,
  //             color: Color(0xffB8A44C),
  //           ),
  //           SizedBox(height: 8),
  //           Text(
  //             '18°C',
  //             style: TextStyle(
  //               fontSize: 20,
  //               fontWeight: FontWeight.bold,
  //             ),
  //           ),
  //           Text('Outside'),
  //         ],
  //       ),
  //     ),
  //   );
  // },

  //    separatorBuilder: (context, index){
  //         return SizedBox(height: 10);
  //    },
  //   ) ,
  // ),   


//  body:Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             appBottom(),
//                appBottom(),
//           ],
//         ),
//       )
//    );
//   }
// ////////////////////////////////////////////widget method/////////////////
//   GestureDetector appBottom() {
//     return GestureDetector(onTap: null,
//           child: Container(
//             decoration: BoxDecoration(
//             color: Colors.blue,

//             borderRadius: BorderRadius.all(Radius.circular(20)),
            
//             ),
//             width: 360,
//             height:50 ,
//             child: Center(child:Text('Next') ),
          
//      ),
//appbar
//apptextfeild

          
 body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFeild(),
               TextFeild(),
          ],
        ),
      )
   );
  }
}

class TextFeild extends StatelessWidget {
  const TextFeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return appBar();
      
  }

  GestureDetector appBar() {
    return GestureDetector(onTap: null,
        child: Container(
          
          decoration: BoxDecoration(
          color: Colors.blue,
 
          borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          width: 360,
          height:50 ,
        
          child: Center(child:Text('Next') ),
        
   ),
);
  }
}

