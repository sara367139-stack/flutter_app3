import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_application_1/feature/setting/settingScreen.dart';
import '../home/my_Home.dart';

class Analytics extends StatefulWidget {
  const Analytics({super.key});

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  int _currentIndex = 0;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  BarChartGroupData buildBarGroup(int x, double value, {bool isLast = false}) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: value,
          width: 20,
          borderRadius: BorderRadius.circular(4),
          color: isLast ? Colors.white : const Color(0x66FFFFFF),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Analytics'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(1),
            margin: const EdgeInsets.all(12),
            child: const CircleAvatar(
              backgroundColor: Color.fromARGB(255, 51, 80, 45),
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
      drawer: Drawer(
        backgroundColor: const Color(0xFF1E3A2F),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xFF4F8470),
                      child: Text(
                        'SM',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 12),
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sara',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 4),
                          Text(
                            'Mohamed',
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                buildDrawerItem('Home', Icons.home, () {}, isSelected: true),
                buildDrawerItem('Profile', Icons.person_outline, () {}),
                buildDrawerItem('Notifications', Icons.notifications_none, () {}),
                buildDrawerItem('Stats', Icons.bar_chart, () {}),
                buildDrawerItem('Schedule', Icons.calendar_today, () {}),
                buildDrawerItem('Settings', Icons.settings_outlined, () {}),
                const Spacer(),
                const Divider(color: Colors.white24),
                const SizedBox(height: 12),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Logged in as',
                    style: TextStyle(color: Colors.white60, fontSize: 13),
                  ),
                ),
                const SizedBox(height: 8),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'sara@smartgmail.io',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'This week',
                style: TextStyle(
                  color: Color.fromARGB(255, 92, 94, 92),
                  fontSize: 19,
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
                padding: const EdgeInsets.all(20),
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
                    const SizedBox(height: 12),
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
                    const SizedBox(height: 24),
                    SizedBox(
                      width: double.infinity,
                      height: 160,
                      child: BarChart(
                        BarChartData(
                          alignment: BarChartAlignment.spaceEvenly,
                          maxY: 12,
                          gridData: FlGridData(show: false),
                          borderData: FlBorderData(show: false),
                          titlesData: FlTitlesData(show: false),
                          barGroups: [
                            buildBarGroup(0, 2.5),
                            buildBarGroup(1, 4.2),
                            buildBarGroup(2, 3.0),
                            buildBarGroup(3, 6.0),
                            buildBarGroup(4, 4.8),
                            buildBarGroup(5, 5.5),
                            buildBarGroup(6, 3.2),
                            buildBarGroup(7, 7.5),
                            buildBarGroup(8, 5.0),
                            buildBarGroup(9, 4.0),
                            buildBarGroup(10, 6.8),
                            buildBarGroup(11, 8.0, isLast: true),
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 4),
                child: Text(
                  'Daily Breakdown',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              ...buildDailyBreakdownRows(),
              const SizedBox(height: 20),
              buildSettingsSection(
                children: [
                  buildSettingsTile(
                    title: 'AC Unit',
                    subtitle: 'Bedroom',
                    icon: Icons.air,
                    value: '9.8 kWh',
                    progress: 0.70,
                    onTap: () {},
                    showDivider: false,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              buildSettingsSection(
                children: [
                  buildSettingsTile(
                    title: 'Refrigerator',
                    subtitle: 'kitchen',
                    icon: Icons.power_settings_new,
                    value: '7.2 kWh',
                    progress: 0.55,
                    onTap: () {},
                    showDivider: false,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              buildSettingsSection(
                children: [
                  buildSettingsTile(
                    title: 'Lighting',
                    subtitle: 'All rooms',
                    icon: Icons.lightbulb,
                    value: '5.1 kWh',
                    progress: 0.42,
                    onTap: () {},
                    showDivider: false,
                  ),
                ],
              ),
              const SizedBox(height: 20),
              buildSettingsSection(
                children: [
                  buildSettingsTile(
                    title: 'Thermostat',
                    subtitle: 'Living room',
                    icon: Icons.power_settings_new,
                    value: '5.1 kWh',
                    progress: 0.35,
                    onTap: () {},
                    showDivider: false,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SettingScreen()),
          );
        },
        child: const Icon(Icons.arrow_forward_ios),
      ),
        bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: const Color.fromARGB(255, 51, 80, 45),
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          }
          );
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'Courses'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Progress'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }

  Widget buildDrawerItem(
    String title,
    IconData icon,
    VoidCallback onTap, {
    bool isSelected = false,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      decoration: BoxDecoration(
        color: isSelected ? Colors.white24 : null,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.white70),
        title: Text(
          title,
          style: TextStyle(
            color: isSelected ? Colors.white : Colors.white70,
            fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
          ),
        ),
        onTap: onTap,
      ),
    );
  }

  Widget buildSettingsSection({required List<Widget> children}) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(children: children),
    );
  }

  Widget buildSettingsTile({
    required String title,
    String? subtitle,
    required IconData icon,
    required VoidCallback onTap,
    bool showDivider = true,
      required String value,      // الرقم
       required double progress, // الشريط 
  }) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            child: Row(
              children: [
                Icon(icon, color: const Color(0xff4E7D6A)),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      if (subtitle != null) ...[
                        const SizedBox(height: 2),
                        Text(
                          subtitle,
                          style: const TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
                const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
              ],
            ),
          ),
          if (showDivider) const Divider(height: 1),
        ],
      ),
    );
  }

  List<Widget> buildDailyBreakdownRows() {
    final data = [
      {'day': 'Mon', 'value': 0.52, 'kWh': '5.2\nkWh'},
      {'day': 'Tue', 'value': 0.68, 'kWh': '6.8\nkWh'},
      {'day': 'Wed', 'value': 0.71, 'kWh': '7.1\nkWh'},
      {'day': 'Thu', 'value': 0.49, 'kWh': '4.9\nkWh'},
      {'day': 'Fri', 'value': 0.63, 'kWh': '6.3\nkWh'},
    ];

    return data.map((item) {
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
        child: Row(
          children: [
            SizedBox(
              width: 40,
              child: Text(
                item['day'] as String,
                style: const TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: LinearProgressIndicator(
                value: item['value'] as double,
                minHeight: 8,
                borderRadius: BorderRadius.circular(10),
                backgroundColor: Colors.grey.shade200,
                valueColor: const AlwaysStoppedAnimation(Color(0xff4E7D6A)),
              ),
            ),
            const SizedBox(width: 12),
            Text(item['kWh'] as String, textAlign: TextAlign.center),
          ],
        ),
      );
    }).toList();
  }
}