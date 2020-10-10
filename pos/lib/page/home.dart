import 'package:flutter/material.dart';
import 'package:pos/components/text.dart';
import '../components/dropdown.dart';
import '../components/input_text.dart';
import '../components/input_password.dart';
import '../components/primary_button.dart';
import '../components/radio_input.dart';
import '../components/secondary_button.dart';
import '../page/scheduling.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<RadioModel> sampleData = new List<RadioModel>();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    sampleData.add(new RadioModel(false, 'A', 'Sim'));
    sampleData.add(new RadioModel(false, 'B', 'Não'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SafeArea(
            top: true,
            bottom: true,
            left: true,
            right: true,
            minimum: EdgeInsets.all(20.0),
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  DropDownWidget('Dropdown'),
                  TextInputWidget('Texto'),
                  PasswordInputText('Senha'),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  PrimaryButtonWidget('Primary Button'),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  SecondaryButtonWidget('Secondary Button'),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: new ListView.builder(
                        itemCount: sampleData.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                sampleData.forEach(
                                    (element) => element.isSelected = false);
                                sampleData[index].isSelected = true;
                              });
                            },
                            child: new RadioItem(sampleData[index]),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 50)),
                  FlatButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              SchedulingPage(title: 'Agendar\nVacinação'),
                        ),
                      );
                    },
                    child: Text('Ir para tela'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
