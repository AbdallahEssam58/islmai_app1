import 'package:flutter/material.dart';
import 'package:islmai_app1/home/bottom_sheets/x.dart';
import 'package:islmai_app1/providers/my_provider.dart';
import 'package:provider/provider.dart';

import '../../my_theme_data.dart';

class ThemeBottomSheet extends StatelessWidget {
  const ThemeBottomSheet({super.key});


  @override
  Widget build(BuildContext context) {
    var pro=Provider.of<MyProvider>(context);
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.light);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Light",
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: PrimaryColor,
                        ),
                  ),
                  Icon(
                    Icons.done,
                    size: 30,
                    color: PrimaryColor,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.dark);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Dark"),
                  //Icon(Icons.done),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
