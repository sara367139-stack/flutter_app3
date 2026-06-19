import 'package:flutter/material.dart';

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   


     
  appBar: AppBar(
  
  leading: IconButton(
    icon: const Icon(Icons.menu, color: Color.fromARGB(255, 232, 224, 224)),
    onPressed: () {
      
    },
  ),

  title: const Text(
    'Home',
    style: TextStyle(color: Color.fromARGB(255, 226, 219, 219), fontWeight: FontWeight.bold ),

  ),
  centerTitle: true,
  backgroundColor: Colors.deepPurple, 
  elevation: 0,

  actions: [
    IconButton(
      icon: const Icon(Icons.notifications_none, color: Colors.white),
      onPressed: () {
    
      },
    ),
    const SizedBox(width: 8), 
  ],
),

      body:AboutListTile(
        child: Column(
          children: [ 
  
Card(
  elevation: 2, // يعطي ظل خفيف للكارت ليظهر بشكل أجمل
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16), // حواف دائرية للكارت
  ),
  child: Padding(
    padding: const EdgeInsets.all(16.0), // مسافة داخلية لحماية العناصر من الالتصاق بالحواف
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        
        // استخدام Expanded هنا ضروري جداً لمنع حدوث Overflow ولجعل النص يأخذ المساحة المتبقية فقط
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // محاذاة النصوص لليامين أو اليسار بحسب لغة الجهاز (الأفضل من stretch هنا)
            mainAxisSize: MainAxisSize.min, // يجعل العمود يأخذ أقل مساحة عمودية ممكنة ليناسب المحتوى
            children: [
              const Text(
                "Hello, Sara!",
                style: TextStyle(
                  fontSize: 24, 
                  fontWeight: FontWeight.bold, 
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8), // مسافة عمودية بين الترحيب والوصف
              Text(
                "Keep learning and\nachieve your goals.",
                style: TextStyle(
                  fontSize: 14, 
                  color: Colors.grey[600], 
                ),
              ),
            ],
          ),
        ),
        
        const SizedBox(width: 16), // مسافة أفقية آمنة بين النص والصورة
        
        CircleAvatar(
          radius: 35, // تم تعديل الحجم إلى 35 بناءً على ملاحظتك في التعليقات ليكون متناسقاً
          backgroundColor: Colors.deepPurple[50],
          backgroundImage: const NetworkImage(
            'https://raw.githubusercontent.com/Ashwinvalento/cartoon-avatar/master/lib/images/female/5.png',
          ), 
        ),
        
      ],
    ),
  ),
),



const SizedBox(height: 30),
     const Text(

      
          "Quick Actions",
          style: TextStyle(
            fontSize: 22, 
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )
        ),  
// const SizedBox(height: 50),





 Row(
  children: [

    Expanded(
    
        // بتقسم عرض الشاشه بالتساوس
      child: Container(
        height: 80,
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 118, 96, 194),
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
      
          children: [
            Icon(Icons.menu_book, color: Colors.purple, size: 28),
            Text("Courses"),
          ],
        ),
      ),
    ),

    Expanded(
      child: Container(
        height: 80,
 margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(167, 53, 129, 82),
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.bar_chart, color: Colors.green, size: 28),
            Text("Progress"),
          ],
        ),
      ),
    ),

    Expanded(
      child: Container(
        height: 80,
         margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 192, 129, 36),
              blurRadius: 5,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.calendar_month , color: Colors.orange, size: 28),
            Text("Schedule"),
          ],
        ),
      ),
    ),

 
  ],// children

),


  const SizedBox(height: 30),

     const Text(
          "Continue Learning",
          style: TextStyle(
            fontSize: 22, 
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )
        ),  
  
 Card(
  child: Padding(
    padding: EdgeInsets.all(16),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start, //دي بتتحكم في العناصر من الشمال لل يمين 
      children: [

        ListTile(
          leading: Icon(Icons.book,color: Colors.purple, size: 28),
          title: Text("Flutter Basics"),
          subtitle: Text("Introduction to Flutter"),
          trailing: Text("60%"),
        ),

        LinearProgressIndicator(
          value: 0.6,
          backgroundColor: Colors.black12,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.deepPurple),
        ),

      ],
    ),
  ),
),
  

  const SizedBox(height: 30),
     const Text(
          "Upcoming",
          style: TextStyle(
            fontSize: 22, 
            fontWeight: FontWeight.bold,
            color: Colors.black,
          )
        ),  
  const SizedBox(height: 10),
 
 

 Card(
  margin: EdgeInsets.all(10),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12),
  ),
  child: ListTile(
    leading: Icon(
      Icons.calendar_month,
      color: Colors.orange,
      size: 28,
    ),
    title: Text(
      "Dart Programming",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
        color: Colors.black,
      ),
    ),
    subtitle: Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Text(
        "May 20, 2026  •  10:00 AM",
        style: TextStyle(
          fontSize: 13,
          color: Colors.grey,
        ),
      ),
    ),
    trailing: Icon(
      Icons.arrow_forward_ios_rounded,
      size: 30,
      color: Colors.grey,
    ),
  ),
)
 

    ], //  إغلاق الـ children الخاصة بالـ Column الرئيسي
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
 
 
 
 
 
 
 
     //  إغلاقـ Column الرئيسي
); // إغلاق الـ Scaffold (قوس عادى ثم فاصلة منقوطة)

  } //  إغلاق دالة الـ build
} // إغلاق الـ class الخاص بالـ HomeScreenFF

