import 'package:flutter/material.dart';
import 'package:islami/tabs/setting/showlanguagesheetwidget.dart';
import 'package:islami/tabs/setting/showthemsheet.dart';
import 'package:provider/provider.dart';

import '../../provides/my_provides.dart';
class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    var lang = provider.languageCode;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Language",
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500),
          ),
          InkWell(
            onTap: () {
              showLanguageSheet();
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  provider.languageCode == "en" ? "English" : "عربي",
                  style: TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .03,
          ),
          Text(
            "Theming",
            style:const TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500),
          ),
          InkWell(
            onTap: () {
              showThemeSheet();
            },
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Theme.of(context).primaryColor)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  provider.themeMode == ThemeMode.light ? "Light" : "Dark",
                  style: const TextStyle(
                      fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void showLanguageSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ShowLanguageSheetWidget();
      },
    );
  }

  void showThemeSheet() {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return ShowThemeSheetWidget();
      },
    );
  }
}