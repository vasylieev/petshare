import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:go_router/go_router.dart';
import 'package:petshare/src/core/app_routes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _View();
  }
}

class _View extends StatefulWidget {
  const _View();

  @override
  State<_View> createState() => _ViewState();
}

class _ViewState extends State<_View> {

  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(seconds: 1), () {
        if (mounted) {
          context.go(AppPages.toHomeScreen);
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Icon(Icons.abc),
    );
  }
}
