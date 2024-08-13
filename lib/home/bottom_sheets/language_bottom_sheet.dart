import 'package:flutter/material.dart';
import 'package:islmai_app1/my_theme_data.dart';

class LanguageBottomSheet extends StatelessWidget {
  const LanguageBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            InkWell(
              onTap: () {

              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Arabic",
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("English"),
                //Icon(Icons.done),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
