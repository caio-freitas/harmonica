import 'package:harmonica/bloc/bloc_home.dart';
import 'package:harmonica/widgets/card_home.dart';
import 'package:flutter/material.dart';

class CarousselScreen extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<CarousselScreen> {
  // int _currentIndex = 0;

  // List cardList = [Item1(), Item2(), Item3(), Item4()];

  // List<T> map<T>(List list, Function handler) {
  //   List<T> result = [];
  //   for (var i = 0; i < list.length; i++) {
  //     result.add(handler(i, list[i]));
  //   }
  //   return result;
  // }

  BlocHome bloc = BlocHome();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [
      CardHome(
        activity_name: "Tone Compare",
        activity_dificulty: "easy as fuck, bud",
      ),
      CardHome(
        activity_name: "Write Chopin's Ballade",
        activity_dificulty: "hard as fuck, bud",
      ),
    ];

    return Scaffold(
      backgroundColor: Color.fromRGBO(25, 22, 62, 1.0),
      body: Container(
        color: Color.fromRGBO(25, 22, 62, 1.0),
        child: Column(
          children: <Widget>[
            //CARD PAGE VIEW
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.03),
              child: Container(
                  constraints: BoxConstraints(
                      maxHeight: MediaQuery.of(context).size.height * 0.55),
                  child: PageView.builder(
                      itemCount: _pages.length,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index) => bloc.pageChange(index: index),
                      itemBuilder: (context, index) {
                        return _pages[index];
                      })),
            ),

            //DOT PAGE
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Container(
                constraints: BoxConstraints(
                    minWidth: 15.0 * _pages.length <=
                            MediaQuery.of(context).size.width
                        ? 15.0 * _pages.length
                        : MediaQuery.of(context).size.width,
                    maxWidth: 15.0 * _pages.length <=
                            MediaQuery.of(context).size.width
                        ? 15.0 * _pages.length
                        : MediaQuery.of(context).size.width,
                    maxHeight: 20.0),
                child: ListView.builder(
                    itemCount: _pages.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: StreamBuilder(
                            stream: bloc.positionPage.stream,
                            builder: (context, snapshot) {
                              return snapshot.hasData
                                  ? CircleAvatar(
                                      radius: 3.5,
                                      backgroundColor: index == snapshot.data
                                          ? Colors.white
                                          : Color.fromRGBO(145, 64, 169, 1.0),
                                    )
                                  : Container();
                            }),
                      );
                    }),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width,
            maxHeight: MediaQuery.of(context).size.height * 0.16),
      ),
    );
  }
}
