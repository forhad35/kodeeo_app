import 'dart:collection';
import 'dart:ffi';

class TrainnerModel{
 String name;
  String job;
  String skills;
  String experience;
  String email;
  String image;

  TrainnerModel({ required this.name, required this.job, required this.skills,
      required this.experience, required this.email,required this.image});
}

class TrainnerData{
  static Map<int, TrainnerModel> trainnerId(){
  Map<int, TrainnerModel> info={
    1: TrainnerModel(name: "Mohammad Tohidul Islam", job: "Technical Lead", skills: "PHP,Laravel,Mysql,DevOps", experience: "6 years",email: "foysal.kodeeo@gmail.com",image: "https://www.kodeeo.com/upload/profile//profile_pic5f58b7899c198.jpeg"),
    2: TrainnerModel(name: "Mustafizur Rahman", job: "Flutter Developer", skills: "Dart,Flutter", experience: "2 years",email: "munna.kodeeo@gmail.com",image: "https://www.kodeeo.com/upload/profile//profile_pic62f3560ca3516.jpg"),
    3: TrainnerModel(name: "Md. Mehedi Hasan Abeer", job: "Graphic Design", skills: "Photoshop, Illustrator,XD", experience: "4 years",email: "abeer@kodeeo.com",image: "https://www.kodeeo.com/images/defult_student.png"),
    4: TrainnerModel(name: "Jisun Aurnob", job: "React Trainner", skills: "React.js,next.js,JS", experience: "3 years",email: "jisun@kodeeo.com",image: "https://www.kodeeo.com/upload/profile//profile_pic5f58b7899c198.jpeg"),

  };
  return info;
  }
}
