import 'package:flutter/material.dart';
import 'package:pos/components/text.dart';
import '../components/dropdown.dart';
import '../components/input_text.dart';
import '../components/input_password.dart';
import '../components/primary_button.dart';
import '../components/radio_input.dart';
import '../components/secondary_button.dart';

class SchedulingPage extends StatefulWidget {
  SchedulingPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _SchedulingPageState createState() => _SchedulingPageState();
}

class _SchedulingPageState extends State<SchedulingPage> {
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
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff1684BA),
        toolbarHeight: MediaQuery.of(context).size.height * 0.15,
        title: Row(
          children: [
            GestureDetector(
              child: Icon(Icons.arrow_back_ios),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Expanded(
              child: Center(
                child: Text(
                  widget.title.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1.1,
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
                  Text(
                    'Sobre a Consulta                                                           ',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 15)),
                  Text(
                    'A consulta poderá ser desmarcada no máximo com 24 horas de antecedência\n',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 15)),
                  Text(
                    'Escolher Veterinário                                                      ',
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 65,
                    width: MediaQuery.of(context).size.width,
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
                  DropDownWidget('Mês'),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  DropDownWidget('Dia'),
                  Padding(padding: EdgeInsets.only(top: 10)),
                  DropDownWidget('Hora'),
                  Padding(padding: EdgeInsets.only(top: 20)),
                  DropDownWidget('QUAL PET?'),
                  Padding(padding: EdgeInsets.only(top: 30)),
                  PrimaryButtonWidget('Agendar Vacinação')
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
