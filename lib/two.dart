import 'package:cricket/all_List.dart';
import 'package:flutter/material.dart';

class two extends StatefulWidget {
  int index;

  two(this.index);

  @override
  State<two> createState() => _twoState();
}

class _twoState extends State<two> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Two"),
        elevation: 2,
        centerTitle: true,
      ),
      body: Column(
        // textDirection: TextDirection.rtl,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            // margin: EdgeInsets.only(right: 30, left: 30, top: 5),
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("${all_Lis.p_photo[widget.index]}"),
                fit: BoxFit.fill,
              ),
              shape: BoxShape.circle,
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              textAlign: TextAlign.center,
              "${all_Lis.p_name[widget.index]}",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(5),
            // width: ,
            height: 30,
            child: Text(
              textAlign: TextAlign.center,
              "${all_Lis.p_team[widget.index]}",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
          ),

          /* child: ListTile(
              title: Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("${all_Lis.p_photo[widget.index]}"),
                    fit: BoxFit.fill,
                  ),
                  shape: BoxShape.circle,
                ),
              ),
              subtitle: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      textAlign: TextAlign.center,
                      "${all_Lis.p_name[widget.index]}",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(5),
                    // width: ,
                    height: 30,
                    child: Text(
                      textAlign: TextAlign.center,
                      "${all_Lis.p_team[widget.index]}",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),*/
        ],
      ),
    );
  }
}
