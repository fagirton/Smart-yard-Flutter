import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Новый дом'),
        ),
        body: Center(
            child: SizedBox(
          width: 300.0,
          height: 400.0,
          child: Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(1000.0),
                    bottomRight: Radius.circular(40.0),
                    topLeft: Radius.circular(40.0),
                    bottomLeft: Radius.circular(40.0))),
            child: Card(
              child: Column(
                children: const [
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        textScaleFactor: 1.5,
                        textAlign: TextAlign.center,
                        'Вход'),
                  ),
                  Center(child: MyStatefulWidget()),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        textAlign: TextAlign.center,
                        'Забыли логин или пароль? Нажмите, чтобы восстановить'),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                        textAlign: TextAlign.center,
                        'Или зарегистируйтесь на нашей платформе'),
                  ),
                ],
              ),
            ),
          ),
        )));
  }
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Card(
            color: Colors.teal[50],
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Логин',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Пожалуйста, введите логин';
                }
                return null;
              },
            ),
          ),
          Card(
            color: Colors.teal[50],
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Пароль',
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Пожалуйста, введите пароль';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  // Validate will return true if the form is valid, or false if
                  // the form is invalid.
                  if (_formKey.currentState!.validate()) {
                    // Process data.
                  }
                },
                child: const Text('Войти'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}
