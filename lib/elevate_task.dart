import 'package:elevate_task/core/di/service_locator.dart';
import 'package:elevate_task/core/routing/app_router.dart';
import 'package:elevate_task/core/routing/routes.dart';
import 'package:elevate_task/features/home/data/repo/home_repo_impl.dart';
import 'package:elevate_task/features/home/logic/home_cubit/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      child: BlocProvider(
        create: (context) => HomeCubit(homeRepo: getIt.get<HomeRepoImpl>())..getAllProducts(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Elevate-Task",
          onGenerateRoute: appRouter.onGenerateRoute,
          initialRoute: Routes.homeView,
        ),
      ),
    );
  }
}
