import 'package:flutter/material.dart';
import 'package:true_naija_citizen/services/questions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String nextt = 'questions';
  int i = 0;
  int j = 0;
  String wrongg = 'false';
  String right = 'true';
  int score = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('True Nigerian',
        style: TextStyle(
          color: Colors.white,
        ),),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Your Score',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(width: 20,),
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 20,
                    child: Text('$score',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),),
                ),
              ],
            ),
            const Image(image: AssetImage('assets/images/flag.png'),
            width: 200,),

            SizedBox(height: 50,),

            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1,
                style: BorderStyle.solid,
                color: Colors.green), borderRadius: BorderRadius.circular(20)
              ),
              padding: EdgeInsets.all(20),
              height: 150,
              width: MediaQuery.of(context).size.width,
              child:
              Center(
                child: Text('$nextt',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.green,
                ),
                ),
              ),
            ),

            SizedBox(height: 30,),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(onPressed: correct ,
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: Text('True',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white
                      ),
                      ),
                  ),

                  TextButton(onPressed: wrong ,
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text('False',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                      ),
                    ),
                  ),

                  TextButton(onPressed: next ,
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Icon(Icons.arrow_forward, color: Colors.white,
                    size: 20,)),
                ],
              ),
            ),

            SizedBox(height: 20,),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: reset ,
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text('Reset',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                      ),
                    ),
                  ),

                  ElevatedButton(onPressed: submit ,
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: const Text('See my score',
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.white
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void next() {
    setState(() {
      if(i <= question.keys.length) {
        nextt = question.keys.elementAt(i);
        i++;
      }
      else{
        nextt = 'No more questions bros submit make we see your score';
      }
    });
  }

  void wrong() {
    var result = (question.values.elementAt(i).compareTo(wrongg));
    if (result == 0) {
      score++;
    }
    else {
      score;
    }

  }

  void correct() {
    var result = (question.values.elementAt(i).compareTo(right));
    if (result == 0) {
      score++;
    }
    else {
      score;
    }

  }

  void reset() {
     setState(() {
       nextt = question.keys.elementAt(j);
       i = j;
       score = j;
     });
  }

  void submit() {
    setState(() {

    });
  }
}
