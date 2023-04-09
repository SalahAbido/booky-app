import 'package:booky_app/constant.dart';
import 'package:booky_app/core/utils/assets_info.dart';
import 'package:booky_app/feature/howe/presentation/veiws/home_sceen.dart';
import 'package:booky_app/feature/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({Key? key}) : super(key: key);

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;

  @override
  void initState() {
    super.initState();
    inittSlidingeAnimation();
    goToHome();
  }

  void goToHome() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        /*Get.to(
          () => const HomeScreen(),
          transition: Transition.fadeIn,
        );*/

        Navigator.pushNamed(context, HomeScreen.routeName);
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  void inittSlidingeAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slideAnimation = Tween<Offset>(begin: const Offset(0, 5), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(AssetInfo.logo, width: MedQur.getWidth(context)* 0.5),
          SlidingText(slideAnimation: slideAnimation)
        ],
      ),
    );
  }
}
