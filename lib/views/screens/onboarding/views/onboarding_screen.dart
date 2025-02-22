import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: [
                const Spacer(),
                const Text(
                  'The Future of NFT Auctions Starts Here',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.w800,
                    color: Colors.white,
                  ),
                ),
                const Text(
                  'Join a next-gen marketplace where art meets competition. Place your bids and own unique digital pieces.',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
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
                  onPressed: () {},
                  child: const Text(
                    'Connect Wallet',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                ElevatedButton(
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
                    backgroundColor: WidgetStatePropertyAll(
                      Colors.transparent,
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
      ),
    );
  }
}
