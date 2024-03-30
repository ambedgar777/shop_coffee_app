import 'package:coffee_app/components/persistent_nav_bar.dart';
import 'package:coffee_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_circular_text/circular_text.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                fit: BoxFit.cover,
                opacity: 0.5,
                image: AssetImage(
                  'assets/images/cover.jpg',
                ),
              ),
            ),
          ),
          Positioned(
            top: 50,
            left: 50,
            right: 50,
            child: Image.asset(
              'assets/images/coffee.png',
              color: Theme.of(context).colorScheme.secondary,
              height: 120,
            ),
          ),
          Positioned(
            top: 200,
            left: 20,
            bottom: 30,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: 'Enjoy \npremium coffee \nwith of ',
                      style: GoogleFonts.abel(
                        color: Theme.of(context).colorScheme.onSecondary,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                        letterSpacing: 1.5,
                      )),
                  TextSpan(
                      text: 'Coolest ',
                      style: GoogleFonts.abel(
                        color: Theme.of(context).colorScheme.secondary,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                        letterSpacing: 1.5,
                      )),
                  TextSpan(
                    text: '\nof flavours',
                    style: GoogleFonts.abel(
                      color: Theme.of(context).colorScheme.onSecondary,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      height: 1.2,
                      letterSpacing: 1.5,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 360,
            left: 20,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text:
                        'Crema is produced when water, \nplaced under high pressure',
                    style: GoogleFonts.abel(
                      fontSize: 18,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 450,
            right: 0,
            child: Stack(
              children: [
                CircularText(
                  radius: 70,
                  children: [
                    TextItem(
                      startAngle: 100,
                      text: Text(
                        'Start to order your coffee'.toUpperCase(),
                        style: GoogleFonts.abel(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: 30,
                  left: 30,
                  child: Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.onTertiary,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => PersistentTabScreen(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Theme.of(context).colorScheme.onSecondary,
                        size: 18,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 20,
            left: 80,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Featured Today'.toString(),
                    style: GoogleFonts.abel(
                      fontSize: 18,
                      letterSpacing: 1.2,
                      color: Theme.of(context).colorScheme.tertiary,
                    ),
                  ),
                  TextSpan(
                    text: '.Express'.toString(),
                    style: GoogleFonts.abel(
                      fontSize: 18,
                      letterSpacing: 1.2,
                      color: Theme.of(context).colorScheme.onSecondary,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
