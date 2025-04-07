import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/core/ui/data.dart';
import 'package:untitled/core/utils/app_colors.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';


class Planetdetails extends StatefulWidget{
  static const String routeName = "Details";
  final data vdata;

  Planetdetails({required this.vdata});

  @override
  State<Planetdetails> createState() => _PlanetdetailsState();
}

class _PlanetdetailsState extends State<Planetdetails> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: appColor.black,
      body: SingleChildScrollView(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                  children: [
                    Image.asset("assets/images/Rectangle 4.png"),
                    Image.asset("assets/images/Rectangle 5.png"),
                    Column(
                      children: [
                        Center(
                          child: Container(
                            padding: EdgeInsets.only(left: 10,top: 26),
                            child: Text(widget.vdata.planetname,
                              style: TextStyle(color: Color(0xffFFFFFF),
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 85,),
                        Container(
                          padding: EdgeInsets.only(left: 10),
                          width: 290,
                          child: Text(widget.vdata.Title,
                            style: TextStyle(color: Color(0xffFFFFFF),
                              fontSize: 24,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    )
                  ]
              ),
              SizedBox(
                height: 300,
                child:
                ModelViewer(
                    src: widget.vdata.D,
                  autoRotate: true,
                  ar: true,
                 ),
              ),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 45,top: 26),
                child: Text("About",
                  style: TextStyle(color: Color(0xffFFFFFF),
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: 290,
                child: Text(widget.vdata.About,
                  style: TextStyle(color: Color(0xffFFFFFF),
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: 290,
                child: Text(widget.vdata.KM,
                  style: TextStyle(color: Color(0xffFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: 290,
                child: Text("Length of Day (hours) :  ${widget.vdata.hours}",
                  style: TextStyle(color: Color(0xffFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: 290,
                child: Text("Orbital Period (Earth years) ${widget.vdata.years}",
                  style: TextStyle(color: Color(0xffFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: 290,
                child: Text("Radius (km)${widget.vdata.years}",
                  style: TextStyle(color: Color(0xffFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: 290,
                child: Text("Mass (kg) : ${widget.vdata.Radius}",
                  style: TextStyle(color: Color(0xffFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: 290,
                child: Text("Gravity (m/s²) : ${widget.vdata.Mass}",
                  style: TextStyle(color: Color(0xffFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: 290,
                child: Text(widget.vdata.Gravity,
                  style: TextStyle(color: Color(0xffFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                width: 290,
                child: Text(widget.vdata.Area,
                  style: TextStyle(color: Color(0xffFFFFFF),
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}