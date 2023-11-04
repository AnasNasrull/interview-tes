import 'package:flutter/material.dart';
import 'package:tugas_angga/core.dart';
import '../controller/login_controller.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text(""),
        actions: const [],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(0.0),
            child: Column(
              children: [
                Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                  ),
                ),
                Container(
                  transform: Matrix4.translationValues(0.0, -10, 0),
                  height: 130.0,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16.0),
                        topRight: Radius.circular(16.0)),
                  ),
                  child: Container(
                    transform: Matrix4.translationValues(0.0, -30, 0),
                    padding: const EdgeInsets.all(20.0),
                    width: 100.0, // Atur lebar sesuai kebutuhan
                    height: 100.0, // Atur tinggi sesuai kebutuhan
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle, // Atur bentuk menjadi lingkaran
                      color: Colors.white, // Atur warna sesuai kebutuhan
                    ),
                    child: Column(
                      children: [
                        Container(
                          child: const Icon(
                            Icons.camera_alt_outlined,
                            size: 70.0,
                            color: Color(0xffA67C52),
                          ),
                        ),
                        const Text(
                          "fotogrid",
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xffA67C52),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const Text(
                        "Login",
                        style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff000000)),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      TextFormField(
                        initialValue: '',
                        decoration: InputDecoration(
                          labelText: 'Email/Phone number',
                          labelStyle: const TextStyle(
                            color: Colors.blueGrey,
                          ),

                          suffixIcon: const Icon(
                            Icons.email,
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          filled: true, // Mengaktifkan latar belakang terisi
                          fillColor: Colors.grey[200], // Warna latar belakang
                          helperText: '',
                        ),
                        onChanged: (value) {
                          controller.email = value;
                        },
                      ),
                      TextFormField(
                        initialValue: '',
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'Password',
                          labelStyle: const TextStyle(
                            color: Colors.blueGrey,
                          ),
                          suffixIcon: const Icon(
                            Icons.password,
                          ),
                          enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Colors.blueGrey,
                            ),
                          ),
                          filled: true, // Mengaktifkan latar belakang terisi
                          fillColor: Colors.grey[200], // Warna latar belakang
                          helperText: '',
                        ),
                        onChanged: (value) {
                          controller.password = value;
                        },
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xffA67C52),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          onPressed: () => controller.doLogin(),
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              color: Color(0xffFEE8D1),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      const Text(
                        "Forgot Password?",
                        style: TextStyle(
                          fontSize: 12.0,
                          color: Color(0xffA67C52),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
