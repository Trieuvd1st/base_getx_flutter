import 'package:flutter/material.dart';
import '../../controllers/home_controller.dart';

import '../../base/base_view_view_model.dart';

class HomeScreen extends BaseView<HomeController> {
  @override
  Widget vBuilder() => Scaffold(
        appBar: AppBar(
          title: Text('hello'.tr),
        ),
        body: Container(
          child: Column(children: [
            Center(child: Obx(() => Text('${controller.count.value}'))),
            SizedBox(
              height: 24,
            ),
            Center(
                child: Obx(() => Text(
                    '${controller.dataDefault?.value?.countriesRoute?.name ?? ""}'))),
          ]),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            // controller.increment();
            var body = {"Email": "test@test.com", "Subscription": "basic"};
            controller.onCreateAccessKey(body);
          },
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
      );
}
