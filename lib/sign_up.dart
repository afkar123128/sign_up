import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sign extends StatefulWidget {
  const sign({super.key});

  @override
  State<sign> createState() => _loginState();
}

class _loginState extends State<sign> {
  bool isobscure =true;
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Column(
            
            children: [
              Text("Welcome Back",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),
              ),
            ],
          ),SizedBox(height: 15,),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              
              label: Text("Name",style: TextStyle(color: const Color.fromARGB(255, 173, 174, 175)),),
      
              
            ),
          ),SizedBox(height: 15,),
            TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              
              label: Text("Email",style: TextStyle(color: const Color.fromARGB(255, 173, 174, 175)),),
      
              
            ),
          ),SizedBox(height: 15,),
          TextFormField(
            obscureText: isobscure,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              
              label: Text("password",style: TextStyle(color: const Color.fromARGB(255, 174, 175, 177)),
              ),suffixIcon: IconButton(onPressed: (){
                setState(() {
                  isobscure=!isobscure;
                });
              }, icon: Icon((isobscure)?  Icons.visibility_off_rounded:Icons.remove_red_eye)),
              
            ),
          ),
          SizedBox(height: 20,),
            TextFormField(
            obscureText: isobscure,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              
              label: Text(" confime password",style: TextStyle(color: const Color.fromARGB(255, 174, 175, 177,),fontSize: 20),
              ),suffixIcon: IconButton(onPressed: (){
                setState(() {
                  isobscure=!isobscure;
                });
              }, icon: Icon((isobscure)?  Icons.visibility_off_rounded:Icons.remove_red_eye)),
              
            ),
          ),
          SizedBox(height: 45,),
        SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 10, 10, 10),
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9))
            ),
            onPressed: (){}, child: Text("sign up",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),)
            ),
        ),SizedBox(height: 15,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [Text("Already have an account"),
        TextButton(onPressed: (){}, child: Text("sign up",style: TextStyle(color: Colors.indigo ),))
        ],)
          ]
          ,
        ),
      ),
    );
  }
}