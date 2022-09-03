import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_buttons.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';
import 'package:flutter_cubit/widgets/responsive_button.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int lostStar = 4;
  int selectedIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  height: 350,
                  width: double.maxFinite,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage('img/mountain.jpeg'),
                          fit: BoxFit.cover)),
                )),
            Positioned(
                left: 20,
                top: 70,
                right: 20,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.menu),
                      color: Colors.white,
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.dark_mode),
                        color: Colors.white)
                  ],
                )),
            Positioned(
                top: 320,
                child: Container(
                  height: 500,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppLargeText(
                              text: "Yosemite",
                              color: Colors.black.withOpacity(0.8)),
                          AppLargeText(
                              text: "\$ 250", color: AppColors.mainColor)
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.location_on_sharp,
                              color: AppColors.mainColor),
                          const SizedBox(width: 5),
                          AppText(
                              text: "USA, California",
                              color: AppColors.textColor1)
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Wrap(
                              children: List.generate(5, (index) {
                            return Icon(Icons.star,
                                color: index < lostStar
                                    ? AppColors.starColor
                                    : AppColors.textColor1);
                          })),
                          const SizedBox(width: 5),
                          AppText(text: "(4.0)", color: AppColors.textColor1)
                        ],
                      ),
                      const SizedBox(height: 25),
                      AppLargeText(
                          text: "People",
                          color: Colors.black.withOpacity(0.8),
                          size: 20),
                      const SizedBox(height: 5),
                      AppText(
                        text: "Number of people in your group",
                        color: AppColors.mainColor,
                      ),
                      const SizedBox(height: 10),
                      Wrap(
                        children: List.generate(5, (index) {
                          return InkWell(
                            onTap: () {
                              setState(() {
                                selectedIndex = index;
                              });
                            },
                            child: Container(
                              margin: const EdgeInsets.only(right: 15),
                              child: AppButton(
                                size: 50,
                                color: index != selectedIndex
                                    ? Colors.black
                                    : Colors.white,
                                backgroundColor: index != selectedIndex
                                    ? AppColors.buttonBackground
                                    : Colors.black,
                                borderColor: index != selectedIndex
                                    ? AppColors.buttonBackground
                                    : Colors.black,
                                text: (index + 1).toString(),
                              ),
                            ),
                          );
                        }),
                      ),
                      const SizedBox(height: 20),
                      AppLargeText(
                          text: "Description",
                          color: Colors.black.withOpacity(0.8),
                          size: 20),
                      const SizedBox(height: 10),
                      AppText(
                          text:
                              "You should go to travel. Travelling helps get rid of pressure. Go to the mountain to see the nature",
                          color: AppColors.mainColor)
                    ],
                  ),
                )),
            Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Row(
                  children: [
                    AppButton(
                        color: AppColors.textColor2,
                        backgroundColor: Colors.white,
                        borderColor: AppColors.textColor2,
                        size: 60,
                        isText: false,
                        icon: Icons.favorite_border),
                    const SizedBox(width: 20),
                    const ResponsiveButton(
                      isResponsive: true,
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
