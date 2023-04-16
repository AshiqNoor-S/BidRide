import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:my_portfolio/responsive.dart';
import 'package:my_portfolio/widgets/Cards/project_card.dart';
import 'package:my_portfolio/widgets/Header/header.dart';
import 'package:share_plus/share_plus.dart';

import '../../models/projects.dart';

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          child: const Icon(
            Icons.share,
            color: Colors.white,
          ),
          backgroundColor: Colors.black,
          onPressed: () {
            Share.share("Check out BidRide!");
          }),
      body: SafeArea(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Header(),
                  SizedBox(height: 15),
                  Text("Get Your Ride, Your Way!",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w400,
                      )),
                  SizedBox(
                    height: 5,
                  ),
                  Responsive(
                      mobile: mobileTabletBuilder(600),
                      tablet: mobileTabletBuilder(450),
                      desktop: desktopBuilder())
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget mobileTabletBuilder(double height) {
    return SizedBox(
      height: height,
      child: ScrollConfiguration(
        behavior: MyCustomScrollBehavior(),
        child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: project.length,
          itemBuilder: (context, index) {
            return ProjectCard(project: project[index]);
          },
        ),
      ),
    );
  }

  Widget desktopBuilder() {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
      ),
      itemCount: project.length,
      itemBuilder: (context, index) {
        return ProjectCard(project: project[index]);
      },
    );
  }
}
