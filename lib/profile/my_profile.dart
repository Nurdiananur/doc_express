import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doc_express/profile/profile.dart';
import 'package:doc_express/screens/main_screen.dart';


class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(


      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () => MaterialApp(
        //... other code
        builder: (context, widget) {
          //add this line
          ScreenUtil.setContext(context);
          return MediaQuery(
            //Setting font does not change with system font size
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: widget!,
          );
        },

        home: MyProfile1(),
      ),
    );
  }
}



class MyProfile1 extends StatefulWidget {
  const MyProfile1({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfile1State();
}

class _MyProfile1State extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Мой профиль',
          style: TextStyle(
              fontSize: 20, color: Color(0xff444444), fontWeight: FontWeight.bold
          ),

        ), leading: IconButton(onPressed: (){
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Profile()));
      }, icon: Icon(FontAwesomeIcons.arrowLeft , color: Color(0xff444444),),
      ),
      ),

      body:
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 38.0,left: 15, right: 15),
                child: Container(
                  width: 100,
                  height: 100,

                  decoration: BoxDecoration(
                      color: Color(0xffFFB951),
                    borderRadius: BorderRadius.circular(35),
                  ) ,
                    child:Icon(Icons.person, color: Colors.white, size: 60,)
                ),
    ),
            SizedBox(height: 30,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
    autofocus: false,

    keyboardType: TextInputType.emailAddress,
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    hintText: 'Дженалиев Азим',
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
    borderRadius: BorderRadius.circular(8),
    ),
    filled: true,
    fillColor: Color(0xffEDEDEF)
    ),
    ),

                  ),

                  SizedBox(height: 20,),
    Padding(
    padding: const EdgeInsets.only(left: 15, right: 15),
    child: TextFormField(
    autofocus: false,

    keyboardType: TextInputType.emailAddress,
    textInputAction: TextInputAction.next,
    decoration: InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    hintText: '+996559180033',
    enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.white),
    borderRadius: BorderRadius.circular(8),
    ),
    filled: true,
    fillColor: Color(0xffEDEDEF)
    ),
    ),
    ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: TextFormField(
                      autofocus: false,

                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                          hintText: 'Кыргызстан, г.Бишкек',
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          filled: true,
                          fillColor: Color(0xffEDEDEF)
                      ),
                    ),
                  ),
                  SizedBox(height: 45),
                    Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
                      child: Material(
                      elevation: 5,
    borderRadius: BorderRadius.circular(15),
    color: Color(0xffFFB951),
    child: MaterialButton(
    padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
    minWidth: MediaQuery.of(context).size.width,
    onPressed: () {
    Navigator.push(context,
    MaterialPageRoute(builder: (context) => MainScreen()));
    },
    child: Text('Сохранить',
    textAlign: TextAlign.center,
    style: TextStyle(
    fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold
    ),
    ),
    ),

    ),
                    ),
  ]
  ),
            ],
          ),
    );

  }
}
