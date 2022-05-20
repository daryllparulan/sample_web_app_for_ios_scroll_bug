import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        inputDecorationTheme: Theme.of(context).inputDecorationTheme.copyWith(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              focusedBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(
                  color: kprimaryColor,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(
                  color: kfontGrayLight,
                ),
              ),
              disabledBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(
                  color: kfontGrayLight,
                ),
              ),
              errorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
              focusedErrorBorder: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                borderSide: BorderSide(
                  color: Colors.red,
                ),
              ),
              hintStyle: const TextStyle(color: kfontGrayLight),
            ),
      ),
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        dragDevices: {
          PointerDeviceKind.mouse,
          PointerDeviceKind.touch,
          PointerDeviceKind.stylus,
        },
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Form(
              key: _formKey,
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 300,
                        maxWidth: 400,
                      ),
                      child: const Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                        'sed do eiusmod tempor incididunt ut labore et dolore '
                        'magna aliqua. Ut enim ad minim veniam',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          height: 1.5,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    vtLargeSizedBox,
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 300,
                        maxWidth: 400,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              'first 2 fields',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kfontGrayLight,
                              ),
                            ),
                          ),
                          vtXSmallSizedBox,
                          Row(
                            children: [
                              Expanded(
                                child: InputTextField(
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto,
                                  maxLength: 100,
                                  counterText: '',
                                  validator: (val) {
                                    if (val == null || val.isEmpty) {
                                      return sRequiredError;
                                    }
                                    return null;
                                  },
                                  hintText: 'first field',
                                ),
                              ),
                              hrSmallSizedBox,
                              Expanded(
                                child: InputTextField(
                                  floatingLabelBehavior:
                                      FloatingLabelBehavior.auto,
                                  maxLength: 100,
                                  counterText: '',
                                  validator: (val) {
                                    if (val == null || val.isEmpty) {
                                      return sRequiredError;
                                    }
                                    return null;
                                  },
                                  hintText: 'second field',
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    vtLargeSizedBox,
                    ConstrainedBox(
                      constraints: const BoxConstraints(
                        minWidth: 300,
                        maxWidth: 400,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(bottom: 5.0),
                            child: Text(
                              'other fields',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: kfontGrayLight,
                              ),
                            ),
                          ),
                          vtXSmallSizedBox,
                          InputTextField(
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            maxLength: 100,
                            counterText: '',
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return sRequiredError;
                              }
                              return null;
                            },
                            hintText: '3rd field',
                          ),
                          vtMediumSizedBox,
                          const InputTextField(
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            maxLength: 100,
                            counterText: '',
                            hintText: '4th field',
                          ),
                          vtMediumSizedBox,
                          InputTextField(
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            maxLength: 100,
                            counterText: '',
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return sRequiredError;
                              }
                              return null;
                            },
                            hintText: '5th field',
                          ),
                          vtMediumSizedBox,
                          InputTextField(
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            maxLength: 100,
                            counterText: '',
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return sRequiredError;
                              }
                              return null;
                            },
                            hintText: '6th field',
                          ),
                          vtMediumSizedBox,
                          InputTextField(
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            maxLength: 100,
                            counterText: '',
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return sRequiredError;
                              }
                              return null;
                            },
                            hintText: '7th field',
                          ),
                          vtMediumSizedBox,
                          InputTextField(
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            maxLength: 100,
                            counterText: '',
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return sRequiredError;
                              }
                              return null;
                            },
                            hintText: '8th field',
                          ),
                          vtMediumSizedBox,
                          InputTextField(
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            maxLength: 100,
                            counterText: '',
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return sRequiredError;
                              }
                              return null;
                            },
                            hintText: '9th field',
                          ),
                          vtMediumSizedBox,
                          InputTextField(
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            maxLength: 100,
                            counterText: '',
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return sRequiredError;
                              }
                              return null;
                            },
                            hintText: '10th field',
                          ),
                          vtMediumSizedBox,
                          InputTextField(
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            maxLength: 100,
                            counterText: '',
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return sRequiredError;
                              }
                              return null;
                            },
                            hintText: '11th field',
                          ),
                          vtMediumSizedBox,
                          InputTextField(
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                            maxLength: 100,
                            counterText: '',
                            validator: (val) {
                              if (val == null || val.isEmpty) {
                                return sRequiredError;
                              }
                              return null;
                            },
                            hintText: '12th field',
                          ),
                        ],
                      ),
                    ),
                    vtLargeSizedBox,
                    ElevatedButton(
                      onPressed: () {
                        _formKey.currentState!.validate();
                      },
                      child: Text('test'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class InputTextField extends StatefulWidget {
  final String? hintText;
  final double? maxWidth;
  final String? Function(String?)? validator;
  final int? maxLength;
  final String? counterText;
  final FloatingLabelBehavior? floatingLabelBehavior;
  const InputTextField({
    Key? key,
    this.hintText,
    this.maxWidth,
    this.validator,
    this.maxLength,
    this.counterText,
    this.floatingLabelBehavior,
  }) : super(key: key);

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: widget.maxLength,
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: widget.floatingLabelBehavior == FloatingLabelBehavior.auto ||
                widget.floatingLabelBehavior == FloatingLabelBehavior.always
            ? null
            : widget.hintText ?? '',
        counterText: widget.counterText,
        floatingLabelBehavior: widget.floatingLabelBehavior,
        labelText:
            widget.floatingLabelBehavior != null ? widget.hintText : null,
      ),
      textInputAction: TextInputAction.next,
    );
  }
}

const Color kprimaryColor = Color.fromARGB(255, 0, 255, 21);
const Color kfontGrayLight = Color(0xFFABABAB);

const String sRequiredError = '*required';

/// sizedBoxed
const SizedBox vtXSmallSizedBox = SizedBox(height: 5);
const SizedBox vtSmallSizedBox = SizedBox(height: 10);
const SizedBox vtMediumSizedBox = SizedBox(height: 20);
const SizedBox vtLargeSizedBox = SizedBox(height: 35);
const SizedBox hrSmallSizedBox = SizedBox(width: 15);
const SizedBox hrMediumSizedBox = SizedBox(width: 25);
const SizedBox hrLargeSizedBox = SizedBox(width: 50);
