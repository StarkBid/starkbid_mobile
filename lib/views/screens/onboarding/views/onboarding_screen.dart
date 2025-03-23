import 'package:flutter/material.dart';

import 'connect_wallet_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFF0D1216),
      body: Stack(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: screenHeight * 0.65,
                    decoration: const BoxDecoration(
                      color: Color(0xFF7F56D9),
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage(
                          'assets/images/onboarding_background_image.png',
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: screenHeight * 0.65,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Colors.transparent,
                          Color(0xFF0D1216),
                        ],
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  const Spacer(),
                  const Text(
                    'The Future of NFT Auctions Starts Here',
                    style: TextStyle(
                      fontSize: 32,
                      height: 1.18,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'Join a next-gen marketplace where art meets competition. Place your bids and own unique digital pieces.',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withAlpha(178),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  ElevatedButton(
                    style: ButtonStyle(
                      shape: WidgetStatePropertyAll(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      backgroundColor: const WidgetStatePropertyAll(
                        Color(0xFF7F56D9),
                      ),
                      minimumSize: const WidgetStatePropertyAll(
                        Size(
                          double.infinity,
                          48,
                        ),
                      ),
                      maximumSize: const WidgetStatePropertyAll(
                        Size(
                          double.infinity,
                          48,
                        ),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder:(context)=>const ConnectWalletPage ()));
                    },
                    child: const Text(
                      'Connect Wallet',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  TextButton(
                    style: const ButtonStyle(
                      minimumSize: WidgetStatePropertyAll(
                        Size(
                          double.infinity,
                          48,
                        ),
                      ),
                      maximumSize: WidgetStatePropertyAll(
                        Size(
                          double.infinity,
                          48,
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Other Options',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white.withAlpha(178),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
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
