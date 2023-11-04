import 'package:flutter/material.dart';
import 'package:tugas_angga/core.dart';
import 'package:tugas_angga/state_util.dart';
import '../controller/welcome_controller.dart';

class WelcomeView extends StatefulWidget {
  const WelcomeView({Key? key}) : super(key: key);

  Widget build(context, WelcomeController controller) {
    controller.view = this;

    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
              height: 310.0,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                    "https://images.unsplash.com/photo-1677031058176-000425075d04?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTk2fHxiYXNrZXQlMjBiYWxsJ3xlbnwwfHwwfHx8MA%3D%3D",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 30.0,
                    right: 16.0,
                    child: InkWell(
                      onTap: () => Get.to(const HomeView()),
                      child: const Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                transform: Matrix4.translationValues(0.0, -10, 0),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(
                      20.0,
                    ),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 30.0,
                      left: 50.0,
                      right: 50.0,
                      child: Column(
                        children: [
                          const Icon(
                            Icons.camera_alt_outlined,
                            color: Color(0xffA67C52),
                            size: 80.0,
                          ),
                          const Text(
                            "fotogrit",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Color(0xffA67C52),
                            ),
                          ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          const Text(
                            "Making Memories",
                            style: TextStyle(
                              fontSize: 26.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 6.0,
                          ),
                          Text(
                            "of Those Giving Their Best",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                              color: Colors.grey[800],
                            ),
                          ),
                          const SizedBox(
                            height: 28.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xffA67C52),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Sign up",
                                    style: TextStyle(
                                      color: Color(0xffFEE8D1),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              Expanded(
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                  ),
                                  onPressed: () => controller.doLogin(),
                                  child: const Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Color(0xffA67C52),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<WelcomeView> createState() => WelcomeController();
}
