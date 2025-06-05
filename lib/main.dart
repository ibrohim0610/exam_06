import 'package:exam_6/core/routing/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:exam_6/core/dependencies.dart';
final navigatorKey=GlobalKey<NavigatorState>();

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ExamApp());
}

class ExamApp extends StatelessWidget {
  const ExamApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(390, 932),
      child: MultiProvider(
        providers: providers,
        child: MaterialApp.router(
          routerConfig: router,
        debugShowCheckedModeBanner: false,),
      ),
    );
  }
}
