import 'package:flutter/material.dart';
import '../widgets/buttons.dart';
import '../widgets/connections.dart';
import '../widgets/image_card.dart';
import '../widgets/private_data.dart';
import '../widgets/profile_info.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.only(top: 50),
      height: 400,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.topCenter,
        children: [
          const ProfileInfo(),
          const Connections(),
          const PrivateData(),
          Positioned(
            top: 300,
            width: 415,
            height: 500,
            child: Container(
              padding: const EdgeInsets.only(top: 30, right: 16, left: 16),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(45),
                  topLeft: Radius.circular(45),
                ),
              ),
              child: Column(
                children: [
                  const Text(
                    'Your photos',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  const SizedBox(height: 15),
                  const Divider(color: Colors.black),
                  const SizedBox(height: 30),
                  Wrap(
                    children: [
                      ImageCard(img: 'assets/images/OIP (8).jpg'),
                      ImageCard(img: 'assets/images/OIP (6).jpg'),
                      ImageCard(img: 'assets/images/OIP (4).jpg'),
                      ImageCard(img: 'assets/images/OIP (2).jpg'),
                      ImageCard(img: 'assets/images/OIP (5).jpg'),
                      ImageCard(img: 'assets/images/desktop-backgrounds-nawpic-25.jpg'),
                    ],
                  ),
                  const SizedBox(height: 100),
                  const Buttons(),
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
