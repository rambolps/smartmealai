import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(16, 19, 20, 1),
        centerTitle: true,
        title: Text(
          "Log In",
          textAlign: TextAlign.center,
          style:
              GoogleFonts.notoSans(fontSize: 18, fontWeight: FontWeight.normal),
        ),
      ),
      body: Column(
        children: [
          const Spacer(flex: 1),
          const Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Expanded(
                child: EmailField(),
              ),
              SizedBox(
                width: 25,
              )
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          const Row(
            children: [
              SizedBox(
                width: 25,
              ),
              Expanded(
                child: PasswordField(),
              ),
              SizedBox(
                width: 25,
              )
            ],
          ),
          const SizedBox(height: 20),
          const Text(
            "Forgot your password?",
            style: TextStyle(color: Color.fromRGBO(2, 118, 248, 1)),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(width: 25),
              Expanded(
                  child: FloatingActionButton.extended(
                    label: const Text("Sign In",
                        textAlign: TextAlign.center,
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.normal)),
                    icon: const Icon(Icons.arrow_forward),
                    backgroundColor: Theme.of(context).primaryColor,
                    onPressed: () =>Navigator.of(context).pushNamedAndRemoveUntil('/Home', (route) => false),
                  )
                  ),
              const SizedBox(width: 25),
            ],
          ),
          const SizedBox(height: 10),
          const Divider(indent: 25,endIndent: 25,),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SizedBox(width: 25,),
              FloatingActionButton(
                  backgroundColor: Colors.white,
                  child: Image.network(
                      'http://pngimg.com/uploads/google/google_PNG19635.png',
                      fit:BoxFit.cover
                  ),
                  onPressed: () {}),
              FloatingActionButton(
                  backgroundColor: Colors.white,
                  child: Image.network(
                      'https://pngimg.com/uploads/apple_logo/apple_logo_PNG19682.png',
                      height: 40,
                      fit:BoxFit.cover
                  ),
                  onPressed: () {}),
              const SizedBox(width: 25,),
            ],
          ),
          const Spacer(flex: 2),
        ],

      ),
    );
  }
}

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  final textFieldFocusNode = FocusNode();
  bool _obscured = true;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) return; // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus = false;     // Prevents focus if tap on eye
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.visiblePassword,
      focusNode: textFieldFocusNode,
      obscureText: _obscured,
      style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Color.fromRGBO(51, 54, 63, 1.0)
      ),
      cursorColor: const Color.fromRGBO(51, 54, 63, 1.0),
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.never, //Hides label on focus or if filled
        isDense: true,  // Reduces height a bit
        border: OutlineInputBorder(
          borderSide: BorderSide.none,              // No border
          borderRadius: BorderRadius.circular(14.0),
        ),
        fillColor: Colors.white,
        prefixIcon: const Icon(Icons.lock_rounded),
        prefixIconColor: const Color.fromRGBO(51, 54, 63, 1.0),
        suffixIconColor: const Color.fromRGBO(51, 54, 63, 1.0),
        suffixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 4, 0),
          child: GestureDetector(
            onTap: _toggleObscured,
            child: Icon(
              _obscured
                  ? Icons.visibility_rounded
                  : Icons.visibility_off_rounded,
              size: 24,
            ),
          ),
        ),
        filled: true,
        hintText: "Enter your password",
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Color.fromRGBO(137, 141, 158, 1.0),
        ),
      ),
    );
  }
}

class EmailField extends StatelessWidget {
  const EmailField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Color.fromRGBO(51, 54, 63, 1.0)
      ),
      cursorColor: const Color.fromRGBO(51, 54, 63, 1.0),
      decoration: InputDecoration(
        isDense: true,  // Reduces height a bit
        border: OutlineInputBorder(
          borderSide: BorderSide.none,              // No border
          borderRadius: BorderRadius.circular(14.0),
        ),
        fillColor: Colors.white,
        prefixIcon: const Icon(Icons.email),
        prefixIconColor: const Color.fromRGBO(51, 54, 63, 1.0),
        filled: true,
        hintText: "Enter your e-mail",
        hintStyle: const TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: Color.fromRGBO(137, 141, 158, 1.0),
        ),
      ),
    );
  }
}


