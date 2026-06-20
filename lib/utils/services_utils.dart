import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ServicesUtils {
  static const List<IconData> servicesIcons = [
    FontAwesomeIcons.mobileScreen,
    FontAwesomeIcons.penNib,
    FontAwesomeIcons.robot,
    FontAwesomeIcons.link,
    FontAwesomeIcons.github,
    FontAwesomeIcons.brain,
  ];

  static const List<String> servicesTitles = [
    "Mobile App Development",
    "UI/UX Designing",
    "Machine Learning",
    "Blockchain Development",
    "Open Source - GitHub",
    "AI Agents - AI Consultant",
  ];

  static const List<String> servicesDescription = [
    "We provide end-to-end Mobile App Development services using cutting-edge frameworks like Flutter and React Native. Our solutions ensure high performance, seamless user experiences across iOS and Android, and robust backend integrations with REST APIs and Firebase.",
    "Our UI/UX Design experts craft intuitive, aesthetically pleasing, and highly engaging user interfaces. By leveraging modern design principles and tools like Figma and Adobe XD, we guarantee responsive and user-centered digital experiences that drive conversions.",
    "Harness the power of Artificial Intelligence with our Machine Learning consulting. We build predictive models, NLP engines, and data-driven systems to automate complex tasks, optimize operations, and unlock hidden values within your company's data.",
    "We offer secure and decentralized Blockchain Development solutions. From smart contracts on Ethereum to private ledger architectures, we help you build transparent, scalable, and tamper-proof ecosystems tailored for modern Web3 applications.",
    "We actively contribute to and build enterprise solutions on Open Source systems. Leveraging community-driven technologies ensures rapid deployment, high security, and massive scalability without the burden of heavy proprietary licensing.",
    "We specialize in autonomous local AI Agent models, open-source AI systems, and AI technology transfer & training. We build advanced AI Agent systems tailored for financial services, investment, and appraisal.",
  ];
}
