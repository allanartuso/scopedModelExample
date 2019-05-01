import '../models/helloModel.dart';
import 'package:scoped_model/scoped_model.dart';

mixin HelloModel on Model {
  Hello _data = Hello(title: "Hello scopedModel!", description: "z");

  Hello get data {
    return _data;
  }

  changeData({title, description}) {
    _data = Hello(title: title, description: description);
    notifyListeners();
  }
}
