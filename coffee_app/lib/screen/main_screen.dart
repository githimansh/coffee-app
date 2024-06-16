import 'package:coffee_app/constants.dart';
import 'package:coffee_app/models/products.dart';
import 'package:coffee_app/screen/product_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int segmentedControlGroupValue = 0;
  bool _showBadge = true;
  final Map<int, Widget> myTabs = const <int, Widget>{
    0: Text(
      "Top",
      style: TextStyle(
          color: IconColor, fontSize: 12, fontWeight: FontWeight.w600),
    ),
    1: Text(
      "Out order",
      style: TextStyle(
          color: IconColor, fontSize: 12, fontWeight: FontWeight.w600),
    ),
    2: Text(
      "Recommend",
      style: TextStyle(
          color: IconColor, fontSize: 12, fontWeight: FontWeight.w600),
    ),
    3: Text(
      "Newest",
      style: TextStyle(
          color: IconColor, fontSize: 12, fontWeight: FontWeight.w600),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ClipOval(
                      child: SizedBox(
                        height: 50,
                        child: Image.asset('assets/images/unnamed.jpg'),
                      ),
                    ),
                    Stack(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              color: IconColor, shape: BoxShape.circle),
                          child: Icon(
                            Icons.notifications_outlined,
                            size: 35,
                          ),
                        ),
                        if (_showBadge)
                          Positioned(
                            right: 6,
                            top: 6,
                            child: Container(
                              height: 12,
                              width: 12,
                              decoration: BoxDecoration(
                                color: Colors.red,
                                shape: BoxShape.circle,
                              ),
                            ),
                          )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Text(
                  "Let's explore your\nBest coffee ",
                  style: GoogleFonts.ubuntu(
                      color: IconColor,
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 55,
                        padding: EdgeInsets.symmetric(horizontal: defaultPadding),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                  color: Colors.black45, fontSize: 14),
                              fillColor: Colors.black,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(30)),
                              icon: Icon(
                                Icons.search,
                                color: Colors.black,
                                size: 30,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.mic),
                                onPressed: () {
                                  // Voice search functionality here
                                },
                              )),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: defaultPadding * 2,
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Image.asset(
                        'assets/images/settings.png',
                        scale: 20,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: IconColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/pannel.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                CupertinoSlidingSegmentedControl(
                  children: myTabs,
                  thumbColor: Color(0xFFFFDEBC),
                  groupValue: segmentedControlGroupValue,
                  backgroundColor: bgColor,
                  onValueChanged: (value) {
                    setState(() {
                      segmentedControlGroupValue = value!;
                    });
                  },
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: demoProducts.length,
                    itemBuilder: (context, index) {
                      return AnimatedTopProducts(demoProducts[index]);
                    },
                  ),
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                Text(
                  "Brands",
                  style: GoogleFonts.ubuntu(
                      color: IconColor, fontSize: 18, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: defaultPadding,
                ),
                SizedBox(
                  height: 90,
                  width: double.infinity,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return BrandsList();
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding BrandsList() {
    return Padding(
      padding: const EdgeInsets.only(right: defaultPadding),
      child: GestureDetector(
        onTap: () {
          // Navigate to brand page
        },
        child: Container(
          height: 90,
          width: 350,
          child: Stack(
            children: [
              Container(
                height: 90,
                width: 350,
                padding: EdgeInsets.only(
                    left: defaultPadding * 5, right: defaultPadding),
                margin: EdgeInsets.only(top: defaultPadding * 2),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'stare bucks',
                      style: GoogleFonts.ubuntu(
                          color: IconColor,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration:
                          BoxDecoration(color: IconColor, shape: BoxShape.circle),
                      child: Icon(
                        Icons.add,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Image.asset(
                    'assets/images/starbucks.png',
                    height: 80,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding AnimatedTopProducts(Products products) {
    return Padding(
      padding: const EdgeInsets.only(right: defaultPadding),
      child: MouseRegion(
        onEnter: (event) => _onHover(true, products),
        onExit: (event) => _onHover(false, products),
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          height: 300,
          width: 250,
          decoration: BoxDecoration(
              color: IconColor, borderRadius: BorderRadius.circular(10)),
          child: Stack(children: [
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ProductDetails(
                        title: products.title,
                        image: products.image,
                        description: products.description,
                        price: products.price)));
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  products.image,
                  fit: BoxFit.cover,
                  height: 300,
                  width: 250,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset('assets/images/shape.png')),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: defaultPadding, vertical: defaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration:
                          BoxDecoration(color: IconColor, shape: BoxShape.circle),
                      child: Icon(
                        Icons.favorite,
                        size: 20,
                      ),
                    ),
                  ),
                  Spacer(),
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                      child: Icon(
                        Icons.add,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: defaultPadding,
                  ),
                  Text(
                    products.title,
                    style: GoogleFonts.ubuntu(
                        fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          products.description,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                          style: GoogleFonts.ubuntu(
                            fontSize: 14,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        products.price,
                        style: GoogleFonts.ubuntu(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }

  void _onHover(bool hover, Products product) {
    setState(() {
    });
  }
}
