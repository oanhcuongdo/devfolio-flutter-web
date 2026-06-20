part of 'services.dart';

class ServiceMobile extends StatelessWidget {
  const ServiceMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const CustomSectionHeading(
          text: '\nWhat we can do?',
        ),
        const CustomSectionSubHeading(
          text: 'Building the digital world of operation and entrepreneurship\n\n',
        ),
        Space.y!,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
              ServicesUtils.servicesTitles.length,
              (i) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                child: _ServiceCard(
                  serviceIcon: ServicesUtils.servicesIcons[i],
                  serviceTitle: ServicesUtils.servicesTitles[i],
                  serviceDescription: ServicesUtils.servicesDescription[i],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
