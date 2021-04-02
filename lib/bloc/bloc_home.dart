import 'package:rxdart/rxdart.dart';

class BlocHome {
  var positionPage = BehaviorSubject<int>();

  void pageChange({int index}) {
    positionPage.sink.add(index);
  }
}
