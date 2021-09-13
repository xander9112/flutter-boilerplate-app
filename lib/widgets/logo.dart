import 'package:flutter/material.dart';
import 'package:flutter_boilerplate_app/constants/constants.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset(Assets.images.logo));
  }
}
