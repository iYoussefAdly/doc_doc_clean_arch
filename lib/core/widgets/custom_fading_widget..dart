import 'package:doc_doc_clean_arch/features/splash/presentation/views/widgets/custom_row_doc_doc.dart';
import 'package:flutter/material.dart';
class FancySplashAnimation extends StatefulWidget {
  final double width1;
  final double width2;

  const FancySplashAnimation({super.key, required this.width1, required this.width2});

  @override
  State<FancySplashAnimation> createState() => _FancySplashAnimationState();
}

class _FancySplashAnimationState extends State<FancySplashAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;
  late Animation<Offset> _positionAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1200),
    );

    // fade in
    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    // move from bottom to center
    _positionAnimation = Tween<Offset>(
      begin: Offset(0, 0.3),
      end: Offset(0, 0),
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeOut),
    );

    _controller.forward();
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _positionAnimation,
      child: FadeTransition(
        opacity: _opacityAnimation,
        child: CustomRowDocDoc(
          width1: widget.width1,
          width2: widget.width2,
        ),
      ),
    );
  }
}
