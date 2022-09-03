import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit/cubit/app_cubit.dart';
import 'package:flutter_cubit/pages/detail_page.dart';
import 'package:flutter_cubit/pages/navpages/home_page.dart';
import 'package:flutter_cubit/pages/welcome_page.dart';

class AppCubitLogic extends StatefulWidget {
  const AppCubitLogic({Key? key}) : super(key: key);

  @override
  State<AppCubitLogic> createState() => _AppCubitLogicState();
}

class _AppCubitLogicState extends State<AppCubitLogic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubit, AppState>(
        builder: (context, state) {
          if (state is WelcomeState) {
            return const WelcomePage();
          } else if (state is LoadingState) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is LoadedState) {
            return const HomePage();
          } else if (state is DetailState) {
            return const DetailPage();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
