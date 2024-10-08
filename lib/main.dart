import 'package:flutter/material.dart';
import 'package:roomie_radar/firebase_options.dart';
import 'package:roomie_radar/utils/app_theme.dart';
import 'package:roomie_radar/views/listings/room_listing.dart';
import 'package:roomie_radar/views/authentication/sign_in_screen.dart';
import 'package:roomie_radar/views/authentication/sign_up_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:roomie_radar/views/questionnaire/qustionnaire_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeData.lightTheme,
      home: const RoomListing(),

      // initialRoute: '/Questionnaire',
      // routes: {
      //   '/signIn': (context) => const SignInScreen(),
      //   '/Questionnaire': (context) => const QuestionnaireView(),
      //   '/signUp': (context) => const SignUpScreen(),
      //   '/roomListing': (context) => const RoomListing(),
      // },
    );
  }
}
