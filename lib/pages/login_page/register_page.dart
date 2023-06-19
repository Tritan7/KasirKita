import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../models/user.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    super.key,
    this.user,
  });
  final User? user;

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  late TextEditingController _nameController;
  late TextEditingController _passwordController;
  late TextEditingController _businessNameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneNumberController;
  late TextEditingController _addressController;
  bool isVisiblePassword = false;
  late Size size;

  @override
  void initState() {
    _nameController = TextEditingController();
    _businessNameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _businessNameController = TextEditingController();
    _addressController = TextEditingController();
    _phoneNumberController = TextEditingController();

    if (widget.user != null) {
      _nameController.text = widget.user!.name;
      _businessNameController.text = widget.user!.businessName;
      _emailController.text = widget.user!.email;
      _passwordController.text = widget.user!.password;
      _phoneNumberController.text = widget.user!.phoneNumber;
      _addressController.text = widget.user!.address;
    }
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _businessNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _phoneNumberController.dispose();
    _addressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Color.fromARGB(255, 7, 11, 129)),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset(
                  "assets/image/kk.png",
                  width: size.width * 0.4,
                ),
              ),
              const SizedBox(
                height: 75,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Selamat Datang!",
                      style: TextStyle(
                        color: Color.fromARGB(255, 55, 89, 240),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Silahkan daftar untuk membuat akun",
                      style: TextStyle(
                        color: Color.fromARGB(255, 55, 89, 240),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 57,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const Text(
                        "Daftar",
                        style: TextStyle(
                          color: Color.fromARGB(255, 7, 11, 129),
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: _nameController,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                        decoration: const InputDecoration(
                          hintText: 'Nama',
                          hintStyle: TextStyle(
                            fontSize: 14,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _businessNameController,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                        decoration: const InputDecoration(
                          hintText: 'Nama Usaha',
                          hintStyle: TextStyle(
                            fontSize: 14,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _addressController,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                        decoration: const InputDecoration(
                          hintText: 'Alamat',
                          hintStyle: TextStyle(
                            fontSize: 14,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _phoneNumberController,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                        decoration: const InputDecoration(
                          hintText: 'No Handphone',
                          hintStyle: TextStyle(
                            fontSize: 14,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _emailController,
                        maxLines: null,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                        decoration: const InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            fontSize: 14,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: _passwordController,
                        maxLines: null,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                        decoration: const InputDecoration(
                          hintText: 'Kata Sandi',
                          hintStyle: TextStyle(
                            fontSize: 14,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      InkWell(
                        onTap: () {
                          GoRouter.of(context).goNamed("login");
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
                    ],
                  ),
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
                            GoRouter.of(context).goNamed('login');
                          },
                          child: const Text(
                            "Masuk",
                            style: TextStyle(
                              color: Color.fromARGB(255, 55, 89, 240),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 60,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: const [
                    Text(
                      "Copyright 2023 - KasirKita",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
