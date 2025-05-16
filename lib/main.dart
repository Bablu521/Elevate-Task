import 'package:elevate_task/core/di/service_locator.dart';
import 'package:elevate_task/core/routing/app_router.dart';
import 'package:elevate_task/elevate_task.dart';
import 'package:flutter/material.dart';

void main() {
  serviceLocator();
  runApp(ElevateTask(appRouter: AppRouter()));
}
