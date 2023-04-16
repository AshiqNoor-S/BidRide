import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              "BidRide",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),
            
          ],
        ),
        Image.asset("assets/img/avatar.png",height: 45),
      ],
    );
  }
}
