import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';

import 'package:folio/utils/utils.dart';
import 'package:folio/widget/social_links.dart';

class HomeMobile extends StatelessWidget {
  const HomeMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 1.02,
      child: Stack(
        children: [
          Positioned(
            bottom: 0.0,
            right: -AppDimensions.normalize(25),
            child: Opacity(
              opacity: 0.9,
              child: Image.asset(
                StaticUtils.blackWhitePhoto,
                height: AppDimensions.normalize(150),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(
              AppDimensions.normalize(10),
              AppDimensions.normalize(40),
              0,
              0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "HANOI-VIETNAM ",
                      style: AppText.b2!.copyWith(
                        fontFamily: 'Montserrat',
                      ),
                    ),
                    Space.x!,
                    Image.asset(
                      StaticUtils.hi,
                      height: AppDimensions.normalize(10),
                    ),
                  ],
                ),
                Space.y!,
                Text(
                  "VSMAC JOIN STOCK COMPANY - Virtual, Social, Mobile, Analytic and Cloud",
                  style: AppText.h3!.copyWith(
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w100,
                  ),
                ),
                Text(
                  "Metaverse Resource",
                  style: AppText.h3b!.copyWith(
                    height: 1,
                  ),
                ),
                Space.y!,
                Row(
                  children: [
                    Icon(
                      Icons.play_arrow_rounded,
                      color: AppTheme.c!.primary!,
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          ' Flutter, JAVA, React Native, Web, AI, Blockchain, NFT',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                        TyperAnimatedText(
                          ' IT Outsourcing Solution for Startup & Enterprise',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                        TyperAnimatedText(
                          ' IT Coding School',
                          speed: const Duration(milliseconds: 50),
                          textStyle: AppText.b1,
                        ),
                      ],
                      repeatForever: true,
                      isRepeatingAnimation: true,
                    ),
                  ],
                ),
                Space.y!,
                const SocialLinks(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
