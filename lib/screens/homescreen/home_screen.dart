import 'package:flutter/material.dart';
import 'package:watts_clone/consts/const.dart';
import 'package:watts_clone/consts/strings.dart';
import 'package:watts_clone/fcm_service/send_method.dart';
import 'package:watts_clone/screens/homescreen/components/drawer_component.dart';
import 'components/appbar_component.dart';
import 'components/tabbar_component.dart';
import 'components/tabbarview_component.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key, this.data = 'null'});
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final String? data;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          key: scaffoldKey,
          drawer: drawerWidget(),
          floatingActionButton: FloatingActionButton(
            backgroundColor: grey,
            onPressed: () {
              SendMethod.sendNotification('Title', 'message from user',
                  'fS0pA-fHTwG-pi7XGSw2I2:APA91bGRRAkShZ6ZVOY5kSQYme_5rVKpb9632CZssfpCtPEuwb0THvUgepxqRbThBrv_b_QyUOiaoHLhGnn4E_CGPA8_3MlVFxqLxmKTBnyVgXSkT8MBrSimMBETwHhmQXSthOq2ALKF');
              // Get.to(() => AllUsers(), transition: Transition.downToUp);
            },
            child: Text('$data'),
            // child: const Icon(
            //   Icons.message,
            //   color: white,
            // ),
          ),
          backgroundColor: black,
          body: Column(
            children: [
              appBarWidget(scaffoldKey),
              Expanded(
                child: Column(
                  children: [
                    tabbarWidget(),
                    tabbarViewWidget(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
