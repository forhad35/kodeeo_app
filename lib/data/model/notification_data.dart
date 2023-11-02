class NotificationModel {
  late String title;
  late String description;
  bool flag = false;

  NotificationModel(this.title, this.description,this.flag);
}

class NotificationData {
  static List<NotificationModel> list = [
     NotificationModel(
        "JavaScript Class Schedule",
        "Sunday 11:30 PM \n Monday 9:30 PM \n friday 2:30 PM \n Thusday 4:30 PM \n ",
       false

    ),
    NotificationModel(
        "Notice for Class Suspend",
        "Yesterday 11:30 PM a Js Class has been suspend ",
      false
    ),
    NotificationModel(
        "Laravel : What is a Data Protection Notice? ",
        "A Data Protection Notice is often referred to as a Privacy Notice or a Privacy "
            "Policy and \n It is simply a statement by which an organisation"
            " such as University College Cork describes how it intends to process personal data about individuals",
      false
    ),
    NotificationModel(
        "Git Class Time",
        "Tommorw - Git Class will be Starting @2:30 PM",
        false
    ),
    NotificationModel("NodeJs Class Time",
        "Friday 11:30 PM a NodeJs Class has Starting Kodeeo LTD",
      false
    ),
    NotificationModel("All Kodeeo students",
        "Tomorrow all students class suspends! Tomorrow all students class sTomorrow all students class s",
      false
    ),
 NotificationModel("All DIST students",
        "Tomorrow all students class suspends!",
      false
    ),
  ];
}
