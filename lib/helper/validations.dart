class Validations{

  static bool passIsValid(data){
    if(data.length<8){
      return false;
    }else{
      return true;
    }
  }
}