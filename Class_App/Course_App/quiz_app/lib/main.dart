import 'package:flutter/material.dart';
void main(){
    runApp(const MyApp());
}
class MyApp extends StatelessWidget{

    const MyApp({super.key});

    @override
    Widget build(BuildContext context){

        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: QuizApp(),
        );
    }
}
class QuizApp extends StatefulWidget{

    const QuizApp({super.key});
    @override
    State createState()=>_QuizAppState();
}
class _QuizAppState extends State{


  List<Map> allQuestions = [

    {
        "question":"What is the capital of India?",
        "options" :["Paris","Rome","Seoul","New Delhi"],
        "correctAnswer" :3
    },
    {
        "question":"What is the capital of Germany?",
        "options" :["Warsaw","Budapest","Athens","Berlin"],
        "correctAnswer" :3
    },
    {
        "question":"What is the capital of France?",
        "options" :["Paris","Bern","Sofia","Havana"],
        "correctAnswer" :0
    },
    {
        "question":"What is the capital of Italy?",
        "options" :["Brussels","Rome","Stockholm","Amsterdam"],
        "correctAnswer" :1
    },
    {
        "question":"What is the capital of South Korea?",
        "options" :["Kabul","Riyadh","Seoul","Tehran"],
        "correctAnswer" :2
    }
    
  ];

  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1; 
  bool questionPage=true;
  int scoreCount = 0;
  String errorMessage ="";
  String feedbackMessage= "";
  Color feedbackColor=Colors.black;

  WidgetStateProperty<Color?> checkAnswer(int buttonIndex){

    if(selectedAnswerIndex != -1){
        if(buttonIndex == allQuestions[currentQuestionIndex]["correctAnswer"]){
            return const WidgetStatePropertyAll(Colors.green);
        }else if(buttonIndex == selectedAnswerIndex){
            return const WidgetStatePropertyAll(Colors.red);
        }else{
            return const WidgetStatePropertyAll(null);
        }
    }else{
      return const WidgetStatePropertyAll(null);
    }
}
//return string to check whether answer is correct or not
String feedbackMess(){
  if(selectedAnswerIndex!=-1){
      if(selectedAnswerIndex==allQuestions[currentQuestionIndex]["correctAnswer"]){
          return feedbackMessage="Correct Answer";
      }else{
          return feedbackMessage="Wrong Answer";
      }
      //return feedbackMessage;
  }else{
      return feedbackMessage="";
  }
}

//return color of string to check whether answer is correct or not
Color feedbackCol(String feedbackMessage){
      if(feedbackMessage=="Correct Answer") {
        return Colors.green;
      } else {
        return Colors.red;
      }
}


  @override
  Widget build(BuildContext context){

    return isQuestionScreen();
  }
    Scaffold isQuestionScreen(){

        if(questionPage==true){

            return Scaffold(
            appBar: AppBar(
                title: const Text(
                      "Quiz App",
                       style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w800,
                              
                       ),
                ),
                centerTitle: true,
                backgroundColor: Colors.purple
            ),
            body: Column(
              children: [
                  const SizedBox(height: 40,),

                  ///Question Number
                  
                  Row(
                    children: [
                          const SizedBox(width: 120,),
                          Text(
                                "Question : ${currentQuestionIndex + 1}/ ${allQuestions.length}",
                                 style:const TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w700,
                                 ) ,
                          ),
                    ],
                  ),
                  const SizedBox(height: 50,),
                  SizedBox(
                    height: 70,
                    width: 320,

                    /// Question
                    
                    child: Text(
                        allQuestions[currentQuestionIndex]["question"],
                        style: const TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.purple,
                        ),
                    ),
                  ),
                  const SizedBox(height: 50,),

                  /////Option 1
                  
                  SizedBox(
                    height: 60,
                    width: 350,
                    child: ElevatedButton(
                      style: ButtonStyle(
                             backgroundColor:checkAnswer(0),
                      ),
                      onPressed:() {
                            if(selectedAnswerIndex == -1){
                                selectedAnswerIndex=0;
                                errorMessage="";
                                setState(() {});
                            }
                      }, 
                      child: Text(
                             allQuestions[currentQuestionIndex]["options"][0],
                             style:const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                             ),  
                      ),
                    ),
                  ),
                  const SizedBox(height: 35,),

                  /////Option 2
                  
                  SizedBox(
                    height: 60,
                    width: 350,
                    child: ElevatedButton(
                      
                      style: ButtonStyle(
                             backgroundColor:checkAnswer(1),
                      ),
                      onPressed:() {
                            if(selectedAnswerIndex == -1){
                                selectedAnswerIndex=1;
                                errorMessage="";
                                setState(() {});
                            }
                      },  
                      child: Text(
                             allQuestions[currentQuestionIndex]["options"][1],
                             style:const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                             ),  
                      ),
                    ),
                  ),
                  const SizedBox(height: 35,),

