import 'package:diabetic_eye_app/themes/T2BottomNavigation.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

const fontRegular = 'Regular';
const fontBold = 'Bold';
const textSizeMedium = 16.0;
const textSizeLargeMedium = 18.0;
const textSizeLarge = 24.0;
const textSizeXLarge = 28.0;
const spacing_standard_new = 16.0;
const spacing_large = 24.0;
const spacing_xlarge = 32.0;
const t10_colorPrimary = Color(0xFF554BDF);
const t10_textColorSecondary = Color(0xFF888888);
const t10_gradient1 = Color(0xFF3a5af9);
const t10_gradient2 = Color(0xFF7449fa);
const theme10_lbl_welcome = "Welcome";
const theme10_password = "Password";
const theme10_username = "Username";
const theme10_lbl_sign_in = "Login";

Widget text(
  String? text, {
  var fontSize = textSizeLargeMedium,
  Color? textColor,
  var fontFamily,
  var isCentered = false,
  var maxLine = 1,
  var latterSpacing = 0.5,
  bool textAllCaps = false,
  var isLongText = false,
  bool lineThrough = false,
}) {
  return Text(
    textAllCaps ? text!.toUpperCase() : text!,
    textAlign: isCentered ? TextAlign.center : TextAlign.start,
    maxLines: isLongText ? null : maxLine,
    overflow: TextOverflow.ellipsis,
    style: TextStyle(
      fontFamily: fontFamily ?? null,
      fontSize: fontSize,
      color: textColor,
      height: 1.5,
      letterSpacing: latterSpacing,
      decoration:
          lineThrough ? TextDecoration.lineThrough : TextDecoration.none,
    ),
  );
}

// ignore: must_be_immutable
class EditText extends StatefulWidget {
  var isPassword;
  var isSecure;
  var fontSize;
  var textColor;
  var fontFamily;
  var text;
  var maxLine;
  TextEditingController? mController;

  VoidCallback? onPressed;

  EditText(
      {var this.fontSize = textSizeMedium,
      var this.textColor = t10_textColorSecondary,
      var this.fontFamily = fontRegular,
      var this.isPassword = true,
      var this.isSecure = false,
      var this.text = "",
      var this.mController,
      var this.maxLine = 1});

  @override
  State<StatefulWidget> createState() {
    return EditTextState();
  }
}

class EditTextState extends State<EditText> {
  @override
  Widget build(BuildContext context) {
    if (!widget.isSecure) {
      return TextFormField(
        controller: widget.mController,
        obscureText: widget.isPassword,
        cursorColor: t10_colorPrimary,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(16, 8, 4, 8),
          hintText: widget.text,
          labelText: widget.text,
          hintStyle: secondaryTextStyle(),
          labelStyle: secondaryTextStyle(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 0.0),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 0.0),
          ),
        ),
        maxLines: widget.maxLine,
        style: TextStyle(
            fontSize: widget.fontSize,
            color: Colors.black,
            fontFamily: widget.fontFamily),
      );
    } else {
      return TextField(
        controller: widget.mController,
        obscureText: widget.isPassword,
        cursorColor: t10_colorPrimary,
        decoration: InputDecoration(
          suffixIcon: GestureDetector(
            onTap: () {
              setState(() {
                widget.isPassword = !widget.isPassword;
              });
            },
            child: Icon(
                widget.isPassword ? Icons.visibility : Icons.visibility_off,
                color: Colors.black),
          ),
          contentPadding: EdgeInsets.fromLTRB(16, 8, 4, 8),
          hintText: widget.text,
          labelText: widget.text,
          hintStyle: secondaryTextStyle(),
          labelStyle: secondaryTextStyle(),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 0.0),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 0.0),
          ),
        ),
        style: TextStyle(
            fontSize: widget.fontSize,
            color: Colors.black,
            fontFamily: widget.fontFamily),
      );
    }
  }
}

// ignore: must_be_immutable
class AppButtons extends StatefulWidget {
  var textContent;
  VoidCallback onPressed;

  AppButtons({required this.textContent, required this.onPressed});

  @override
  State<StatefulWidget> createState() {
    return AppButtonsState();
  }
}

class AppButtonsState extends State<AppButtons> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        textStyle: TextStyle(color: Colors.white),
        elevation: 4,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(80.0)),
        padding: const EdgeInsets.all(0.0),
      ),
      onPressed: widget.onPressed,
      child: Container(
        decoration: const BoxDecoration(
          gradient:
              LinearGradient(colors: <Color>[t10_gradient1, t10_gradient2]),
          borderRadius: BorderRadius.all(Radius.circular(80.0)),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
            child: Text(
              widget.textContent,
              style: TextStyle(fontSize: 16, color: Colors.white),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}

class T10SignIn extends StatefulWidget {
  @override
  T10SignInState createState() => T10SignInState();
}

class T10SignInState extends State<T10SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Container(
          height: context.height(),
          color: context.scaffoldBackgroundColor,
          margin: EdgeInsets.only(left: spacing_large, right: spacing_large),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              text(theme10_lbl_welcome,
                  textColor: Colors.black,
                  fontFamily: fontBold,
                  fontSize: textSizeXLarge),
              SizedBox(height: spacing_large),
              EditText(
                text: theme10_username,
                isPassword: false,
              ),
              SizedBox(height: spacing_standard_new),
              EditText(
                text: theme10_password,
                isSecure: true,
              ),
              SizedBox(height: spacing_xlarge),
              AppButtons(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                        builder: (context) => T6BottomNavigation()),
                    (Route<dynamic> route) => false,
                  );
                },
                textContent: theme10_lbl_sign_in,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
