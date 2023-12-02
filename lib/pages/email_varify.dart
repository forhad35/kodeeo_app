import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kodeeo_app/helper/display.dart';
import 'package:kodeeo_app/pages/change_password.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
class EmailVerification extends StatefulWidget {
  const EmailVerification({super.key});

  @override
  State<EmailVerification> createState() => _EmailVerificationState();
}

class _EmailVerificationState extends State<EmailVerification> {
  final scaffoldKey = GlobalKey();
  final formKey = GlobalKey<FormState>();

bool isOtpMatch = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
        height: displayHeight(context),
        width: displayWidth(context),

        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: displayHeight(context)*0.07,),
              SizedBox(
                width: displayWidth(context)*0.5,
                child: Image.asset("images/email.png",height: 100,),
              ),
              const Text("Check Your Mail For Security Code"),
              const SizedBox(height: 50,),
              const Text("Enter 4 Digit Verification Code ",
                style: TextStyle(fontSize: 14,),),
              const SizedBox(height: 30,),
              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     SizedBox(
              //       height: 68,
              //       width: 64,
              //       child: TextFormField(
              //         textAlign: TextAlign.center,
              //         keyboardType: TextInputType.number,
              //         style:Theme.of(context).textTheme.headlineMedium,
              //         onChanged: (value){
              //           if(value.length == 1){
              //             FocusScope.of(context).nextFocus();
              //           }
              //         },
              //         inputFormatters: [
              //           LengthLimitingTextInputFormatter(1),
              //           FilteringTextInputFormatter.digitsOnly,
              //         ],
              //         textAlignVertical: TextAlignVertical.center,
              //         decoration: const InputDecoration(
              //           focusedBorder: OutlineInputBorder(
              //             borderSide: BorderSide(color: Colors.indigo),
              //             borderRadius: BorderRadius.all(Radius.circular(4))
              //           ),
              //           enabledBorder: OutlineInputBorder(
              //               borderSide: BorderSide(color: Colors.transparent),
              //               borderRadius: BorderRadius.all(Radius.circular(4))
              //           ),
              //           disabledBorder: OutlineInputBorder(
              //               borderSide: BorderSide(color: Colors.transparent),
              //               borderRadius: BorderRadius.all(Radius.circular(4))
              //           ),
              //           fillColor: Colors.black12,
              //           filled: true,
              //         ),
              //
              //
              //       ),
              //     ),
              //     SizedBox(
              //       height: 68,
              //       width: 64,
              //       child: TextFormField(
              //         textAlign: TextAlign.center,
              //         keyboardType: TextInputType.number,
              //         style:Theme.of(context).textTheme.headlineMedium,
              //         onChanged: (value){
              //           if(value.length == 1){
              //             FocusScope.of(context).nextFocus();
              //           }
              //         },
              //         inputFormatters: [
              //           LengthLimitingTextInputFormatter(1),
              //           FilteringTextInputFormatter.digitsOnly,
              //         ],
              //         textAlignVertical: TextAlignVertical.center,
              //         decoration: const InputDecoration(
              //           focusedBorder: OutlineInputBorder(
              //               borderSide: BorderSide(color: Colors.indigo),
              //               borderRadius: BorderRadius.all(Radius.circular(4))
              //           ),
              //           enabledBorder: OutlineInputBorder(
              //               borderSide: BorderSide(color: Colors.transparent),
              //               borderRadius: BorderRadius.all(Radius.circular(4))
              //           ),
              //           disabledBorder: OutlineInputBorder(
              //               borderSide: BorderSide(color: Colors.transparent),
              //               borderRadius: BorderRadius.all(Radius.circular(4))
              //           ),
              //           fillColor: Colors.black12,
              //           filled: true,
              //         ),
              //
              //
              //       ),
              //     ),
              //     SizedBox(
              //       height: 68,
              //       width: 64,
              //       child: TextFormField(
              //         textAlign: TextAlign.center,
              //         keyboardType: TextInputType.number,
              //         style:Theme.of(context).textTheme.headlineMedium,
              //         onChanged: (value){
              //           if(value.length == 1){
              //             FocusScope.of(context).nextFocus();
              //           }
              //         },
              //         inputFormatters: [
              //           LengthLimitingTextInputFormatter(1),
              //           FilteringTextInputFormatter.digitsOnly,
              //         ],
              //         textAlignVertical: TextAlignVertical.center,
              //         decoration: const InputDecoration(
              //           focusedBorder: OutlineInputBorder(
              //               borderSide: BorderSide(color: Colors.indigo),
              //               borderRadius: BorderRadius.all(Radius.circular(4))
              //           ),
              //           enabledBorder: OutlineInputBorder(
              //               borderSide: BorderSide(color: Colors.transparent),
              //               borderRadius: BorderRadius.all(Radius.circular(4))
              //           ),
              //           disabledBorder: OutlineInputBorder(
              //               borderSide: BorderSide(color: Colors.transparent),
              //               borderRadius: BorderRadius.all(Radius.circular(4))
              //           ),
              //           fillColor: Colors.black12,
              //           filled: true,
              //         ),
              //
              //
              //       ),
              //     ),
              //     SizedBox(
              //       height: 68,
              //       width: 64,
              //       child: TextFormField(
              //         textAlign: TextAlign.center,
              //         keyboardType: TextInputType.number,
              //         style:Theme.of(context).textTheme.headlineMedium,
              //         onChanged: (value){
              //           if(value.length == 1){
              //             FocusScope.of(context).nextFocus();
              //           }
              //         },
              //         inputFormatters: [
              //           LengthLimitingTextInputFormatter(1),
              //           FilteringTextInputFormatter.digitsOnly,
              //         ],
              //         textAlignVertical: TextAlignVertical.center,
              //         decoration: const InputDecoration(
              //           focusedBorder: OutlineInputBorder(
              //               borderSide: BorderSide(color: Colors.indigo),
              //               borderRadius: BorderRadius.all(Radius.circular(4))
              //           ),
              //           enabledBorder: OutlineInputBorder(
              //               borderSide: BorderSide(color: Colors.transparent),
              //               borderRadius: BorderRadius.all(Radius.circular(4))
              //           ),
              //           disabledBorder: OutlineInputBorder(
              //               borderSide: BorderSide(color: Colors.transparent),
              //               borderRadius: BorderRadius.all(Radius.circular(4))
              //           ),
              //           fillColor: Colors.black12,
              //           filled: true,
              //         ),
              //
              //
              //       ),
              //     ),
              //   ],
              // ),
              Form(
                key: formKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 30,
                  ),
                  child: PinCodeTextField(
                    appContext: context,
                    pastedTextStyle: TextStyle(
                      color: Colors.green.shade600,
                      fontWeight: FontWeight.bold,
                    ),
                    length: 4,
                    // obscureText: true,
                    // obscuringCharacter: '*',
                    // obscuringWidget: const FlutterLogo(
                    //   size: 24,
                    // ),
                    // blinkWhenObscuring: false,
                    animationType: AnimationType.fade,
                    validator: (v) {
                      if (v!.length < 3) {
                        return "I'm from validator";
                      } else {
                        return null;
                      }
                    },
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 40,
                      fieldWidth: 30,
                      activeFillColor: Colors.white,
                      activeBorderWidth: 1,
                      errorBorderWidth: 1,
                    ),
                    cursorColor: Colors.black,
                    animationDuration: const Duration(milliseconds: 300),
                    enableActiveFill: true,
                    // errorAnimationController: errorController,
                    // controller: textEditingController,
                    keyboardType: TextInputType.number,
                    // boxShadows: const [
                    //   BoxShadow(
                    //     offset: Offset(0, 1),
                    //     color: Colors.black12,
                    //     blurRadius: 10,
                    //   )
                    // ],
                    onCompleted: (v) {
                      var otp = "2222";
                      if(otp == v){
                        isOtpMatch= true;
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangPassword()));
                        setState(() {

                        });
                      }else{
                        isOtpMatch = false;
                        setState(() {

                        });
                      }
                    },
                    // onTap: () {
                    //   print("Pressed");
                    // },
                    // onChanged: (value) {
                    //   debugPrint(value);
                    //   setState(() {
                    //     currentText = value;
                    //   });
                    // },
                    beforeTextPaste: (text) {
                      debugPrint("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return true;
                    },
                  ),
                ),
              ),
              Text( isOtpMatch ? "":" Otp doesn't match"),
              // const SizedBox(height: 10,),


            ElevatedButton(
              onPressed: () {  },
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Resend Code"),
              ),
            )],
          ),
        ),
      ),
    );
  }
}
