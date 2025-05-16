import 'package:elevate_task/core/routing/app_router.dart';
import 'package:elevate_task/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ElevateTask extends StatelessWidget {
  final AppRouter appRouter;
  const ElevateTask({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(397, 796),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Elevate-Task",
        onGenerateRoute: appRouter.onGenerateRoute,
        initialRoute: Routes.homeView,
      ),
    );
  }
}
