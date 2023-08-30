import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced/common/const/colors.dart';
import 'package:flutter_advanced/common/const/data.dart';
import 'package:flutter_advanced/common/layout/default_layout.dart';
import 'package:flutter_advanced/common/secure_storage/secure_storage.dart';
import 'package:flutter_advanced/common/view/root_tab.dart';
import 'package:flutter_advanced/user/view/login_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerWidget {
  static String get routeName => 'splash';
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultLayout(
      backgroundColor: primaryColor,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'asset/img/logo/logo.png',
              width: MediaQuery.of(context).size.width / 2,
            ),
            const SizedBox(height: 16.0),
            CircularProgressIndicator(
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
