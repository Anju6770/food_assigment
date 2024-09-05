import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_assigment/1signup_log_page/Otp.dart';
import 'package:food_assigment/1signup_log_page/Register_page.dart';
import 'package:food_assigment/1signup_log_page/landing.dart';
import 'package:food_assigment/1signup_log_page/login.dart';
import 'package:food_assigment/Food%20pages/Home_page.dart';
import 'package:food_assigment/Food%20pages/Splash.dart';
import 'package:food_assigment/Food%20pages/buttom.dart';
import 'package:food_assigment/Food%20pages/cart.dart';
import 'package:food_assigment/Food%20pages/phone_page.dart';
import 'package:food_assigment/Food%20pages/rating_page.dart';
import 'package:food_assigment/State_class/binding_class.dart';
import 'package:food_assigment/firebase_options.dart';
import 'package:get/get.dart';

import 'Food pages/feature_detai;s.dart';
import 'Food pages/orders.dart';

Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/buttom',
      getPages: [
        GetPage(name: '/splash', page:()=>Splash()),
        GetPage(name: '/signup', page: () => signup(), binding: BindingClass(),),
        GetPage(name: '/otp', page: () => Otp()),
        GetPage(name: '/register', page: () => register()),
        GetPage(name: '/login', page: () => login()),
        GetPage(name: '/phone', page: () => phone()),
        GetPage(name: '/buttom', page: () => buttom(), binding: BindingClass(),),
        GetPage(name: '/detail_food', page: () => DetailFood(addModel: Get.arguments, hotelclass: Get.arguments,), binding: BindingClass(),),
        GetPage(name: '/cart', page: ()=>cart()),
        GetPage(name: '/rating', page: ()=>rating()),
        GetPage(name: '/order', page: ()=>orders())
      ],
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
