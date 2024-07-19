import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app_ths/theme/theme_provider.dart';
import 'package:provider/provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.only(left: 20, right: 20, top: 17),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Dark Mood",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),
            CupertinoSwitch(
              value:
                  Provider.of<ThemeProvider>(context, listen: false).isDarkmood,
              onChanged: (value) {
                Provider.of<ThemeProvider>(context, listen: false).theme();
              },
            )
          ],
        ),
      ),
    );
  }
}