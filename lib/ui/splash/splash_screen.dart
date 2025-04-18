import 'package:flutter/material.dart';
import 'package:myapp/ui/_core/app_colors.dart';
import 'package:myapp/ui/home/home_screen.dart';

class SlpashScreen extends StatelessWidget {
  const SlpashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Stack(
        children: [
          Image.asset('assets/banners/banner_splash.png'),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Column(
                spacing: 32,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logo.png', width: 192),
                  Column(
                    children: [
                      Text(
                        'Um parceiro inovador para a sua',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      Text(
                        'melhor experiência culinária!',
                        style: TextStyle(color: AppColors.mainColor, fontSize: 22, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(onPressed: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
                        return HomeScreen();
                      }));
                      }, child: Text("Bora!")),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
