
import 'package:coffee_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductDetails extends StatelessWidget {
  ProductDetails(
      {super.key,
      required this.title,
      required this.image,
      required this.description,
      required this.price});
  final String title, image, description, price;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding, vertical: defaultPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration:
                      BoxDecoration(color: IconColor, shape: BoxShape.circle),
                  child: Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 30,
                  ),
                ),
                Text(
                  'Coffee',
                  style: GoogleFonts.ubuntu(
                      color: IconColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration:
                      BoxDecoration(color: IconColor, shape: BoxShape.circle),
                  child: Icon(
                    Icons.notifications_outlined,
                    size: 30,
                  ),
                )
              ],
            ),
          ),
          Expanded(child: Image.asset(image)),
          Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(defaultPadding * 2),
                decoration: BoxDecoration(
                    color: bgColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(80),
                        topRight: Radius.circular(80))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 4,
                        width: 50,
                        color: IconColor,
                      ),
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              title,
                              style: GoogleFonts.ubuntu(
                                  color: IconColor,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              'price ' + price,
                              style: GoogleFonts.ubuntu(
                                  color: IconColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: Color(0xFFD4720D),
                              borderRadius: BorderRadius.circular(22)),
                          child: Row(
                            children: [
                              Icon(Icons.remove),
                              SizedBox(
                                width: defaultPadding,
                              ),
                              Text(
                                '02',
                                style: GoogleFonts.ubuntu(
                                    fontSize: 18, fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: defaultPadding,
                              ),
                              Icon(Icons.add),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: defaultPadding * 2,
                    ),
                    Text(
                      'Size',
                      style: GoogleFonts.ubuntu(
                          color: IconColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: Color(0xFFD4720D),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              '250ml',
                              style: GoogleFonts.ubuntu(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        )),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        Expanded(
                            child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: Color(0xFFF9DEC3),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              '500ml',
                              style: GoogleFonts.ubuntu(
                                  color: Color(0xFFD4720D),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        )),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        Expanded(
                            child: Container(
                          height: 45,
                          decoration: BoxDecoration(
                              color: Color(0xFFF9DEC3),
                              borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              '600ml',
                              style: GoogleFonts.ubuntu(
                                  color: Color(0xFFD4720D),
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ))
                      ],
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Text(
                      'About',
                      style: GoogleFonts.ubuntu(
                          color: IconColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Expanded(
                      child: Text(
                        description,
                        style: GoogleFonts.ubuntu(
                          height: 2,
                          color: IconColor,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Text(
                      'Add option',
                      style: GoogleFonts.ubuntu(
                          color: IconColor,
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 50,
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: Color(0xFFD4720D),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.remove),
                              FittedBox(
                                child: Text(
                                  'one spoon sugar',
                                  style: GoogleFonts.ubuntu(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Icon(Icons.add),
                            ],
                          ),
                        )),
                        SizedBox(
                          width: defaultPadding,
                        ),
                        Expanded(
                            child: Container(
                          height: 50,
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                              color: Color(0xFFD4720D),
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.remove),
                              FittedBox(
                                child: Text(
                                  '40ml cream',
                                  style: GoogleFonts.ubuntu(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                              ),
                              Icon(Icons.add),
                            ],
                          ),
                        ))
                      ],
                    ),
                    SizedBox(
                      height: defaultPadding,
                    ),
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        onPressed: () {},
                        child: Text(
                          'Add cart',
                          style: GoogleFonts.ubuntu(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
                  ],
                ),
              ))
        ],
      )),
    );
  }
}