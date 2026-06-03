import 'package:ai38ai/repo/user_repo.dart';
import 'package:ai38ai/repo/user_repo_impl.dart';
import 'package:ai38ai/view/home_screen.dart';
import 'package:ai38ai/view/splash_screen.dart';
import 'package:ai38ai/viewmodel/user_view_model.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view/dashboard_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<UserRepo>(create: (_) => UserRepoImpl()),

        ChangeNotifierProvider(
          create: (context) =>
              UserViewModel(userRepo: context.read<UserRepo>()),
        ),

      ],
      child: MaterialApp(
        title: "AI38",
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
  }
}
