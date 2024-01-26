import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magazine/route.dart';
import 'package:magazine/utils/constants.dart';


class SPlashScreen extends StatelessWidget {
  const SPlashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future(() async {
      await Future.delayed(const Duration(seconds: 2));
      AppRouter.router.goNamed(Routes.searchNamedPage);
    });
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
          child: Image.asset(
        "assets/images/example.png",
        width: 180,
            height: 180,
      )),
    );
  }
}
