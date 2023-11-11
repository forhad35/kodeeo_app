

import 'package:shared_value/shared_value.dart';

SharedValue<bool> is_log_in = SharedValue(
    value: false, //initial value
    key: "is_log_in"
);
SharedValue<bool> isChecked = SharedValue(
    value: false, //initial value
    key: "isChecked"
);
// SharedValue<bool> isLogin=SharedValue(value: false,key: "isLogin");
// SharedValue<bool> isChecked=SharedValue(value: false,key: "isCheked");
SharedValue<String> sharedEmail=SharedValue(value: "",key: "email");
SharedValue<String> sharedPass=SharedValue(value: "",key: "pass");
