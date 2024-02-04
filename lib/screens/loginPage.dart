import "package:app/utils/global.dart";
import "package:app/utils/routes.dart";
import "package:flutter/material.dart";

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: darkBackgroundColor,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(flex:5),
              const Image(
                image: AssetImage("assets/images/logo.png"),
                height: 60,
              ),
              const SizedBox(height: 50),
            SizedBox(
              height:42,
              child: TextFormField(
                cursorColor: Colors.white,
                style: const TextStyle(fontSize: 13,color:Colors.white),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 1,horizontal:14),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 98, 98, 98),
                    ),),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 98, 98, 98),
                    )
                  ),
                  hintText:"Phone number, email or username",
                  hintStyle: const TextStyle(fontSize: 13,color:secondaryColor)
                ),
              ),
            ),
            const SizedBox(height:20),
            SizedBox(
              height:42,
              child: TextFormField(
                cursorColor: Colors.white,
                style: const TextStyle(fontSize: 13,color:Colors.white),
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.symmetric(vertical: 1,horizontal:14),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 98, 98, 98),
                    ),),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: const BorderSide(
                      color: Color.fromARGB(255, 98, 98, 98),
                    )
                  ),
                  hintText:"Password",
                  hintStyle: const TextStyle(fontSize: 13,color:secondaryColor)
                  
                ),
                obscureText: true,
              ),
            ),
            const SizedBox(height:30),
            const Row(
              children: [
                Expanded(
                  flex: 5,
                  child: SizedBox()),
                  Text("Forgot Password?",style:TextStyle(color:primaryColor,))
              ],
            ),
            const SizedBox(height:30),
            InkWell(
              onTap: ()=>{
                Navigator.of(context).pushNamed(MyRoutes.HomePageRoute),
              },
              child: Container(
                alignment: Alignment.center,
                height:42,
                width:double.infinity,
                decoration:const ShapeDecoration(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
                    color:primaryColor,
                ),
                child:const Text("Log In",style:TextStyle(color: Colors.white, fontSize: 16),)
              ),
            ),
            const Spacer(flex:5),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?",style:TextStyle(color:secondaryColor)),
                Text("SignUp",style:TextStyle(color:primaryColor)),
              ],
            ),
            const Spacer(flex:2)

            ]),
      ),
    ),),);
  }
}
