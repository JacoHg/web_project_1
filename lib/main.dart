import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:web_project_1/storys/bancho.dart';
import 'package:web_project_1/storys/bunbuku.dart';
import 'package:web_project_1/home_page.dart';
import 'package:web_project_1/storys/hanasaka.dart';
import 'package:web_project_1/storys/momo.dart';
import 'package:web_project_1/storys/urashima.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyA1s4vqVFDfNlpO3IhXrq9xS66PUTTpsEg",
            authDomain: "web-2-5e3a7.firebaseapp.com",
            projectId: "web-2-5e3a7",
            storageBucket: "web-2-5e3a7.appspot.com",
            messagingSenderId: "25350255537",
            appId: "1:25350255537:web:9b2ff50590b0ed46474390"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: const HomePage(), routes: {
      '/urashima': (context) => const UrashimaTaro(),
      '/home': (context) => const HomePage(),
      '/bunbuku': (context) => const BunbukuStory(),
      '/bancho': (context) => const BanchoStory(),
      '/hanasaka': (context) => const HanasakaStory(),
      '/momo': (context) => const MomoStory()
    });
  }
}
