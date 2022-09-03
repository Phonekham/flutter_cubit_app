import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/app_cubit.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_text.dart';
import 'package:flutter_cubit/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = ['welcome-one.png', 'welcome-two.png', 'welcome-three.png'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemCount: 3,
          scrollDirection: Axis.vertical,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("img/" + images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppText(
                          text: 'text',
                        ),
                        AppText(
                          text: 'text2',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                            width: 250,
                            child: AppText(
                                text: 'text ww we wewe fdrv e 2',
                                color: AppColors.textColor2,
                                size: 14)),
                        const SizedBox(
                          height: 40,
                        ),
                        GestureDetector(
                          onTap: () {
                            BlocProvider.of<AppCubit>(context).getData();
                          },
                          child: const SizedBox(
                            width: 200,
                            child: ResponsiveButton(
                              width: 120,
                            ),
                          ),
                        )
                      ],
                    ),
                    Column(
                        children: List.generate(3, (indexDots) {
                      return Container(
                          margin: const EdgeInsets.only(bottom: 2),
                          width: 8,
                          height: index == indexDots ? 25 : 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: AppColors.mainColor));
                    }))
                  ],
                ),
              ),
            );
          }),
    );
  }
}
