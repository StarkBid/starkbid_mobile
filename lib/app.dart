import 'package:flutter/material.dart'
    show
        BuildContext,
        MaterialApp,
        StatelessWidget,
        Widget;
import 'package:flutter_bloc/flutter_bloc.dart'
    show BlocBuilder, MultiBlocProvider;
import 'package:starkbid_mobile/app_bloc_provider.dart';
import 'package:starkbid_mobile/features/theme/blocs/theme_bloc.dart';
import 'package:starkbid_mobile/views/screens/onboarding/views/onboarding_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: OnboardingScreen(),
  );
}
