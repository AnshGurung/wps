import 'package:flutter/material.dart';
import 'package:wps/core/utils/asset_utils.dart';
import 'package:wps/core/views/widgets/base_widget.dart';
import 'package:wps/features/authetication/login_page.dart';
import 'package:wps/features/update_pages/update_rate_page/update_rate_page.dart';
import 'package:wps/features/view_payment_history_page/view_payment_history_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: false);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void initState() {
    super.initState();
    _controller.forward().whenComplete(() {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => ViewPaymentHistoryPage()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, config, theme) {
        return Scaffold(
          backgroundColor: const Color(0xff004D73),
          body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromARGB(255, 0, 39, 59),
                  Color(0xff004D73),
                  Color.fromARGB(255, 1, 93, 139),
                ],
              ),
            ),
            child: Center(
              child: ScaleTransition(
                scale: _animation,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: config.appHeight(12),
                  child: Image.asset(
                    AssetUtils.appLogo,
                    height: config.appHeight(17),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
