import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:world_space/features/onboarding/onboarding.dart';
import 'package:world_space/shared/app_elements/app_texts.dart';
import 'package:world_space/theme/theme.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(child: WorldSpace()),
  );
}

class WorldSpace extends ConsumerWidget {
  const WorldSpace({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: false,
      builder: (context, child) => MaterialApp(
        title: AppTexts.appName,
        debugShowCheckedModeBanner: false,
        theme: AppTheme.appThemeLight,
        home: const OnboardingScreen(),
      ),
    );
  }
}
