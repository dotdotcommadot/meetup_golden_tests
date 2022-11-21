import 'package:flutter/material.dart';

const _languageCode = 'en';
const _packageName = 'maas_wl_spend_skipr';

Widget createTestApp(Widget child) => MaterialApp(
      theme: ThemeData.light(),
      locale: const Locale(_languageCode),
    );
