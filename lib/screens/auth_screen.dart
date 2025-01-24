import 'package:flutter/material.dart';
import 'package:flutter_freiwillig_app/services/auth_service.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _form = GlobalKey<FormState>();
  final AuthService _authService = AuthService();

  var _enteredUserName = '';
  var _enteredPassword = '';
  var _isAuthenticating = false;

  void _submit() async {
    final isValid = _form.currentState!.validate();

    if (!isValid) {
      return;
    }

    _form.currentState!.save();

    // try {
    //   setState(() {
    //     _isAuthenticating = true;
    //   });

    //   AuthService authService = AuthService();
    //   var token =
    //       await authService.loginUser(_enteredUserName, _enteredPassword);

    //   if (token.isNotEmpty) {
    //     _authService.saveToken(token);
    //     Navigator.of(context).pushReplacement(
    //       MaterialPageRoute(
    //         builder: (context) => const MyHomePage(),
    //       ),
    //     );
    //   } else {
    //     ScaffoldMessenger.of(context).showSnackBar(
    //       const SnackBar(
    //           content: Text("Istifadəçi adı və ya şifrə yanlışdır!")),
    //     );
    //   }
    // } catch (e) {
    //   // if (e. == 'The email address is already in use by another account') {}

    //   // ScaffoldMessenger.of(context).clearSnackBars();
    //   // ScaffoldMessenger.of(context).showSnackBar(
    //   //   SnackBar(
    //   //     content: Text(e ?? 'Authentication failed'),
    //   //   ),
    //   // );
    //   // setState(() {
    //   //   _isAuthenticating = false;
    //   // });
    // }
  }

  @override
  Widget build(BuildContext context) {
    bool obscureText = true;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Theme.of(context).colorScheme.primary,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.blue.shade700,
              Colors.blue.shade400,
              Colors.blue.shade100,
            ],
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          )),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      bottom: 20,
                      left: 20,
                      right: 20,
                    ),
                    width: 200,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/FHNLogo.png'),
                        const SizedBox(height: 10),
                        const Text(
                          "FÖVQƏLADƏ HALLAR KÖNÜLLÜLƏRİ",
                          style: TextStyle(
                            color: Color(0xFF0093E1),
                            fontWeight: FontWeight.w900,
                            fontSize: 15,
                            letterSpacing: 3,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.all(20),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Form(
                          key: _form,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  labelText: 'İstifadəçi adınızı daxil edin',
                                ),
                                keyboardType: TextInputType.text,
                                autocorrect: false,
                                textCapitalization: TextCapitalization.none,
                                validator: (value) {
                                  if (value == null || value.trim().isEmpty
                                      // ||
                                      // !value.contains('@')
                                      ) {
                                    return 'Please enter a valid username.';
                                  }
                                  return null;
                                },
                                onSaved: (newValue) {
                                  _enteredUserName = newValue!;
                                },
                              ),
                              TextFormField(
                                decoration: InputDecoration(
                                    labelText: 'Şifrənizi daxil edin',
                                    suffixIcon: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          obscureText = !obscureText;
                                        });
                                      },
                                      icon: Icon(
                                        obscureText
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                      ),
                                    )),
                                obscureText: obscureText,
                                validator: (value) {
                                  if (value == null ||
                                      value.trim().length < 6) {
                                    return 'Password must be at least 6 characters long.';
                                  }
                                  return null;
                                },
                                onSaved: (newValue) {
                                  _enteredPassword = newValue!;
                                },
                              ),
                              const SizedBox(height: 12),
                              if (_isAuthenticating)
                                const CircularProgressIndicator(),
                              if (!_isAuthenticating)
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.blueAccent[100]),
                                  onPressed: () {
                                    _submit();
                                  },
                                  child: const Text('Daxil ol'),
                                ),
                              // if (!_isAuthenticating)
                              //   TextButton(
                              //     onPressed: () {},
                              //     child: const Text('I already have an account'),
                              //   )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
