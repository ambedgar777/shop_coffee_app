import 'package:coffee_app/model/product.dart';
import 'package:coffee_app/screens/details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categories = [
    'Cappuccino',
    'Latte',
    'Starbucks',
    'Espresso',
    'Cold Coffee'
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //APP BAR
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/icons/menu.png',
                          color: Theme.of(context).colorScheme.tertiary,
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image.asset(
                          fit: BoxFit.cover,
                          'assets/images/profile.jpg',
                          height: 20,
                          width: 20,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 30),

                //HEADER
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Great coffee \nanytime anywhere!',
                        style: GoogleFonts.abel(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),

                //SEARCH BAR
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: TextField(
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.onTertiary,
                      ),
                      cursorColor: Theme.of(context).colorScheme.tertiary,
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        prefixIcon: Icon(
                          Icons.search,
                          size: 24,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        hintText: 'Search for your coffee..',
                        hintStyle: GoogleFonts.abel(
                          color: Theme.of(context).colorScheme.tertiary,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),

                //CATEGORIES
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 20),
                  child: SizedBox(
                    height: 40,
                    child: ListView.builder(
                      itemCount: 5,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedIndex = index;
                            });
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              children: [
                                Text(
                                  categories[index],
                                  style: GoogleFonts.abel(
                                    fontSize: 18,
                                    color: selectedIndex == index
                                        ? Theme.of(context)
                                            .colorScheme
                                            .onTertiary
                                        : Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                  ),
                                ),
                                Container(
                                  height: 5,
                                  width: 5,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: selectedIndex == index
                                        ? Theme.of(context)
                                            .colorScheme
                                            .onTertiary
                                        : Colors.transparent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                //Recommendation
                SizedBox(
                  height: 240,
                  //color: Colors.blue,
                  child: ListView.builder(
                    itemCount: products.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Container(
                          width: 150,
                          decoration: BoxDecoration(
                            color: Theme.of(context).colorScheme.primary,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.asset(products[index].imagePath),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                      text: products[index].name,
                                      style: GoogleFonts.abel(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '\n${products[index].shopName}',
                                      style: GoogleFonts.abel(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .tertiary,
                                      ),
                                    ),
                                  ]),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '\$${products[index].price.toString()}',
                                      style: GoogleFonts.abel(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onSecondary,
                                      ),
                                    ),
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: Center(
                                        child: Icon(
                                          Icons.add,
                                          size: 18,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .tertiary,
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                //SPECIAL FOR YOU
                SizedBox(height: 20),
                Text(
                  'Special for you',
                  style: GoogleFonts.abel(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSecondary,
                  ),
                ),
                SizedBox(height: 20),
                ListView.builder(
                    itemCount: products.length,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Hero(
                          tag: '${products[index].id}',
                          child: Container(
                              height: 140,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: Theme.of(context).colorScheme.primary,
                                  borderRadius: BorderRadius.circular(30)),
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Container(
                                      height: 110,
                                      width: 110,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(18),
                                        image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              products[index].imagePath),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        products[index].name,
                                        style: GoogleFonts.abel(
                                          fontSize: 32,
                                          fontWeight: FontWeight.bold,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .onSecondary,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            '\$${products[index].price.toString()}',
                                            style: GoogleFonts.abel(
                                              fontSize: 24,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondary,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          const SizedBox(width: 50),
                                          GestureDetector(
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      DetailsScreen(
                                                    product: products[index],
                                                  ),
                                                ),
                                              );
                                            },
                                            child: Container(
                                              height: 50,
                                              width: 100,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(18),
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onTertiary,
                                              ),
                                              child: Center(
                                                child: Text(
                                                  'Buy Now',
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .onSecondary,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              )),
                        ),
                      );
                    }),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
