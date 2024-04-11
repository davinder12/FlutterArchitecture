import 'package:flutter/material.dart';
import 'package:responsiveuiflutter/model/api/apidata/LoginApiResponse.dart';
import 'package:responsiveuiflutter/screen_widget/Button.dart';
import 'package:responsiveuiflutter/screen_widget/InputTextField.dart';
import 'package:responsiveuiflutter/screens/loginScreen/LoginScreenModel.dart';
import 'package:responsiveuiflutter/util/BaseStatefulWidget.dart';
import 'package:responsiveuiflutter/util/BaseStateWidget.dart';
import '../../screen_widget/SocialMediaButton.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class LoginScreen extends BaseStatefulWidget<LoginScreen> {
  @override
  State<LoginScreen> get layoutRes => _LoginScreen();
}

class _LoginScreen extends BaseStateWidget<LoginScreen> {

  late LoginScreenModel  loginUser;

  bool rememberMe = false;
  void _onRememberMeChanged(bool? newValue) {
    setState(() {
      rememberMe = newValue!;
    });
  }

  @override
  void deactivate() {
    loginUser.dispose();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    loginUser =  Provider.of<LoginScreenModel>(context,listen: true);
    return Stack(
      children: [
        SingleChildScrollView(child: Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.only(left: 40.0,right: 40.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                    systemPopUpNav();
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 60),
                      alignment: Alignment.topLeft,
                      child: SvgPicture.asset(
                        'assets/images/cancel.svg',
                        width: 40,
                        height: 40,
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 50),
                      height: 70,
                      width: 70,
                      child: Image.asset("assets/images/logo.png")
                  ),
                  InputTextField(hint : "Enter Email Id",callback: (value) => {
                    loginUser.emailId = value.toString()
                  },marginTop: 40,),
                  InputTextField(hint: "Password",callback: (value) => {
                    loginUser.password = value.toString()
                  },marginTop: 20),
                  Container(
                    margin: EdgeInsets.only(top: 15,bottom: 15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          SizedBox(
                              height: 24,
                              width: 24,
                              child: Checkbox(value: rememberMe, onChanged: _onRememberMeChanged)),
                              const Expanded(child: Text("Remember me?",style: TextStyle(fontSize: 12,color: Colors.black,decoration: TextDecoration.none),)),
                        ]
                      ),
                    ),
                  Expanded(
                    flex: 2,
                    child: TextButton(
                      style: ButtonStyle(padding: MaterialStateProperty.all(EdgeInsets.zero),),
                      onPressed: () {
                        print('Text Button Pressed ssfsfssf sdfsfsfssfds');
                      },
                      child: const Text(
                        'Forget Password?',
                         style: TextStyle(
                          fontSize: 12,
                          color: Colors.blue, // Text color
                        ),
                      ),
                    ),
                   )
                      ],
                    ),
                  ),
                  Button(buttonText:"Login Button",callback: ()=>{
                    loginUser.filterMethod((condition, message) => {
                      if(!condition){
                        showToast(message??"")
                      } else {
                        loginUser.loginApiData()
                      }
                    })
                  }),
                  SocialMediaButton(callback: ()=>{
                      signUpNavigation(context)
                  },)
                ],
              )
          ),
        ),
        loadingWidget<LoginApiResponse>(loginUser.response,(data)=> {
          loginUser.resetApiResponse(),
          showToast(data.status?.message??"Unknown error"),
          if(data.status?.code == "1")
            dashboardNavigation(context)
         })
      ],
    );
  }


}

