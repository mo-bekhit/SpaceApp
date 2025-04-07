import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:untitled/core/utils/app_colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:untitled/core/utils/app_colors.dart';

class LoginScreen extends StatelessWidget{
  static const String routeName = "Login";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appColor.black,
      body: Stack(
        children: [
          Center(
            child: Container(
              child: Image.asset("assets/images/p1.png",
      fit: BoxFit.cover,
      )
              ),
            ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text("Explore The Universe",
                        style:TextStyle(
                          color: Color(0xffFFFFFF),
                          fontSize: 48,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration:BoxDecoration(color: appColor.Red,borderRadius:BorderRadius.circular(29)),
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(15),
                  width: double.infinity,
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Explore",
                        style: TextStyle(
                          color:Color(0xffFFFFFF),
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(onPressed:(){
                        Navigator.of(context).pushNamed("Home");
                      },
                        icon:SvgPicture.asset("assets/images/Arrow 1.svg",width:16,),)                    ],
                  ),
                ),
                SizedBox(height: 22,)
              ],
            ),
        ],
      ),
    );
  }
}