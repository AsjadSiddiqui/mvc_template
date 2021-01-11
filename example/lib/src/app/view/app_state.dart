///
/// Copyright (C) 2021 Andrious Solutions Ltd.
///
/// Licensed under the Apache License, Version 2.0 (the "License");
/// you may not use this file except in compliance with the License.
/// You may obtain a copy of the License at
///
/// http://www.apache.org/licenses/LICENSE-2.0
///
/// Unless required by applicable law or agreed to in writing, software
/// distributed under the License is distributed on an "AS IS" BASIS,
/// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
/// See the License for the specific language governing permissions and
/// limitations under the License.
///
///          Created  01 Jan 2021
///

import 'package:starter_app/src/view.dart';

// This is the 'View' of the application. The 'look and feel' of the app.
class MyView extends AppState {
  MyView()
      : super(
          title: I10n.s('Starter App Example'),
          debugShowCheckedModeBanner: false,
          switchUI: Prefs.getBool('switchUI'),
          inHome: () => Prefs.getBool('words')
              ? WordPairs(key: AppState.homeKey)
              : HomePage(key: AppState.homeKey),
        );
}
