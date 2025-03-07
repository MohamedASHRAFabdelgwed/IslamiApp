import 'package:flutter/material.dart';

import 'Utilits/dark_them.dart';
import 'tabs/hadeth/hadeth_tab.dart';
import 'tabs/quran/quran.dart';
import 'tabs/radio/radio.dart';
import 'tabs/sebha/sebha_tab.dart';
import 'tabs/setting/setting_screen.dart';
class HomeScreen extends StatefulWidget {
  static const String route = "splashscren";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    List<BottomNavigationBarItem> items = [
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).primaryColor,
        icon: ImageIcon(
          AssetImage('assets/icons/quran.png'),
        ),
        label: 'القرآن',
      ),
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).primaryColor,
        icon: ImageIcon(
          AssetImage('assets/icons/hadeth.png'),
        ),
        label: 'الحديث',
      ),
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).primaryColor,
        icon: ImageIcon(
          AssetImage('assets/icons/sebha.png'),
        ),
        label: 'السبحة',
      ),
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).primaryColor,
        icon: ImageIcon(
          AssetImage('assets/icons/radio.png'),
        ),
        label: 'الراديو',
      ),
      BottomNavigationBarItem(
        backgroundColor: Theme.of(context).primaryColor,
        icon: Icon(Icons.settings),
        label: 'الاعدادات',
      ),
    ];
    List<Widget> tabs = [
      Quran(),
      Hadeth(),
      TasbehTab(),
      RadioTab(),
      SettingScreen(),
    ];
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(DarkThem.isDark
                  ? 'assets/images/dark.png'
                  : 'assets/images/bglight.png'),
              fit: BoxFit.fill)),
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
              'إسلامي',
            ),
          ),
          body: tabs[selected],
          bottomNavigationBar: BottomNavigationBar(
            items: items,
            currentIndex: selected,
            onTap: (index) {
              selected = index;
              setState(() {});
            },
          ),
        ),
      ),
    );
  }
}
