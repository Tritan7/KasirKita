// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tugas_besar/pages/login_page/first_page.dart';
import 'package:tugas_besar/pages/login_page/login_page.dart';
import 'package:tugas_besar/pages/login_page/register_page.dart';
import 'package:tugas_besar/pages/product_page/add_product_page.dart';

import '../pages/homepage/homepage.dart';
import '../pages/splash_screen/splashscreen.dart';

class AppRoutes {
  static const String splash = 'splash';
  static const home = 'home';
  static const firstPage = 'first-page';
  static const register = 'register';
  static const login = 'login';
  static const addProduct = 'add-product';

  static Page _splashScreenBuilder(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: SplashScreen(),
    );
  }

  static Page _firstPageBuilder(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: FirstPage(),
    );
  }

  static Page _registerPageBuilder(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: RegisterPage(),
    );
  }

  static Page _loginPageBuilder(BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: LoginPage(),
    );
  }

  static Page _addProductPageBuilder(
      BuildContext context, GoRouterState state) {
    return const MaterialPage(
      child: AddProductPage(),
    );
  }

  static Page _homePageBuilder(
    BuildContext context,
    GoRouterState state,
  ) {
    return const MaterialPage(
      child: HomePage(),
    );
  }

  static GoRouter goRouter = GoRouter(
    routes: [
      GoRoute(
        name: splash,
        path: '/',
        pageBuilder: _splashScreenBuilder,
      ),
      GoRoute(
        name: firstPage,
        path: '/firstPage',
        pageBuilder: _firstPageBuilder,
      ),
      GoRoute(
        name: register,
        path: '/registerPage',
        pageBuilder: _registerPageBuilder,
      ),
      GoRoute(
        name: login,
        path: '/loginPage',
        pageBuilder: _loginPageBuilder,
      ),
      GoRoute(
        path: '/home',
        name: home,
        pageBuilder: _homePageBuilder,
        routes: [
          GoRoute(
            path: 'add-product',
            name: addProduct,
            pageBuilder: _addProductPageBuilder,
          ),
        ],
      ),
    ],
  );
}
