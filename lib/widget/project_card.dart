import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/provider/app_provider.dart';

import 'package:provider/provider.dart';

class ProjectCard extends StatefulWidget {
  final String? banner;
  final String? projectLink;
  final String? projectIcon;
  final String projectTitle;
  final String projectDescription;
  final IconData? projectIconData;

  const ProjectCard({
    Key? key,
    this.banner,
    this.projectIcon,
    this.projectLink,
    this.projectIconData,
    required this.projectTitle,
    required this.projectDescription,
  }) : super(key: key);
  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);

    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: widget.projectLink == null
          ? () {}
          : () => openURL(
                widget.projectLink!,
              ),
      onHover: (isHovering) {
        if (isHovering) {
          setState(() {
            isHover = true;
          });
        } else {
          setState(() {
            isHover = false;
          });
        }
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
        transform: Matrix4.identity()..scale(isHover ? 1.05 : 1.0),
        transformAlignment: Alignment.center,
        margin: Space.h,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            child: Container(
              padding: Space.all(),
              width: AppDimensions.normalize(150),
              height: AppDimensions.normalize(90),
              decoration: BoxDecoration(
                color: appProvider.isDark ? Colors.black.withOpacity(0.4) : Colors.white.withOpacity(0.4),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: isHover ? AppTheme.c!.primary! : Colors.grey.withOpacity(0.2),
                  width: 1.5,
                ),
                boxShadow: isHover
                    ? [
                        BoxShadow(
                          color: AppTheme.c!.primary!.withAlpha(100),
                          blurRadius: 15.0,
                          offset: const Offset(0.0, 0.0),
                        )
                      ]
                    : [
                        BoxShadow(
                          color: Colors.black.withAlpha(50),
                          blurRadius: 10.0,
                          offset: const Offset(0.0, 0.0),
                        )
                      ],
              ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                widget.projectIcon != null
                    ? (width > 1135 || width < 950)
                        ? Image.asset(
                            widget.projectIcon!,
                            height: AppDimensions.normalize(15),
                          )
                        : Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.asset(
                                widget.projectIcon!,
                                height: AppDimensions.normalize(10),
                              ),
                              Space.x1!,
                              Text(
                                widget.projectTitle,
                                style: AppText.b2b,
                                textAlign: TextAlign.center,
                              ),
                            ],
                          )
                    : Container(),
                widget.projectIconData != null
                    ? ShaderMask(
                        shaderCallback: (bounds) => const LinearGradient(
                          colors: [Colors.blueAccent, Colors.purpleAccent],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds),
                        child: Icon(
                          widget.projectIconData,
                          color: Colors.white,
                          size: AppDimensions.normalize(25),
                        ),
                      )
                    : Container(),
                (width > 1135 || width < 950)
                    ? Space.y!
                    : const SizedBox(),
                (width > 1135 || width < 950)
                    ? Text(
                        widget.projectTitle,
                        style: AppText.b2b,
                        textAlign: TextAlign.center,
                      )
                    : Container(),
                Space.y1!,
                Expanded(
                  child: SingleChildScrollView(
                    child: Text(
                      widget.projectDescription,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Space.y1!,
              ],
            ),
            AnimatedOpacity(
              duration: const Duration(milliseconds: 400),
              opacity: isHover ? 0.0 : 1.0,
              child: FittedBox(
                fit: BoxFit.fill,
                child: widget.banner != null
                    ? Image.asset(
                        widget.banner!,
                      )
                    : Container(),
              ),
            ),
          ],
        ),
            ),
          ),
        ),
      ),
    );
  }
}
