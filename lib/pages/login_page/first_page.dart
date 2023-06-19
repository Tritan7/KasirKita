// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/image/kk.png',
              width: size.width * 0.4,
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                GoRouter.of(context).pushNamed("register");
              },
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: 85,
                      right: 85,
                    ),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 55, 89, 240),
                      borderRadius: BorderRadius.circular(4),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.6),
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: const Text(
                      "Daftar",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Sudah punya akun?",
                        style: TextStyle(
                          color: Color.fromARGB(255, 55, 89, 240),
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      InkWell(
                        onTap: () {
                          GoRouter.of(context).pushNamed('login');
                        },
                        child: const Text(
                          "Masuk",
                          style: TextStyle(
                              color: Color.fromARGB(255, 55, 89, 240),
                              fontWeight: FontWeight.bold,),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
