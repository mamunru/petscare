import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get_storage/get_storage.dart';
import 'package:petscare/config/colors.dart';
import 'package:petscare/controller/dashboardController.dart';
import 'package:petscare/controller/initController.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    GetStorage box = GetStorage();
    return DefaultTabController(
      length: 4,
      child: GetBuilder<DashboardController>(
        builder: (dashboardcontroller) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Hay Mamun'),
              titleTextStyle: TextStyle(fontSize: 14),
              actions: [
                InkWell(
                  child: Text(
                    box.read('language') == 'en' ? 'English' : 'বাংলা',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    InitController initController = Get.find<InitController>();
                    GetStorage box = GetStorage();
                    initController.changeLanguage(
                      box.read('language') == 'bn' ? 'en' : 'bn',
                    );
                  },
                ),
                SizedBox(width: 10),
              ],
            ),
            body: Container(
              child: Center(
                child: TabBarView(
                  physics: BouncingScrollPhysics(),
                  children: [
                    Center(child: Text('Home')),
                    Center(child: Text('Discover')),
                    Center(child: Text('Location')),
                    Center(child: Text('Profile')),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: Container(
              color: MyColors.primaryColor,
              height: 60,
              width: Get.width,
              child: TabBar(
                indicator: BoxDecoration(),

                indicatorWeight: .01,
                unselectedLabelColor: Colors.white,
                onTap: (index) {
                  dashboardcontroller.onTabTapped(index);
                  print(index);
                },
                tabs: [
                  Tab(
                    icon: FaIcon(
                      FontAwesomeIcons.house,
                      color: dashboardcontroller.selectedIndex == 0
                          ? const Color.fromARGB(255, 9, 41, 248)
                          : Colors.white,
                    ),
                    child: Text(
                      'Home',
                      style: TextStyle(
                        color: dashboardcontroller.selectedIndex == 0
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                  ),
                  Tab(
                    icon: FaIcon(
                      FontAwesomeIcons.blog,
                      color: dashboardcontroller.selectedIndex == 1
                          ? const Color.fromARGB(255, 9, 41, 248)
                          : Colors.white,
                    ),
                    child: Text(
                      'Descover',
                      style: TextStyle(
                        color: dashboardcontroller.selectedIndex == 1
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                  ),
                  Tab(
                    icon: FaIcon(
                      FontAwesomeIcons.locationDot,
                      color: dashboardcontroller.selectedIndex == 2
                          ? const Color.fromARGB(255, 9, 41, 248)
                          : Colors.white,
                    ),
                    child: Text(
                      'Location',
                      style: TextStyle(
                        color: dashboardcontroller.selectedIndex == 2
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                  ),
                  Tab(
                    icon: FaIcon(
                      FontAwesomeIcons.circleUser,
                      color: dashboardcontroller.selectedIndex == 3
                          ? const Color.fromARGB(255, 9, 41, 248)
                          : Colors.white,
                    ),
                    child: Text(
                      'Profile',
                      style: TextStyle(
                        color: dashboardcontroller.selectedIndex == 3
                            ? Colors.black
                            : Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
