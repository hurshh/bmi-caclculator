import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widgets.dart';

Color cardColor = Color(0xFF1F1F1F);
Color selected = Color(0xfff48fb1);
Color maleButtonColor = cardColor;
Color femaleButtonColor = cardColor;
int height = 120;
int weight = 60;
int age = 16;
Color iconColor = Color(0xffE91E63);
Color maleIconC = iconColor;
Color femaleIconC = iconColor;
String gender = "";
void setColor(String gender){
  if(gender=="male"){
    maleButtonColor = iconColor;
    maleIconC = cardColor;
    femaleButtonColor = cardColor;
    femaleIconC = iconColor;
    gender = "male";
  }
  else if(gender=="female"){
    maleButtonColor = cardColor;
    maleIconC = iconColor;
    femaleButtonColor = iconColor;
    femaleIconC = cardColor;
    gender = "female";
  }
}

class firstInp extends StatefulWidget {
  const firstInp({Key? key}) : super(key: key);

  @override
  _firstInpState createState() => _firstInpState();
}

class _firstInpState extends State<firstInp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
          primaryColor: Colors.black,
          scaffoldBackgroundColor: Colors.black,
          accentColor: Colors.pink,
          splashColor: Colors.pink  ,
          brightness: Brightness.dark
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'BMI CALCULATOR',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(child: Row(
              //first row
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      print("male");
                      setState(() {
                      setColor("male");
                    });
                    },
                    child: custCont1(colour: maleButtonColor,ch1: iconWidgets(text: "MALE",icon: FontAwesomeIcons.mars,iconc: maleIconC,),),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    child: custCont1(colour: femaleButtonColor,ch1: iconWidgets(text: "FEMALE",icon: FontAwesomeIcons.venus,iconc: femaleIconC,),),
                    onTap: (){
                    print("female");
                    setState(() {
                      setColor("female");
                    });
                    },
                  ),
                )
              ],
            )),
            Expanded(child: custCont1(colour: Color(0xFF1F1F1F),ch1: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: Text("HEIGHT",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink,fontSize: 20),)),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('${height}',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white,fontSize: 50)),
                      Text("cm",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),)
                    ],
                  ),
                ),
                Slider(
                    value: height.toDouble(),
                    min: 100,
                    max: 250,
                    activeColor: Colors.pink,
                    inactiveColor: Colors.black,
                    onChanged: (double newValue){
                      print(height);
                      setState(() {
                        height = newValue.round();
                      });
                    })
              ],
            ))),
            Expanded(child: Row(
              //last row
              children: [
                Expanded(child: custCont1(colour: Color(0xFF1F1F1F),ch1: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("WEIGHT",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink,fontSize: 20),),
                    Text('${weight}',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white,fontSize: 50)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(onPressed: (){print(1);setState(() {
                          weight--;
                          });},child: Icon(CupertinoIcons.minus,size: 26,),),
                        SizedBox(width: 18,),
                        FloatingActionButton(onPressed: (){print(1); setState(() {
                          weight++;
                          });},child: Icon(CupertinoIcons.plus,size: 26,),)
                      ],
                    )
                  ],
                ))),
                Expanded(child: custCont1(colour: Color(0xFF1F1F1F),ch1: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("AGE",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.pink,fontSize: 20),),
                    Text('${age}',style: TextStyle(fontWeight: FontWeight.w900,color: Colors.white,fontSize: 50)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FloatingActionButton(onPressed: (){print(1);setState(() {
                          age--;
                        });},child: Icon(CupertinoIcons.minus,size: 26,),),
                        SizedBox(width: 18,),
                        FloatingActionButton(onPressed: (){print(1); setState(() {
                          age++;
                        });},child: Icon(CupertinoIcons.plus,size: 26,),)
                      ],
                    )
                  ],
                )))
              ],
            )),
            GestureDetector(
              onTap: (){
                print("result requested");
              },
              child: Container(
                width: double.infinity,
                color: Colors.pink,
                height: 60,
                margin: EdgeInsets.only(top: 5),
                child: Center(
                  child: Text(
                    'RESULT',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
