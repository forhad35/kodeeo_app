class CourseData {
  late String instructorName;
  late String courseName;
  late String coursePrice;
  late String duiAmount;
  late String paidStatus;
  late String certificateStatus;
  late String claimCertificate;

  CourseData(
      {required this.instructorName,
      required this.courseName,
      required this.coursePrice,
      required this.duiAmount,
      required this.paidStatus,
      required this.certificateStatus,
      required this.claimCertificate});
}
class MyCourses{
  List<CourseData> course=[
    CourseData(instructorName: "Mustafizur Rahman", courseName: "courseName", coursePrice: "12000.00", duiAmount: "7000.00", paidStatus: "Admission", certificateStatus: " ", claimCertificate: "Claim Certificate")
  ];
}