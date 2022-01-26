import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:to_do_list/app/modules/home/models/collection.dart';

import '../../../config/constants/app_constant.dart';
import '../controllers/home_controller.dart';
import '../pages/details.dart';
import '../pages/home.dart';

class HomeView extends StatelessWidget {
  final HomeController controller = Get.put(HomeController());
  final Collection collection = Collection(title: "My Task");

  @override
  Widget build(BuildContext context) {
    return Material(
      child: PageView(
        controller: AppConstant.pageController,
        children: [
          Home(controller: controller),
          Details(controller: controller, collection: collection),
        ],
      ),
    );
  }
}
