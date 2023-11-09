class ServiceModel {
  late String imageUrl, title, descption;
  static List<ServiceModel> ss = [];

  ServiceModel(
      {required this.imageUrl, required this.title, required this.descption});
}

class ServiceDataList {
  List<ServiceModel> getData() {
    List<ServiceModel> list = [
       ServiceModel(
          imageUrl:
              "https://cdn1.iconfinder.com/data/icons/web-development-round/128/25-512.png",
          title: "Web Development",
          descption:
              'we will be create your web application from scratch. If you have idea about what you need to do, share us.'),
       ServiceModel(
          imageUrl:
              "https://cdn0.iconfinder.com/data/icons/digital-marketing-2-12/50/171-512.png",
          title: "Website Design",
          descption: 'Creating your website is now so easy and so affordable.'),
       ServiceModel(
          imageUrl:
              "https://cdn4.iconfinder.com/data/icons/designer/128/12-512.png",
          title: "Mobile All Developement",
          descption:
              'Developing innovative and native mobile Apps for Android and iOS platform'),
       ServiceModel(
          imageUrl:
              "https://cdn2.iconfinder.com/data/icons/content-design-production-2-1/66/113-512.png",
          title: "Softwere Developement",
          descption:
              'Being a software development service provider, we will help you transform your ideas into innovative solutions for your business.'),
       ServiceModel(
          imageUrl:
              "https://cdn0.iconfinder.com/data/icons/it-infrastructure-dualine-flat/64/Enterprise_Resource_Planning_ERP-512.png",
          title: "ERP",
          descption:
              'Enterprise resource planning (ERP) is the integrated management of main business processes, often in real time and mediated by software and technology'),
       ServiceModel(
          imageUrl:
              "https://cdn3.iconfinder.com/data/icons/web-hosting-90/496/dns-management-domain-setting-cloud-512.png",
          title: "Domain & Hosting",
          descption:
              'Cheap web hosting services that fit your needs. Do you run a professional business or a personal WordPress website? Get the best deals with us!.'),
    ];
    return list;
  }
}
