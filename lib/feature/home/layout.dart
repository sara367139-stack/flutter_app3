import 'package:flutter/material.dart';


class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Layout Demo"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Column
          const Text(
            "Column",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            padding: const EdgeInsets.all(10),
            color: Colors.cyan.shade100,
            child: const Column(
              children: [
                Text("Item 1"),
                Text("Item 2"),
                Text("Item 3"),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Row
          const Text(
            "Row",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),





//           Row(
//   children: [
//     Container(
//       width: 100,
//       color: Colors.red,
//     ),
//     Container(
//       width: 100,
//       color: Colors.blue,
//     ),
//   ],
// ) ,


///////// Expanded = "خد كل المساحة الفاضية المتبقية"

// في Row → يوسع العنصر أفقياً.
// في Column → يوسع العنصر رأسياً.
// flex → يحدد نسبة المساحة لكل عنصر.


// Column(
//   children: [
//     Expanded(
//       child: Container(
//         color: Colors.green,
//       ),
//     ),
//     Expanded(
//       child: Container(
//         color: Colors.yellow,
//       ),
//     ),
//   ],
// ),

// Row(
//   children: [
//     Expanded(
//       flex: 2,
//       child: Container(
//         height: 100,
//         color: Colors.red,
//       ),
//     ),
//     Expanded(
//       flex: 1,
//       child: Container(
//         height: 100,
//         color: Colors.blue,
//       ),
//     ),
//   ],
// ),
        //   Row(
        //  children: [
        //       Expanded(
        //         child: Container(
        //           height: 60,
        //           color: Colors.orange.shade200,
        //           child: const Center(
        //             child: Text("Left"),
        //           ),
        //         ),
        //       ),
        //       const SizedBox(width: 10),
        //       Expanded(
        //         child: Container(
        //           height: 60,
        //           color: Colors.orange.shade100,
        //           child: const Center(
        //             child: Text("Right"),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),



        Row(
          children: [
            Expanded(
              child: Container(
                height: 50,
                color: Colors.blue,
                child: Center(
                  child: Text("SARA"),
                )
              )
            ),
          ],
        ),

          const SizedBox(height: 20),

          // Stack
          const Text(
            "Stack",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          Container(
            height: 120,
            margin: const EdgeInsets.only(top: 10),
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  color: Colors.amber.shade100,
                ),
                const Positioned(
                  top: 10,
                  right: 10,
                  child: Icon(Icons.star),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // ListView Example
          const Text(
            "ListView",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),

          Container(
            height: 180,
            margin: const EdgeInsets.only(top: 10),
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.person),
                  title: Text("User ${index + 1}"),
                );
              },
            ),
          ),
],
      ),
    );
  }
}