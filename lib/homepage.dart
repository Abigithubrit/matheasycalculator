import 'package:flutter/material.dart';
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
var length = TextEditingController();
var breadth = TextEditingController();
var radius = TextEditingController();
var result = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Math Easy Calculator App'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
        
          child: Center(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Math Easy Calculator App",style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.bold
                    ),),
                    TextField(
                      controller: length,
                      decoration: InputDecoration(
                        label:Text('Enter your length in cm'),
                        prefixIcon: Icon(Icons.line_weight)
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 8,),
                    TextField(
                      controller: breadth,
                      decoration: InputDecoration(
                        label:Text('Enter your breadth in cm'),
                        prefixIcon: Icon(Icons.line_weight)
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    TextField(
                      controller: radius,
                      decoration: InputDecoration(
                        label:Text('Enter your radius in cm'),
                        prefixIcon: Icon(Icons.line_weight)
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 5),
                    ElevatedButton(onPressed: () {
                   var l = length.text.toString();
                   if (l!=''  ){
                    //BMI Calculation
                    var iL = int.parse(l);
                    var pS = 4*iL;
                    setState(() {
                      result = ' Perimeter of Square is: ${pS.toStringAsFixed(2)}';;
                    });
                   }else{
                    setState(() {
                       Text('Please give all information');
                    });
                    
                   }
      
                    }, child: Text('Perimeter Of Square')),
                     ElevatedButton(onPressed: () {
                   var l = length.text.toString();
                   var b = breadth.text.toString();
               
                   if (l!=''  ){
                    //BMI Calculation
                    var iL = int.parse(l);
                    var aS = iL*iL;
                      setState(() {
                      result = ' Area of Square is: ${aS.toStringAsFixed(2)}';;
                    });
                   }else{
                    setState(() {
                      Text('Please provide all the information');
                    });
                    
                   }
      
                    }, child: Text('Area Of Square')),
                    ElevatedButton(onPressed: () {
                   var l = length.text.toString();
                   var b = breadth.text.toString();
                   if (l!='' && b!=''){
                    //BMI Calculation
                    var iL = int.parse(l);
                    var iB = int.parse(b);
                    var pR = 2*(iL+iB);
                    setState(() {
                      result = ' Perimeter of Rectangle is: ${pR.toStringAsFixed(2)}';;
                    });
                   }else{
                    setState(() {
                       Text('Please give all information');
                    });
                    
                   }
      
                    }, child: Text('Perimeter Of Rectangle')),
                     ElevatedButton(onPressed: () {
                   var l = length.text.toString();
                   var b = breadth.text.toString();
               
                   if (l!='' && b!=''){
                    //BMI Calculation
                    var iL = int.parse(l);
                    var iB = int.parse(b);

                    var aR = iL*iB;
                      setState(() {
                      result = ' Area of Rectangle is: ${aR.toStringAsFixed(2)}';;
                    });
                   }else{
                    setState(() {
                      Text('Please provide all the information');
                    });
                    
                   }
      
                    }, child: Text('Area Of Rectangle')),
                    ElevatedButton(onPressed: () {
                  var r =radius.text.toString();
               
                   if (r!=''  ){
                    //BMI Calculation
                    var iR = int.parse(r);
                    var pC = 2*22/7*iR;
                      setState(() {
                      result = ' Perimeter of Circle is: ${pC.toStringAsFixed(2)}';;
                    });
                   }else{
                    setState(() {
                      Text('Please provide all the information');
                    });
                    
                   }
      
                    }, child: Text('Perimeter of Circle')),
                    ElevatedButton(onPressed: () {
                  var r =radius.text.toString();
               
                   if (r!=''  ){
              //area of circle
                    var iR = int.parse(r);
                    var aC =22/7*iR*iR;
                      setState(() {
                      result = ' Area of Circle is: ${aC.toStringAsFixed(2)}';;
                    });
                   }else{
                    setState(() {
                      Text('Please provide all the information');
                    });
                    
                   }
      
                    }, child: Text('Area of Circle')),
                    ElevatedButton(onPressed: () {
                  var r =radius.text.toString();
               
                   if (r!=''  ){
                    //BMI Calculation
                    var iR = int.parse(r);
                    var vC = 4/3*22/7*iR*iR*iR;
                      setState(() {
                      result = ' Volume of Circle is: ${vC.toStringAsFixed(2)}';;
                    });
                   }else{
                    setState(() {
                      Text('Please provide all the information');
                    });
                    
                   }
      
                    }, child: Text('Volume of Circle')),
                    SizedBox(height: 5,),
                    Text(result,style: TextStyle(
                      fontSize: 18
                    ),)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}