                  //////Option 3
                  
                   SizedBox(
                    height: 60,
                    width: 350,
                    child: ElevatedButton(
                      
                      style: ButtonStyle(
                             backgroundColor:checkAnswer(2),
                      ),
                      onPressed:() {
                            if(selectedAnswerIndex == -1){
                                selectedAnswerIndex=2;
                                errorMessage="";
                                setState(() {});
                            }
                      }, 
                      child: Text(
                             allQuestions[currentQuestionIndex]["options"][2],
                             style:const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                             ),  
                      ),
                    ),
                  ),
                  const SizedBox(height: 35,),

                  //////Option 4
                  
                   SizedBox(
                    height: 60,
                    width: 350,
                    child: ElevatedButton(
                      
                      style: ButtonStyle(
                             backgroundColor:checkAnswer(3),
                      ),
                      onPressed:() {
                            if(selectedAnswerIndex == -1){
                                selectedAnswerIndex=3;
                                errorMessage="";
                                setState(() {});
                            }
                      }, 
                      child: Text(
                             allQuestions[currentQuestionIndex]["options"][3],
                             style:const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                color: Colors.black
                             ),  
                      ),
                    ),
                  ),
                  const SizedBox(height: 50),
                   SizedBox(
                    child: Text(
                        feedbackMess() ,
                        style:  TextStyle(
                          fontSize: 18,
                          color: feedbackCol(feedbackMessage),
                        ),
                    ),
                  ),
                  const SizedBox(height: 50),
                   SizedBox(
                    child: Text(errorMessage,
                          style: const TextStyle(
                              fontSize: 20,
                              color: Colors.red,
                          ),
                    ),
                  )
                  
              ],

            ),
            floatingActionButton: FloatingActionButton(
              onPressed:(){
                  
                    if(selectedAnswerIndex == allQuestions[currentQuestionIndex]["correctAnswer"]){
                        scoreCount++;
                        //correctAns=true;
                    }
                    if(selectedAnswerIndex !=-1){
                          
                                if(currentQuestionIndex < (allQuestions.length-1)){
                                       currentQuestionIndex++;
                                }else{
                                      questionPage=false;
                                }
                                selectedAnswerIndex=-1;
                                //feedbackMessage='';
                                
                    }else{
                          errorMessage="Please select an option";
                    }
                    setState(() {});
              },
              backgroundColor: Colors.purple,
              child: const Icon(
                Icons.forward,
                color: Colors.black,
              ),
            ),
      );

    }else{

      return Scaffold(
        
          appBar: AppBar(
              title: const Text(
                "Quiz Result",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                ),
              ),
              backgroundColor: Colors.purple,
              centerTitle: true,
          ),
          body:Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      SizedBox(
                        height: 350,
                        width: 350,
                        child: Image.network(
                              "https://i.pinimg.com/736x/85/65/02/856502a5f264883834fb0707fa68b4f6.jpg",                  
                        ),
                      ),
                     const SizedBox(height: 30,),
                     const Text(
                        "Congratulations",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w900,
                            color: Colors.orange,
                        ),
                     ),
                     const SizedBox(height: 30,),
                     Text("Score: $scoreCount/${allQuestions.length}",
                          style:const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                          ),
                     ),
                     const SizedBox(height: 40,),
                     SizedBox(
                      height: 50,
                      width: 160,
                       child: ElevatedButton(
                          onPressed:(){
                                     currentQuestionIndex = 0;
                                     selectedAnswerIndex = -1; 
                                     questionPage=true;
                                     scoreCount = 0;
                                     errorMessage ="";
                                     setState(() {});
                          } ,
                          child: const Text("Reset",
                            style: TextStyle(
                                fontSize: 22,
                                color: Colors.black,
                                
                            ),
                          ),
                        ),
                     ),
                     
                  ],
              ),
          ),
      );

    }
  }
}