
import 'package:flutter/material.dart';
import 'package:folio/configs/configs.dart';
import 'package:folio/constants.dart';
import 'package:folio/utils/project_utils.dart';
import 'package:folio/utils/utils.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/project_card.dart';

class PortfolioMobileTab extends StatelessWidget {
  const PortfolioMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const CustomSectionHeading(
          text: "\nPortfolio",
        ),
        const CustomSectionSubHeading(
          text: "VSMAC Partners and Customers\n\n",
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              ProjectUtils.titles.length,
              (i) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                child: ProjectCard(
                  projectIcon: ProjectUtils.icons[i],
                  projectLink: ProjectUtils.links[i],
                  projectTitle: ProjectUtils.titles[i],
                  projectDescription: ProjectUtils.description[i],
                ),
              ),
            ),
          ),
        ),
        Space.y!,
        SizedBox(
          height: AppDimensions.normalize(14),
          width: AppDimensions.normalize(50),
          child: OutlinedButton(
            onPressed: () => openURL(StaticUtils.gitHub),
            child: Text(
              'See More',
              style: AppText.l1b,
            ),
          ),
        )
      ],
    );
  }
}
