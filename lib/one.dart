import 'package:cricket/all_List.dart';
import 'package:cricket/two.dart';
import 'package:flutter/material.dart';

class one extends StatefulWidget {
  const one({Key? key}) : super(key: key);

  @override
  State<one> createState() => _oneState();
}

class _oneState extends State<one> {
  @override
  void initState() {
    super.initState();
    all_Lis all = all_Lis();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("playar"),
        elevation: 2,
        centerTitle: true,
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return Container(
              color: Colors.grey[300],
              // height: 1,
              margin: EdgeInsets.all(5),
            );
          },
          itemBuilder: (context, index) {
            return Container(
              child: ListTile(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return two(index);
                    },
                  )
                  );
                },
                title: Text("${all_Lis.p_name[index]}"),
                subtitle: Text("${all_Lis.p_team[index]}"),
                leading: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        "${all_Lis.p_photo[index]}"),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    border: Border.all(style: BorderStyle.none),
                  ),
                ),
              ),
            );
          },
          itemCount: all_Lis.p_name.length),
    );
  }
}
