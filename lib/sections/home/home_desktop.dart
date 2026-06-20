
import 'package:flutter/material.dart';
import 'package:folio/animations/entrance_fader.dart';
import 'package:folio/configs/configs.dart';
import 'package:seo_renderer/seo_renderer.dart';

import 'package:folio/utils/utils.dart';
import 'package:folio/widget/social_links.dart';

class HomeDesktop extends StatelessWidget {
  const HomeDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 1.025,
      padding: Space.h,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            right: 0,
            child: Opacity(
              opacity: 0.9,
              child: EntranceFader(
                offset: const Offset(0, 0),
                delay: const Duration(seconds: 1),
                duration: const Duration(milliseconds: 800),
                child: Image.asset(
                  StaticUtils.blackWhitePhoto,
                  height: size.width < 1200
                      ? size.height * 0.8
                      : size.height * 0.85,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(30),
              AppDimensions.normalize(80),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextRenderer(
                      text: 'VSMAC JOIN STOCK COMPANY - Virtual, Social, Mobile, Analytic and Cloud',
                      child: Text(
                        'VSMAC JOIN STOCK COMPANY - Virtual, Social, Mobile, Analytic and Cloud  ',
                        style: AppText.b1!.copyWith(
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                    EntranceFader(
                      offset: const Offset(0, 0),
                      delay: const Duration(seconds: 2),
                      duration: const Duration(milliseconds: 800),
                      child: Image.asset(
                        StaticUtils.hi,
                        height: AppDimensions.normalize(12),
                      ),
                    ),
                  ],
                ),
                Space.y1!,
                TextRenderer(
                  text: "METAVERSE",
                  child: Text(
                    "METAVERSE",
                    style: AppText.h1!.copyWith(
                      fontFamily: 'Montserrat',
                      fontSize: AppDimensions.normalize(25),
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ),
                TextRenderer(
                  text: "RESOURCE",
                  child: Text(
                    "RESOURCE",
                    style: AppText.h1b!.copyWith(
                      fontSize: AppDimensions.normalize(25),
                      height: 1,
                    ),
                  ),
                ),
                EntranceFader(
                  offset: const Offset(-10, 0),
                  delay: const Duration(seconds: 1),
                  duration: const Duration(milliseconds: 800),
                  child: Row(
                    children: [
                      Icon(
                        Icons.play_arrow_rounded,
                        color: AppTheme.c!.primary!,
                      ),
                      TextRenderer(
                        text: "Flutter, JAVA, React Native, Web, AI, Blockchain, NFT | IT Outsourcing Solution",
                        child: Text(
                          ' Flutter, JAVA, Web, AI, Blockchain | IT Outsourcing',
                          style: AppText.b1,
                        ),
                      ),
                    ],
                  ),
                ),
                Space.y2!,
                const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
