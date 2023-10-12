import 'package:five_flutter_auth_app/core/internal/internal_exports.dart';
import 'package:five_flutter_auth_app/core/presenatation/presentation_exports.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class VideoErrorOpsScreen extends StatelessWidget {
  const VideoErrorOpsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 200),
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          color: AppColors.errorBackground,
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppAssetsImg.errorImgSplash,
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text('Ops!',
                    style: AppTextStyle.headerError
                        .copyWith(color: AppColors.errorText)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: Text('Something went wrong with video player',
                    style: AppTextStyle.labelError
                        .copyWith(color: AppColors.errorLabelDark)),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: AppButton.rounded(
                    onPressed: () => Get.offAndToNamed(AppRouts.signIn),
                    child: AppText.errorOnButton(text: 'Next')),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
