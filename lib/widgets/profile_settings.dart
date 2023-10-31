import 'package:flutter/material.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({super.key});

  @override
  State<ProfileSettings> createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OutlinedButton(
                onPressed: () {},
                child: SizedBox(
                  width: 300,
                  child: Text(
                    "Change Password",
                    textAlign: TextAlign.center,
                  ),
                )),
            SizedBox(
              height: 20,
            ),
            OutlinedButton(
                onPressed: () {},
                child: SizedBox(
                  width: 300,
                  child: Text(
                    "Update profile",
                    textAlign: TextAlign.center,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
