//return string data with a specfic length
  getFixedString (String string, int length){
    var strList=string.split("");
    var dots="...";
    if(string.length>=length){
      var temp="";
      for(int i=0;i<length;i++){
        temp+= strList[i];
      }
      return temp+dots;
    }
    return string;
  }
