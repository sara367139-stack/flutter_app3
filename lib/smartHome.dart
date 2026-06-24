import 'package:flutter/material.dart';
class Smarthome extends StatefulWidget {
  const Smarthome({super.key});

  @override
  State<Smarthome> createState() => _SmarthomeState();
}

// 2. Fixed the typo from _SmarthomeStare to _SmarthomeState
class _SmarthomeState extends State<Smarthome> {
  int _currentIndex = 0;
 @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 243, 242, 244),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 243, 242, 244),
        leading: Container(
          margin: const EdgeInsets.all(12),
          color: Colors.white,
          child: const Icon(Icons.menu, size: 33),
        ),
        title: const Text(
          'Smart Home',
          style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          Container(
            padding: const EdgeInsets.all(1),
            margin: const EdgeInsets.all(12),
            child: const CircleAvatar(
              backgroundColor: Colors.green,
              child: Text(
                'SM',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(12),
        // تم إضافة SingleChildScrollView هنا لحل مشكلة الـ Overflow
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Wednesday, June 20',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 9),
              const Text.rich(
                TextSpan(
                  text: 'Good evening, ',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Sara',
                      style: TextStyle(color: Colors.green),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'You have 3 rooms active and 12 devices running right \n now',
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 15),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Icon(Icons.thermostat, color: Colors.blueGrey, size: 28),
                      SizedBox(height: 8),
                      Text(
                        '22°C',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Inside',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),

                  Column(
                    children: [
                      Icon(Icons.sunny, color: Colors.orange, size: 28),
                      SizedBox(height: 8),
                      Text(
                        '18°C',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Outside',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.opacity, color: Colors.blue, size: 28),
                      SizedBox(height: 8),
                      Text(
                        '58%',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Humidity',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Text(
                'Rooms',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                height: 90,
                width: double.infinity,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    leading: Image.network(
                      'data:image/jpeg;base64,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',
                      width: 80,
                      height: 100,
                    ),
                    title: const Text(
                      "Living Room",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    subtitle: const Text(
                      "4 devices . 22°C",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 90,
                width: double.infinity,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    leading: Image.network(
                      'data:image/jpeg;base64,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',
                      width: 80,
                      height: 100,
                    ),
                    title: const Text(
                      "BedRoom",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    subtitle: const Text(
                      "3 devices . 20°C",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                height: 90,
                width: double.infinity,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    leading: Image.network(
                      'data:image/jpeg;base64,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',
                      width: 80,
                      height: 100,
                    ),
                    title: const Text(
                      "Kitchen",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    subtitle: const Text(
                      "5 devices . 24°C",
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
              const SizedBox(height: 15),
            ],
          ),
        ),
      ),
 
bottomNavigationBar: BottomNavigationBar(
    type: BottomNavigationBarType.fixed, // يضمن ثبات الأيقونات والنصوص ومحاذاتها
    backgroundColor: Colors.white,
     selectedItemColor: const Color.fromARGB(255, 51, 80, 45), // لون الأيقونة والكلمة النشطة (Home مثلاً)
      unselectedItemColor: Colors.grey,
      currentIndex: _currentIndex,
   onTap: (index) {
     setState(() {
      _currentIndex = index; 
    });
  },
        items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart),
            label: 'Progress',

          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),




    );
  }
}