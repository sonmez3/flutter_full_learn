import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/product/language/language_items.dart';

//6. video sonuna bak main düzeltmeleri için

class TextFieldLearn extends StatefulWidget {
  const TextFieldLearn({super.key});

  @override
  State<TextFieldLearn> createState() => _TextFieldLearnState();
}

class _TextFieldLearnState extends State<TextFieldLearn> {
  final key = GlobalKey();

  FocusNode focusNodeTextFieldOne = FocusNode();
  FocusNode focusNodeTextFieldTwo = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Form(
        child: Column(
          children: [
            TextField(
                maxLength: 20,
                buildCounter: (BuildContext context, {int? currentLength, bool? isFocused, int? maxLength}) {
                  return _animatedContainer(currentLength);
                },
                keyboardType: TextInputType.emailAddress,
                autofillHints: const [AutofillHints.email],
                focusNode: focusNodeTextFieldOne,
                inputFormatters: [TextProjectInputFormmater()._formatter],
                textInputAction: TextInputAction.next,
                //video 6  = 1.28
                decoration: _InputDecorator().emailInput),
            TextFormField(
              focusNode: focusNodeTextFieldTwo,
              maxLines: 4,
              minLines: 2,
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer _animatedContainer(int? currentLength) {
    return AnimatedContainer(
      key: key,
      duration: const Duration(seconds: 1),
      height: 10,
      width: 10.0 * (currentLength ?? 0),
      color: Colors.green,
    );
  }
}

class TextProjectInputFormmater {
  final _formatter = TextInputFormatter.withFunction((oldValue, newValue) {
    if (newValue.text == "a") {
      return oldValue;
    }
    return oldValue;
  });
}

class _InputDecorator {
  final emailInput = const InputDecoration(
    prefixIcon: Icon(Icons.mail),
    border: OutlineInputBorder(),
    //hintText: 'Mail',
    labelText: LanguageItems.mailTitle,
  );
}
