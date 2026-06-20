
import 'package:flutter/material.dart';
import 'package:folio/configs/app_dimensions.dart';
import 'package:folio/utils/contact_utils.dart';
import 'package:folio/widget/custom_text_heading.dart';
import 'package:folio/widget/project_card.dart';

class ContactMobileTab extends StatelessWidget {
  const ContactMobileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSectionHeading(
          text: "\nGet in Touch",
        ),
        const CustomSectionSubHeading(
          text: "Building the digital world of operation and entrepreneurship\n\n",
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              3,
              (i) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: ProjectCard(
                  projectIconData: ContactUtils.contactIcon[i],
                  projectTitle: ContactUtils.titles[i],
                  projectDescription: ContactUtils.details[i],
                  projectLink: ContactUtils.links[i],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
