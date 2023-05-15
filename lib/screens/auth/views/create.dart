import 'package:chatogram/common/alert.dart';
import 'package:chatogram/common/connectivity.dart';
import 'package:chatogram/common/validators.dart';
import 'package:chatogram/theme/gaps.dart';
import 'package:chatogram/theme/size.dart';
import 'package:flutter/material.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _formKey = GlobalKey<FormState>();

  String _emailInput = '';
  String _passwordInput = '';

  var _isLogin = true;
  final _isLoading = false;

  void _validateItem() {
    _formKey.currentState!.validate();
  }

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final email = _emailInput;
      final password = _passwordInput;

      // check if the connection to the internet is available and if the internet is connected through a vpn
      final connected = await checkConnectivity(context);

      if(connected) {
        
      }
    } else {
      showErrorMessage(context, "There was an error validating this fields!");
    }
  }

  // build context here
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // image here
            Container(
              margin: const EdgeInsets.only(
                top: AppSizes.p30,
                bottom: AppSizes.p20,
                left: AppSizes.p20,
                right: AppSizes.p20,
              ),
              width: AppSizes.p120,
              child: Image.asset('assets/images/chat.png'),
            ),

            // card form
            Card(
              margin: const EdgeInsets.all(AppSizes.padding),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(AppSizes.padding),
                  child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          TextFormField(
                            enableSuggestions: true,
                            decoration: const InputDecoration(
                              labelText: 'Email Address',
                            ),
                            keyboardType: TextInputType.emailAddress,
                            autocorrect: false,
                            textCapitalization: TextCapitalization.none,
                            onChanged: (value) {
                              _validateItem();
                            },
                            validator: (value) {
                              if (!validateRequired(value!)) {
                                return "This field is required!";
                              }

                              if (!validateEmail(value)) {
                                return "Not a valid email address";
                              }

                              return null;
                            },
                            onSaved: (value) {
                              _emailInput = value!;
                            },
                          ),
                          TextFormField(
                            enableSuggestions: false,
                            decoration: const InputDecoration(
                              labelText: 'Password',
                              helperText:
                                  'Your password should contain: \n- at-least one UPPERCASE LETTER, \n- one integer and \n- any special characters: !, @, #, \$, %, ^, &, *, (, )...',
                            ),
                            obscureText: true,
                            autocorrect: false,
                            textCapitalization: TextCapitalization.none,
                            onChanged: (value) {
                              _validateItem();
                            },
                            validator: (value) {
                              if (!validateRequired(value!)) {
                                return "This field is required!";
                              }

                              if (!validateMinimumLength(value, 6)) {
                                return "Password must be at least 6 \ncharacters long";
                              }

                              if (!passwordHasUppercaseLetter(value)) {
                                return "Password must at least contain one UPPERCASE letter";
                              }

                              if (!passwordHasSpecialCharacter(value)) {
                                return "Password must at least contain one SPECIAL CHARACTER:\n'!, @, #, \$, %, ^, &, *, (, )...";
                              }

                              if (!passwordHasNumber(value)) {
                                return "Password must at least contain one INTEGER/NUMBER";
                              }

                              return null;
                            },
                            onSaved: (value) {
                              _passwordInput = value!;
                            },
                          ),

                          // sizedbox
                          hSizedBox24,
                          hSizedBox24,

                          // submit buttons
                          Row(
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: _submit,
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Theme.of(context)
                                          .colorScheme
                                          .primaryContainer),
                                  child: Text(_isLogin ? "Login" : 'Signup'),
                                ),
                              ),
                              wSizedBox10,
                              TextButton(
                                onPressed: () {
                                  setState(() {
                                    _isLogin = !_isLogin;
                                  });
                                },
                                child: Text(_isLogin
                                    ? 'Create an account'
                                    : "I already have an account."),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
