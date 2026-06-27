import 'package:flutter/material.dart';
import 'package:flutter_application_1/feature/profile/Profile.dart';
//import '../home/profile/Profile.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  int _currentIndex = 0;
  bool notificationsEnabled = true;
  bool darkModeEnabled = false;
  bool soundEffectsEnabled = true;
  bool locationEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(218, 255, 255, 255),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Settings'),
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
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
                buildDrawerItem(
                  'Notifications',
                  Icons.notifications_none,
                  () {},
                ),
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
          padding: const EdgeInsets.all(16.0),
           child: SingleChildScrollView(
           child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              greenContainerForImage(),
              const SizedBox(height: 20),
            buildSectionTitle('ACCOUNT'),
              buildSettingsSection(
                children: [
                  buildSettingsTile(
                    title: 'Edit Profile',
                    subtitle: 'Sara Mohamed',
                    icon: Icons.person_outline,
                    onTap: () {},
                  ),
                  buildSettingsTile(
                    title: 'Privacy',
                    subtitle: 'Manage your data',
                    icon: Icons.remove_red_eye_outlined,
                    onTap: () {},
                  ),
                  buildSettingsTile(
                    title: 'Security',
                    subtitle: 'Password - 2FA enabled',
                    icon: Icons.shield_outlined,
                    onTap: () {},
                    showDivider: false,
                  ),
                ],
              ),
              const SizedBox(height: 22),
            buildSectionTitle('PREFERENCES'),
              buildSettingsSection(
                children: [
                  buildSettingsTile(
                    title: 'Notifications',
                    subtitle: 'Alerts & reminders',
                    icon: Icons.notifications_none,
                    switchValue: notificationsEnabled,
                    onSwitchChanged: (value) {
                      setState(() => notificationsEnabled = value);
                    },
                  ),
                  buildSettingsTile(
                    title: 'Dark Mode',
                    subtitle: 'Switch appearance',
                    icon: Icons.dark_mode_outlined,
                    switchValue: darkModeEnabled,
                    onSwitchChanged: (value) {
                      setState(() => darkModeEnabled = value);
                    },
                  ),
                  buildSettingsTile(
                    title: 'Sound Effects',
                    subtitle: 'Device feedback tones',
                    icon: Icons.volume_up_outlined,
                    switchValue: soundEffectsEnabled,
                    onSwitchChanged: (value) {
                      setState(() => soundEffectsEnabled = value);
                    },
                  ),
                  buildSettingsTile(
                    title: 'Location',
                    subtitle: 'Used for automations',
                    icon: Icons.language_outlined,
                    switchValue: locationEnabled,
                    onSwitchChanged: (value) {
                      setState(() => locationEnabled = value);
                    },
                    showDivider: false,
                  ),
                ],
              ),
              const SizedBox(height: 22),
             
            buildSectionTitle('SYSTEM'),
              buildSettingsSection(
                children: [
                  buildSettingsTile(
                    title: 'Connected Devices',
                    subtitle: '12 devices paired',
                    icon: Icons.phone_android,
                    onTap: () {},
                  ),
                  buildSettingsTile(
                    title: 'Wi-Fi & Network',
                    subtitle: 'HomeNet_5G',
                    icon: Icons.wifi,
                    onTap: () {},
                  ),
                  buildSettingsTile(
                    title: 'Help & Support',
                    subtitle: 'FAQs and contact',
                    icon: Icons.help_outline,
                    onTap: () {},
                  ),
                  buildSettingsTile(
                    title: 'About',
                    subtitle: 'Version 2.4.1',
                    icon: Icons.info_outline,
                    onTap: () {},
                    showDivider: false,
                  ),
               
                ],

              ),
              const SizedBox(height: 22),
            buildSectionTitle('Settings'),
               buildSettingsSection(
                children: [
                  buildSettingsTile(
                    title: 'Sign Out ',
                    subtitle: 'Sara Mohamed ',
                    icon: Icons.logout_outlined,
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
            MaterialPageRoute(builder: (context) => const Profile()),
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

  Widget greenContainerForImage() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF1E3A2F),
        borderRadius: BorderRadius.circular(32.0),
      ),
      padding: const EdgeInsets.all(20.0),
      child: Row(
        children: [
          Stack(
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: const NetworkImage(
                  'https://tse3.mm.bing.net/th/id/OIP.2aNvbH0sqFK0UhDcv9WXEAHaHa?rs=1&pid=ImgDetMain&o=7&rm=3',
                ),
                backgroundColor: Colors.grey[200],
              ),
              Positioned(
                bottom: 2,
                right: 2,
                child: Container(
                  width: 12,
                  height: 12,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2ECC71),
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFF1E3A2F),
                      width: 2.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Sara Mohamed',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  'sara@smartgmail.io',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 13,
                  ),
                ),
              ],
            ),
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: Colors.white.withOpacity(0.4),
            size: 16,
          ),
        ],
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 10),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 13,
          fontWeight: FontWeight.bold,
          letterSpacing: 0.8,
        ),
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
    required String subtitle,
    required IconData icon,
    VoidCallback? onTap,
    bool? switchValue,
    ValueChanged<bool>? onSwitchChanged,
    bool showDivider = true,
  }) {
    final bool hasSwitch = switchValue != null && onSwitchChanged != null;

    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          leading: Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: const Color(0xFFF1F2ED),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: const Color(0xFF1E3A2F)),
          ),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          subtitle: Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              subtitle,
              style: const TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ),
          trailing: hasSwitch
              ? Switch(
                  value: switchValue!,
                  activeColor: Colors.white,
                  activeTrackColor: const Color(0xFF1E3A2F),
                  onChanged: onSwitchChanged!,
                )
              : const Icon(Icons.chevron_right, color: Colors.grey),
          onTap: hasSwitch ? null : onTap,
        ),
        if (showDivider)
          const Padding(
            padding: EdgeInsets.only(left: 84),
            child: Divider(height: 1),
          ),
      ],
    );
  }
}
