import 'package:flutter/widgets.dart';

class MainScreenProvider with ChangeNotifier{
    int index = 0;
    PageController controller = PageController(initialPage: 0);
}