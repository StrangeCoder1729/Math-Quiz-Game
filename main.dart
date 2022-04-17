import "dart:io";

 
class Mathquestion{

  String? question;
  double answer = 0.00;

  Mathquestion(String? que, double ans){
      this.question = que;
      this.answer = ans;
  }




}
void main (){
 
    List<Mathquestion> questions = [
      
      Mathquestion("3+5",8.00),
      Mathquestion("10-7",3.0),
      Mathquestion("45*10",450.0),
      Mathquestion("(12*5) - 10",50.0),
      Mathquestion("(22+10) * 10",320.0),
      Mathquestion("350*22",7700.0),
      Mathquestion("56*10",560.0),
      Mathquestion("11*11",121.0),
      Mathquestion("(900-50)* 10",8500.0),
      Mathquestion("100*9", 900.0)
    ];

    int correct = 0;
    int wrong = 0 ;

    try{
         for(int i = 0 ; i < questions.length ; i++){

      print("Question ${i+1}: ${questions[i].question}");
      String? ans = stdin.readLineSync();
      int ans1 = int.parse(ans!); 
      if(ans1 == questions[i].answer){

          correct +=1;
      }
      else if(ans != questions[i].answer){

        wrong +=1;
      }


    }

    print("\n");
    print("Results :-");
    if(wrong == 0){
      print("You have got all the answers correct");
    }
    else if(correct == 0){
      print("You have got all the answers wrong");
    }
    else{
      print("Correct Answers : ${correct}");
      print("Wrong Answers : ${wrong}");
    }

    }catch(e){

        print("Please enter a valid input !");

    }
    

}