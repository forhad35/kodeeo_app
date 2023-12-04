

import 'package:shared_value/shared_value.dart';

SharedValue<bool> is_log_in = SharedValue(
    value: false, //initial value
    key: "is_log_in"
);
SharedValue<bool> isChecked = SharedValue(
    value: false, //initial value
    key: "isChecked"
);

SharedValue<String> sharedEmail=SharedValue(value: "",key: "email");
SharedValue<String> sharedPass=SharedValue(value: "",key: "pass");
SharedValue<String> userToken=SharedValue(value: "",key: "token");

