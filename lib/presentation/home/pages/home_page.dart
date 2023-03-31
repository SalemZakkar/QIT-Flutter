import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qit_flutter/presentation/core/routes.dart';
import 'package:qit_flutter/presentation/settings/pages/settings_page.dart';

class HomePage extends StatefulWidget {
  static const routeName = "/home";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: (){
            context.router.navigateTo(context, SettingsPage.routeName);
          }, icon: const Icon(Icons.settings))
        ],
        title: Text("Our Products" , style: TextStyle(fontSize: 20.sp),),
      ),
    );
  }
}
