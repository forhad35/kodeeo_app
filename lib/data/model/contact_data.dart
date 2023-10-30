import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactData {
  static var call = ["https://cdn2.iconfinder.com/data/icons/buno-ui-interface/32/__phone_call-512.png", "Call us", "01854969657"];
  static var location = ["https://cdn3.iconfinder.com/data/icons/map-navigation-8/512/z5-map-location-pin-512.png", "Office Location", "House#15,Road#10/A, Sector#11, Uttara, Dhaka-1230"];
  static var email = ["https://cdn2.iconfinder.com/data/icons/basic-flat-icon-set/128/letter-512.png", "Email", "info@kodeeo.com"];
  static var web = ["https://cdn3.iconfinder.com/data/icons/seo-and-digital-marketing-2-3/48/66-512.png", "Web Site", "www.kodeeo.com "];
  static List<ContactCarousel> contactSliderData(){
    List<ContactCarousel> list=[
      new ContactCarousel(image: "https://cdn0.iconfinder.com/data/icons/ui-interface-7/128/Email.png", title: "Drop us a Line"),
      new ContactCarousel(image: "https://cdn3.iconfinder.com/data/icons/map-and-navigation-98/128/destination_location_destination_route_location_navigation_map.png", title: "Watch Our Location G-Map"),
      new ContactCarousel(image: "https://cdn2.iconfinder.com/data/icons/3d-designer-thinking/128/Website.png", title: "For More Details Visit Our Site")
    ];
    return list ;
  }
}
class ContactCarousel{
  var image;
  var title;
  ContactCarousel({required this.image, required this.title});
}

