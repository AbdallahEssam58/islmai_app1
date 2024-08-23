import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islmai_app1/my_theme_data.dart';
import 'package:provider/provider.dart';

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
                context.setLocale(Locale("ar"));
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "arabic".tr(),
                   style: context.locale==Locale("ar")
                    ?Theme.of(context).textTheme.bodyMedium!.copyWith(color:Theme.of(context).primaryColor)
                    :Theme.of(context).textTheme.bodyMedium
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
                context.setLocale(Locale("en"));
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      "english".tr(),style: context.locale==Locale("en")
                      ?Theme.of(context).textTheme.bodyMedium!.copyWith(color:Theme.of(context).primaryColor)
                      :Theme.of(context).textTheme.bodyMedium
                  ),
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
