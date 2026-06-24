import 'package:flutter/material.dart';
import 'package:flutter_application_1/my_Home.dart';

class Analytics extends StatefulWidget {
  const Analytics({super.key});

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyHome()),
          );
        },
        child: const Icon(Icons.arrow_back),
      ),
 appBar: AppBar(
      centerTitle:true ,
        title: const Text('Analytics'),
        leading: const Icon(Icons.menu),
      ),
 body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
   children: [
Container(
          
         child: const Text(
                  'This week',
                  style: TextStyle(
                    color: Color.fromARGB(255, 92, 94, 92),
                    fontSize: 12,
                  ),
                ),
               ),
    const SizedBox(height: 12),
     const Text(
                'Energy Usage',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
Container(
                width: double.infinity,
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: const Color(0xff2F5547),
                  borderRadius: BorderRadius.circular(30),
                ),
child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
     children: [
                    const Text(
                      'Total this month',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 16),
         const Text(
                      '49.21 kWh',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
       const SizedBox(height: 16),
      Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 6,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white24,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.arrow_downward,
                            size: 14,
                            color: Colors.white,
                          ),
                          SizedBox(width: 4),
                          Text(
                            '12% vs last month',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

 Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: Align(
                 alignment: Alignment.centerLeft,
                child: Text(
               'Daily Breakdown',
      style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
),

SizedBox(height: 20),

//
Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Row(
    children: [

      Text(
        'Mon',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
      ),

      SizedBox(width: 15),

      Expanded(
        child: LinearProgressIndicator(
          value: 0.52,
          minHeight: 8,
          borderRadius: BorderRadius.circular(10),
          backgroundColor: Colors.grey.shade200,
          valueColor: AlwaysStoppedAnimation(
            Color(0xff4E7D6A),
          ),
        ),
      ),

      SizedBox(width: 15),

      Text(
        '5.2\nkWh',
        textAlign: TextAlign.center,
      ),
   ],
  
  ),


),

Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Row(
    children: [

      Text(
        'Tue',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
      ),

      SizedBox(width: 15),

      Expanded(
        child: LinearProgressIndicator(
          value: 0.68,
          minHeight: 8,
          borderRadius: BorderRadius.circular(10),
          backgroundColor: Colors.grey.shade200,
          valueColor: AlwaysStoppedAnimation(
            Color(0xff4E7D6A),
          ),
        ),
      ),

      SizedBox(width: 15),

      Text(
        '6.8\nkWh',
        textAlign: TextAlign.center,
      ),
   ],
  
  ),


),

Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Row(
    children: [

      Text(
        'Wed',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
      ),

      SizedBox(width: 15),

      Expanded(
        child: LinearProgressIndicator(
          value:  0.71,
          minHeight: 8,
          borderRadius: BorderRadius.circular(10),
          backgroundColor: Colors.grey.shade200,
          valueColor: AlwaysStoppedAnimation(
            Color(0xff4E7D6A),
          ),
        ),
      ),

      SizedBox(width: 15),

      Text(
        '7.1\nkWh',
        textAlign: TextAlign.center,
      ),
   ],
  
  ),


),

Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Row(
    children: [

      Text(
        'Thu ',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
      ),

      SizedBox(width: 15),

      Expanded(
        child: LinearProgressIndicator(
          value: 0.49,
          minHeight: 8,
          borderRadius: BorderRadius.circular(10),
          backgroundColor: Colors.grey.shade200,
          valueColor: AlwaysStoppedAnimation(
            Color(0xff4E7D6A),
          ),
        ),
      ),

      SizedBox(width: 15),

      Text(
        '4.9\nkWh',
        textAlign: TextAlign.center,
      ),
   ],
  ),
),

Padding(
  padding: const EdgeInsets.symmetric(horizontal: 20),
  child: Row(
    children: [

      Text(
        'Fri',
        style: TextStyle(
          color: Colors.grey,
          fontSize: 16,
        ),
      ),

      SizedBox(width: 15),

      Expanded(
        child: LinearProgressIndicator(
          value: 0.63,
          minHeight: 8,
          borderRadius: BorderRadius.circular(10),
          backgroundColor: Colors.grey.shade200,
          valueColor: AlwaysStoppedAnimation(
            Color(0xff4E7D6A),
          ),
        ),
      ),

      SizedBox(width: 15),

      Text(
        '6.3\nkWh',
        textAlign: TextAlign.center,
      ),
   ],
  
  ),


),

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