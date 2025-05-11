import 'package:intl/intl.dart';

class CurrentDateTime{

  static String updatedDateTime(){
        DateTime currentTime = DateTime.now();
        String updateDate=DateFormat('dd MMM , HH:mm').format(currentTime);
        return updateDate;
  }
}