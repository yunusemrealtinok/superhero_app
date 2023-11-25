import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:superhero_app/app/modules/home/views/home_view.dart';

import '../../favorites/views/favorites_view.dart';
import '../controllers/tabbar_controller.dart';

class TabbarView extends GetView<TabbarController> {
  const TabbarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 6.h,
          bottom: const TabBar(
            tabs: [
              Tab(
                icon: Icon(
                  Icons.home,
                  color: Colors.blue,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.star,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
        resizeToAvoidBottomInset: false,
        body: const TabBarView(
          children: [
            HomeView(),
            FavoritesView(),
          ],
        ),
      ),
    );
  }
}
