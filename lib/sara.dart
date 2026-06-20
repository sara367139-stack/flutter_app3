
import 'package:flutter/material.dart';

class Sara extends StatelessWidget {
  const Sara({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

 /////////////////////////////////////////////////////////////////=====
 appBar: AppBar(
  centerTitle: true,
  title: Text("My Home"),
  leading: Icon(Icons.menu),
  actions: [
    Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Center(
        child: CircleAvatar(
          backgroundColor: const Color(0xFF437666),
          child: const Text('SM', style: TextStyle(color: Colors.white)),
        ),
      ),
    ),
  ],
),

//////////////////////////////////////////////////////////////////====
body:Padding(  // عشان مخليش الكلام  لازق في الشمال 
    padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Column(
  
     crossAxisAlignment: CrossAxisAlignment.stretch,
children:[
const Text(
            'Wednesday, June 20',
            style: TextStyle(color: Colors.grey, fontSize: 16),
          ),

// const SizedBox(height: 5),
Text.rich( //طريقه اللون محتلفه بين الكلمتين 
TextSpan(// لو عوزه كل كلمه طريقه الخط مختلف
              text: 'Good evening, ',
              style: const TextStyle(color: Colors.black, fontSize: 28, fontWeight: FontWeight.bold),
              children: [
                TextSpan(
                  text: 'Rebecca',
                  style: TextStyle(color: const Color(0xFF2C4E44)),
                ),
              ],
            ),

),

          const Text(
            'You have 3 rooms active and 12 devices running right now.',
            style: TextStyle(color: Colors.black54, fontSize: 15),
          ),


const SizedBox(height: 30),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
Expanded(
  child: Card(
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.thermostat_outlined,
            color: Color(0xFF2C4E44),
          ),
          SizedBox(height: 8),
          Text(
            '22°C',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('Inside'),
        ],
      ),
    ),
  ),
),

Expanded(
  child: Card(
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.wb_sunny_outlined,
            color: Color(0xffB8A44C),
          ),
          SizedBox(height: 8),
          Text(
           '18°C',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('Outside'),
        ],
      ),
    ),
  ),
),

Expanded(
  child: Card(
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.water_drop_outlined,
            color: Color(0xFF2D74A4),
          ),
          SizedBox(height: 8),
          Text(
            '58%',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('Humidity'),
        ],
      ),
    ),
  ),
)

],
),

const SizedBox(height: 30),

Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Rooms',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'See all',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF2E4F4F),
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],  
),
const SizedBox(height: 12),

Card(
  child: ListTile(
    leading: Image.network("https://th.bing.com/th/id/OIP.avc0rN_kiU2jOA_4nyfiigHaE7?w=279&h=186&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3", width: 55, height: 55 ,fit: BoxFit.cover),
    title: Text("Living Room"),
    subtitle: Text("4 devices · 22°C"),
       trailing: Icon(
 Icons.arrow_forward_ios_rounded,
      size: 30,
      color: Colors.grey,
    ),
  ),

),
const SizedBox(height: 12),
Card(
  child: ListTile(
    leading: Image.network("https://th.bing.com/th/id/OIP.LFRZ3OB17GaRXgOE4GcPpwHaFj?w=283&h=213&c=7&r=0&o=7&dpr=1.3&pid=1.7&rm=3", width: 55, height: 55 ,fit: BoxFit.cover),
    title: Text("Bedroom"),
    subtitle: Text("3 devices · 20°C"),
       trailing: Icon(
 Icons.arrow_forward_ios_rounded,
      size: 30,
      color: Colors.grey,
    ),
  ),
),
const SizedBox(height: 12),
Card(
  child: ListTile(
    leading: Image.network("data:image/webp;base64,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", width: 55, height: 55 ,fit: BoxFit.cover),
    title: Text("Kitchen"),
    subtitle: Text("5 devices · 24°C"),
       trailing: Icon(
 Icons.arrow_forward_ios_rounded,
      size: 30,
      color: Colors.grey,
    ),
  ),
),

const SizedBox(height: 200),

Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Devices',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
  Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: const Color(0xFF1C3A27),
            borderRadius: BorderRadius.circular(12),
          ),
          child: const Icon(Icons.add, color: Colors.white),
        )
      ],  
),

  ],
  ),
),

bottomNavigationBar: BottomNavigationBar(
    type: BottomNavigationBarType.fixed, // يضمن ثبات الأيقونات والنصوص ومحاذاتها
    backgroundColor: Colors.white,
     selectedItemColor: Colors.deepPurple, // لون الأيقونة والكلمة النشطة (Home مثلاً)
      unselectedItemColor: Colors.grey,
        items: const [
      BottomNavigationBarItem(
            icon: Icon(Icons.home),
             label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
             label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
             label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
               label: '',
          ),
        ],
      ),
 
);

  }
}


