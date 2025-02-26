import 'dart:ui';

import 'package:flutter/material.dart';



class ConnectWalletPage extends StatelessWidget {
  const ConnectWalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        Positioned.fill(
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Image.asset(
              "assets/images/onboarding_background_image.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SingleChildScrollView(
            child: Dialog(
              backgroundColor: const Color(0xff0D1216
              ),
              insetPadding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(topLeft: Radius.circular(22), topRight: Radius.circular(22)),
              ),
              child: Container(
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.fromLTRB(20, 16, 20, 20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Connect Wallet",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w800,

                          ),
                        ),
                        InkWell(
                          onTap: () => Navigator.of(context).pop(),
                          child: const Padding(
                            padding: EdgeInsets.all(2),
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    walletOption("Argent", "assets/images/argent.png", () {
                      // Navigator.push(context, MaterialPageRoute(builder:(context)=>const MetadataPage ()));
                    }),
                    const SizedBox(height: 12),
                    walletOption("Metamask", "assets/images/metadata.png", () {}),
                    const SizedBox(height: 12),
                    walletOption("Braavos", "assets/images/Braavos.png", () {}),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget walletOption(String name, String imagePath, Function onTap) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        decoration: BoxDecoration(
          color: const Color(0xff0D1216),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                //color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Image.asset(
                  imagePath,
                  width: 32,
                  height: 32,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(width: 12),
            Text(
              name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w600,

              ),
            ),],
        ),
      ),
    );
  }
}


