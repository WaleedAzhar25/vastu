import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vastu/views/authControllers/signUpView.dart';
import 'utils/size-config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            SizeConfig().init(constraints, orientation);
            return GetMaterialApp(
              useInheritedMediaQuery: true,

              theme: ThemeData(
                  scaffoldBackgroundColor: const Color(0xffF3F5F6),
                  fontFamily: 'Roboto'
              ),
              debugShowCheckedModeBanner: false,

              home:  SignUpView(),
            );
          },
        );
      },
    );
  }
}


