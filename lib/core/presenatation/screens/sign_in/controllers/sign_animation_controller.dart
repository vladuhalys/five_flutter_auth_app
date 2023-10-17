import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignAnimation extends GetxController
    with GetSingleTickerProviderStateMixin {
  late Rx<AnimationController> _controller;
  late RxList<Animation<Offset>> _offsetAnimation;
  RxBool textAnimationStatus = false.obs;

  AnimationController get controller => _controller.value;
  List<Animation<Offset>> get offsetAnimation => _offsetAnimation;

  @override
  void onInit() async {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 1500),
      vsync: this,
    ).obs;
    _offsetAnimation = List.generate(
      2,
      (index) => Tween<Offset>(
        begin: const Offset(0.0, 0.0),
        end: Offset(index == 0 ? 3.2 : -0.65, 0.0),
      ).animate(CurvedAnimation(
        parent: _controller.value,
        curve: Curves.elasticInOut,
      )),
    ).obs;
    super.onInit();
  }

  void animationStatus() async {
    _controller.value.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        textAnimationStatus.value = true;
        update();
      }
    });
  }

  @override
  void onClose() async {
    _controller.value.dispose();
    super.onClose();
  }

  Future animate() async {
    _controller.value.status == AnimationStatus.completed
        ? _controller.value.reverse()
        : _controller.value.forward();
  }
}
