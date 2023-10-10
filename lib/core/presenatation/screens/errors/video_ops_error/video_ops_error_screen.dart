import 'package:five_flutter_auth_app/core/presenatation/widgets/error_text/error_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          color: const Color(0xFF262626),
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/icons/download.svg',
                fit: BoxFit.fitWidth,
                width: MediaQuery.of(context).size.width * 0.5,
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20),
                child: ErrorText(
                    text: 'Oops!',
                    fontSize: 40,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(30, 20, 30, 0),
                child: ErrorText(
                    text: 'Something went wrong with the video',
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
