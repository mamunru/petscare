import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get_storage/get_storage.dart';
import 'package:petscare/config/colors.dart';
import 'package:petscare/controller/initController.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    GetStorage _box = GetStorage();
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Hay Mamun'),
          titleTextStyle: TextStyle(fontSize: 14),
          actions: [
            InkWell(
              child: Text(
                _box.read('language') == 'en' ? 'English' : 'বাংলা',
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                InitController initController = Get.find<InitController>();
                GetStorage _box = GetStorage();
                initController.changeLanguage(
                  _box.read('language') == 'bn' ? 'en' : 'bn',
                );
              },
            ),
            SizedBox(width: 10),
          ],
        ),
        body: Container(
          child: Center(
            child: InkWell(
              onTap: () {
                InitController initController = Get.find<InitController>();
                GetStorage _box = GetStorage();
                initController.changeLanguage(
                  _box.read('language') == 'bn' ? 'en' : 'bn',
                );
              },
              child: Text('title'.tr),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          color: MyColors.primaryColor,
          height: 60,
          width: Get.width,
          child: TabBar(
            onTap: (index) {
              // Handle tab change if needed
              print(index);
            },
            tabs: [
              Tab(text: 'Home', icon: FaIcon(FontAwesomeIcons.house)),
              Tab(text: 'Descover', icon: FaIcon(FontAwesomeIcons.house)),
              Tab(text: 'Location', icon: FaIcon(FontAwesomeIcons.house)),
              Tab(text: 'Profile', icon: FaIcon(FontAwesomeIcons.person)),
            ],
          ),
        ),
      ),
    );
  }
}
