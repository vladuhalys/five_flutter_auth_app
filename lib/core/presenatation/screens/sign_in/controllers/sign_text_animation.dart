import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignAnimation extends GetxController
    with GetSingleTickerProviderStateMixin {
  late Rx<AnimationController> _controller;
  late RxList<Animation<Offset>> _offsetAnimation;

  AnimationController get controller => _controller.value;
  List<Animation<Offset>> get offsetAnimation => _offsetAnimation;

  @override
  Future<void> onInit() async {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1000),
      vsync: this,
    ).obs;
    _offsetAnimation = List.generate(
      2,
      (index) => Tween<Offset>(
        begin: const Offset(0.0, 0.0),
        end: Offset(index == 0 ? 2.2 : -0.7, 0.0),
      ).animate(CurvedAnimation(
        parent: _controller.value,
        curve: Curves.elasticInOut,
      )),
    ).obs;
    super.onInit();
  }

  @override
  Future<void> onClose() async {
    _controller.value.dispose();
    super.onClose();
  }

  Future<void> animate() async {
    _controller.value.status == AnimationStatus.completed
        ? _controller.value.reverse()
        : _controller.value.forward();
  }
}
