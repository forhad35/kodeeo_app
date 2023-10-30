import 'package:flutter/material.dart';
import 'package:kodeeo_app/data/model/contact_data.dart';
import 'package:kodeeo_app/widgets/contact.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text('Contact Us'),centerTitle: true,),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Contact.contactSlider(context),
            SizedBox(height: 20,),
            Contact.contactNoCard(ContactData.location),
            Contact.contactNoCard(ContactData.call),
            Contact.contactNoCard(ContactData.email),
            Contact.contactNoCard(ContactData.web),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Contact.contactCard(ContactData.call),
            //     Contact.contactCard(ContactData.location),
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Contact.contactCard(ContactData.email),
            //     Contact.contactCard(ContactData.web),
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
