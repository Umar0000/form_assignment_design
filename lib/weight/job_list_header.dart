import 'package:flutter/material.dart';

class JobListHeader extends StatelessWidget {
  final VoidCallback logoutBtn;

  JobListHeader({required this.logoutBtn});

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "Welcome",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "Umar Ahmed",
                style: TextStyle(
                    fontWeight: FontWeight.w300,
                    color: Colors.white,
                    fontSize: 25),
              )
            ],
          ),
          IconButton(
              onPressed: logoutBtn,
              icon: const Icon(
                Icons.logout,
                color: Colors.white,
              ))
        ]);
  }
}
