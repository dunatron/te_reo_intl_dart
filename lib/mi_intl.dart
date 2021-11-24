import 'dart:async';

import 'package:intl/intl.dart' as intl;
import 'package:intl/date_symbols.dart' as intl;
import 'package:intl/date_symbol_data_custom.dart' as date_symbol_data_custom;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

/// A custom set of date patterns for the `mi` locale.
///
/// These are not accurate and are just a clone of the date patterns for the
/// `no` locale to demonstrate how one would write and use custom date patterns.
// #docregion Date
const miLocaleDatePatterns = {
  'd': 'd.',
  'E': 'ccc',
  'EEEE': 'cccc',
  'LLL': 'LLL',
// #enddocregion Date
  'LLLL': 'LLLL',
  'M': 'L.',
  'Md': 'd.M.',
  'MEd': 'EEE d.M.',
  'MMM': 'LLL',
  'MMMd': 'd. MMM',
  'MMMEd': 'EEE d. MMM',
  'MMMM': 'LLLL',
  'MMMMd': 'd. MMMM',
  'MMMMEEEEd': 'EEEE d. MMMM',
  'QQQ': 'QQQ',
  'QQQQ': 'QQQQ',
  'y': 'y',
  'yM': 'M.y',
  'yMd': 'd.M.y',
  'yMEd': 'EEE d.MM.y',
  'yMMM': 'MMM y',
  'yMMMd': 'd. MMM y',
  'yMMMEd': 'EEE d. MMM y',
  'yMMMM': 'MMMM y',
  'yMMMMd': 'd. MMMM y',
  'yMMMMEEEEd': 'EEEE d. MMMM y',
  'yQQQ': 'QQQ y',
  'yQQQQ': 'QQQQ y',
  'H': 'HH',
  'Hm': 'HH:mm',
  'Hms': 'HH:mm:ss',
  'j': 'HH',
  'jm': 'HH:mm',
  'jms': 'HH:mm:ss',
  'jmv': 'HH:mm v',
  'jmz': 'HH:mm z',
  'jz': 'HH z',
  'm': 'm',
  'ms': 'mm:ss',
  's': 's',
  'v': 'v',
  'z': 'z',
  'zzzz': 'zzzz',
  'ZZZZ': 'ZZZZ',
};

/// A custom set of date symbols for the `mi` locale.
///
/// These are not accurate and are just a clone of the date symbols for the
/// `no` locale to demonstrate how one would write and use custom date symbols.
// #docregion Date2
const miDateSymbols = {
  'NAME': 'mi',
  'ERAS': <dynamic>[
    'f.Kr.',
    'e.Kr.',
  ],
// #enddocregion Date2
  'ERANAMES': <dynamic>[
    'før Kristus',
    'etter Kristus',
  ],
  'NARROWMONTHS': <dynamic>[
    'J',
    'F',
    'M',
    'A',
    'M',
    'J',
    'J',
    'A',
    'S',
    'O',
    'N',
    'D',
  ],
  'STANDALONENARROWMONTHS': <dynamic>[
    'J',
    'F',
    'M',
    'A',
    'M',
    'J',
    'J',
    'A',
    'S',
    'O',
    'N',
    'D',
  ],
  'MONTHS': <dynamic>[
    'Kohi-tātea',
    'Hui-tanguru',
    'Poutū-te-rangi',
    'Paenga-whāwhā',
    'Haratua',
    'Pipiri',
    'Hōngongoi',
    'Here-turi-kōkā',
    'Mahuru',
    'Whiringa-ā-nuku',
    'Whiringa-ā-rangi',
    'Hakihea',
  ],
  'STANDALONEMONTHS': <dynamic>[
    'kohi-tātea',
    'hui-tanguru',
    'poutū-te-rangi',
    'paenga-whāwhā',
    'haratua',
    'pipiri',
    'hōngongoi',
    'here-turi-kōkā',
    'mahuru',
    'whiringa-ā-nuku',
    'whiringa-ā-rangi',
    'hakihea',
  ],
  'SHORTMONTHS': <dynamic>[
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Okt',
    'Nov',
    'Dec',
  ],
  'STANDALONESHORTMONTHS': <dynamic>[
    'jan',
    'feb',
    'mar',
    'apr',
    'mai',
    'jun',
    'jul',
    'aug',
    'sep',
    'okt',
    'nov',
    'des',
  ],
  'WEEKDAYS': <dynamic>[
    'Rātapu', // sunday
    'Rāhina',
    'Rātū',
    'Rāapa',
    'Rāpare',
    'Rāmere',
    'Rāhoroi', // saturday
  ],
  'STANDALONEWEEKDAYS': <dynamic>[
    'rātapu', // sunday
    'rāhina',
    'rātū',
    'rāapa',
    'rāpare',
    'rāmere',
    'rāhoroi', // saturd
  ],
  'SHORTWEEKDAYS': <dynamic>[
    'Sun',
    'Mon',
    'Tue',
    'Wed',
    'Thu',
    'Fri',
    'Sat',
  ],
  'STANDALONESHORTWEEKDAYS': <dynamic>[
    'Sun.',
    'Mon.',
    'Tue.',
    'Wed.',
    'Thu.',
    'Fri.',
    'Sat.',
  ],
  'NARROWWEEKDAYS': <dynamic>[
    'S',
    'M',
    'T',
    'O',
    'T',
    'F',
    'L',
  ],
  'STANDALONENARROWWEEKDAYS': <dynamic>[
    'S',
    'M',
    'T',
    'O',
    'T',
    'F',
    'L',
  ],
  'SHORTQUARTERS': <dynamic>[
    'K1',
    'K2',
    'K3',
    'K4',
  ],
  'QUARTERS': <dynamic>[
    '1. hauwhā',
    '2. hauwhā',
    '3. hauwhā',
    '4. hauwhā',
  ],
  'AMPMS': <dynamic>[
    'a.m.',
    'p.m.',
  ],
  'DATEFORMATS': <dynamic>[
    'EEEE d. MMMM y',
    'd. MMMM y',
    'd. MMM y',
    'dd.MM.y',
  ],
  'TIMEFORMATS': <dynamic>[
    'HH:mm:ss zzzz',
    'HH:mm:ss z',
    'HH:mm:ss',
    'HH:mm',
  ],
  'AVAILABLEFORMATS': null,
  'FIRSTDAYOFWEEK': 0,
  'WEEKENDRANGE': <dynamic>[
    5,
    6,
  ],
  'FIRSTWEEKCUTOFFDAY': 3,
  'DATETIMEFORMATS': <dynamic>[
    '{1} {0}',
    '{1} \'kl\'. {0}',
    '{1}, {0}',
    '{1}, {0}',
  ],
};

// #docregion Delegate
class _MiMaterialLocalizationsDelegate
    extends LocalizationsDelegate<MaterialLocalizations> {
  const _MiMaterialLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => locale.languageCode == 'mi';

  @override
  Future<MaterialLocalizations> load(Locale locale) async {
    final String localeName = intl.Intl.canonicalizedLocale(locale.toString());

    // The locale (in this case `mi`) needs to be initialized into the custom
    // date symbols and patterns setup that Flutter uses.
    date_symbol_data_custom.initializeDateFormattingCustom(
      locale: localeName,
      patterns: miLocaleDatePatterns,
      symbols: intl.DateSymbols.deserializeFromMap(miDateSymbols),
    );

    return SynchronousFuture<MaterialLocalizations>(
      MiMaterialLocalizations(
        localeName: localeName,
        // The `intl` library's NumberFormat class is generated from CLDR data
        // (see https://github.com/dart-lang/intl/blob/master/lib/number_symbols_data.dart).
        // Unfortunately, there is no way to use a locale that isn't defined in
        // this map and the only way to work around this is to use a listed
        // locale's NumberFormat symbols. So, here we use the number formats
        // for 'en_US' instead.
        decimalFormat: intl.NumberFormat('#,##0.###', 'en_US'),
        twoDigitZeroPaddedFormat: intl.NumberFormat('00', 'en_US'),
        // DateFormat here will use the symbols and patterns provided in the
        // `date_symbol_data_custom.initializeDateFormattingCustom` call above.
        // However, an alternative is to simply use a supported locale's
        // DateFormat symbols, similar to NumberFormat above.
        fullYearFormat: intl.DateFormat('y', localeName),
        compactDateFormat: intl.DateFormat('yMd', localeName),
        shortDateFormat: intl.DateFormat('yMMMd', localeName),
        mediumDateFormat: intl.DateFormat('EEE, MMM d', localeName),
        longDateFormat: intl.DateFormat('EEEE, MMMM d, y', localeName),
        yearMonthFormat: intl.DateFormat('MMMM y', localeName),
        shortMonthDayFormat: intl.DateFormat('MMM d'),
      ),
    );
  }

  @override
  bool shouldReload(_MiMaterialLocalizationsDelegate old) => false;
}
// #enddocregion Delegate

/// A custom set of localizations for the 'mi' locale. In this example, only
/// the value for openAppDrawerTooltip was modified to use a custom message as
/// an example. Everything else uses the American English (en_US) messages
/// and formatting.
class MiMaterialLocalizations extends GlobalMaterialLocalizations {
  const MiMaterialLocalizations({
    String localeName = 'mi',
    required intl.DateFormat fullYearFormat,
    required intl.DateFormat compactDateFormat,
    required intl.DateFormat shortDateFormat,
    required intl.DateFormat mediumDateFormat,
    required intl.DateFormat longDateFormat,
    required intl.DateFormat yearMonthFormat,
    required intl.DateFormat shortMonthDayFormat,
    required intl.NumberFormat decimalFormat,
    required intl.NumberFormat twoDigitZeroPaddedFormat,
  }) : super(
          localeName: localeName,
          fullYearFormat: fullYearFormat,
          compactDateFormat: compactDateFormat,
          shortDateFormat: shortDateFormat,
          mediumDateFormat: mediumDateFormat,
          longDateFormat: longDateFormat,
          yearMonthFormat: yearMonthFormat,
          shortMonthDayFormat: shortMonthDayFormat,
          decimalFormat: decimalFormat,
          twoDigitZeroPaddedFormat: twoDigitZeroPaddedFormat,
        );

// #docregion Getters
  @override
  String get moreButtonTooltip => r'Ētahi atu';

  @override
  String get aboutListTileTitleRaw => r'Mō $applicationName';

  @override
  String get alertDialogLabel => r'Matohi';
// #enddocregion Getters

  @override
  String get anteMeridiemAbbreviation => r'AM';

  @override
  String get backButtonTooltip => r'Whakamuri';

  @override
  String get cancelButtonLabel => r'Whakakore';

  @override
  String get closeButtonLabel => r'KATIA';

  @override
  String get closeButtonTooltip => r'Katia';

  @override
  String get collapsedIconTapHint => r'Whakanuia';

  @override
  String get continueButtonLabel => r'TONU';

  @override
  String get copyButtonLabel => r'KAUPAPA';

  @override
  String get cutButtonLabel => r'KAUPAPA/CUT'; // copy and cut are same thing?

  @override
  String get deleteButtonTooltip => r'Mukua';

  @override
  String get dialogLabel => r'Kōrerorero';

  @override
  String get drawerLabel => r'Tahua whakatere';

  @override
  String get expandedIconTapHint => r'Tiango';

  @override
  String get firstPageTooltip => r'Whārangi tuatahi';

  @override
  String get hideAccountsLabel => r'Huna pūkete';

  @override
  String get lastPageTooltip => r'Whārangi whakamutunga';

  @override
  String get licensesPageTitle => r'Raihana';

  @override
  String get modalBarrierDismissLabel => r'Whakakore';

  @override
  String get nextMonthTooltip => r'A tera marama';

  @override
  String get nextPageTooltip => r'Whārangi o muri';

  @override
  String get okButtonLabel => r'PAI';

  @override
  // A custom drawer tooltip message.
  // Open App Drawer
  String get openAppDrawerTooltip => r'Whakatuwherahia te App Drawer';

// #docregion Raw
  @override
  String get pageRowsInfoTitleRaw => r'$firstRow–$lastRow of $rowCount';

  @override
  String get pageRowsInfoTitleApproximateRaw =>
      r'$firstRow–$lastRow of about $rowCount';
// #enddocregion Raw

  @override
  String get pasteButtonLabel => r'Whakapiri';

  @override
  String get popupMenuLabel => r'Tahua pahūake';

  @override
  String get postMeridiemAbbreviation => r'PM';

  @override
  String get previousMonthTooltip => r'Marama o mua';

  @override
  String get previousPageTooltip => r'Whārangi o mua';

  @override
  String get refreshIndicatorSemanticLabel => r'Tāmata';

  @override
  String? get remainingTextFieldCharacterCountFew => null;

  @override
  String? get remainingTextFieldCharacterCountMany => null;

  @override
  String get remainingTextFieldCharacterCountOne => r'1 pūāhua e toe ana';

  @override
  String get remainingTextFieldCharacterCountOther =>
      r'$remainingCount characters remaining';

  @override
  String? get remainingTextFieldCharacterCountTwo => null;

  @override
  String get remainingTextFieldCharacterCountZero =>
      r'Karekau he tohu e toe ana';

  @override
  String get reorderItemDown => r'Nuku ki raro';

  @override
  String get reorderItemLeft => r'Nuku maui';

  @override
  String get reorderItemRight => r'Nuku matau';

  @override
  String get reorderItemToEnd => r'Nuku ki te mutunga';

  @override
  String get reorderItemToStart => r'Nuku ki te timatanga';

  @override
  String get reorderItemUp => r'Neke ki runga';

  @override
  String get rowsPerPageTitle => r'Nga rarangi mo ia wharangi:';

  @override
  ScriptCategory get scriptCategory => ScriptCategory.englishLike;

  @override
  String get searchFieldLabel => r'Rapu';

  @override
  String get selectAllButtonLabel => r'TOKO KATOA';

  @override
  String? get selectedRowCountTitleFew => null;

  @override
  String? get selectedRowCountTitleMany => null;

  @override
  String get selectedRowCountTitleOne => r'1 te mea kua tohua';

  @override
  String get selectedRowCountTitleOther => r'$selectedRowCount tūemi kua tohua';

  @override
  String? get selectedRowCountTitleTwo => null;

  @override
  String get selectedRowCountTitleZero => r'Karekau he tuemi i tohua';

  @override
  String get showAccountsLabel => r'Whakaatuhia nga kaute';

  @override
  String get showMenuTooltip => r'Whakaatu tahua';

  @override
  String get signedInLabel => r'Kua hainatia';

  @override
  String get tabLabelRaw => r'Ripa $tabIndex o $tabCount';

  @override
  TimeOfDayFormat get timeOfDayFormatRaw => TimeOfDayFormat.h_colon_mm_space_a;

  @override
  String get timePickerHourModeAnnouncement => r'Tīpakohia ngā hāora';

  @override
  String get timePickerMinuteModeAnnouncement => r'Tīpako meneti';

  @override
  String get viewLicensesButtonLabel => r'Tirohanga Raihana';

  @override
  List<String> get narrowWeekdays =>
      const <String>['S', 'M', 'T', 'W', 'T', 'F', 'S'];

  @override
  int get firstDayOfWeekIndex => 0;

  static const LocalizationsDelegate<MaterialLocalizations> delegate =
      _MiMaterialLocalizationsDelegate();

  @override
  String get calendarModeButtonLabel => r'Huri ki te maramataka';

  @override
  String get dateHelpText => r'mm/dd/yyyy';

  @override
  String get dateInputLabel => r'Whakauruhia te Ra';

  @override
  String get dateOutOfRangeLabel => r'Kei waho o te awhe.';

  @override
  String get datePickerHelpText => r'KŌWHIRINGA TE RĀ';

  @override
  String get dateRangeEndDateSemanticLabelRaw => r'Te ra mutunga $fullDate';

  @override
  String get dateRangeEndLabel => r'Te ra mutunga';

  @override
  String get dateRangePickerHelpText => 'TE WHARE KORERO';

  @override
  String get dateRangeStartDateSemanticLabelRaw => 'Te ra timata \$fullDate';

  @override
  String get dateRangeStartLabel => 'Rā Tīmata';

  @override
  String get dateSeparator => '/';

  @override
  String get dialModeButtonLabel => 'Hurihia ki te aratau kaikowhiri waea';

  @override
  String get inputDateModeButtonLabel => 'Huri ki te whakauru';

  @override
  String get inputTimeModeButtonLabel => 'Hurihia ki te aratau whakauru kupu';

  @override
  String get invalidDateFormatLabel => 'He muhu te whakatakotoranga.';

  @override
  String get invalidDateRangeLabel => 'Awhe muhu.';

  @override
  String get invalidTimeLabel => 'Whakauruhia he wa whaimana';

  @override
  String get licensesPackageDetailTextOther => '\$licenseCount raihana';

  @override
  String get saveButtonLabel => 'Tiaki';

  @override
  String get selectYearSemanticsLabel => 'Tīpakohia te tau';

  @override
  String get timePickerDialHelpText => 'WHAKATAKI WAA';

  @override
  String get timePickerHourLabel => 'Haora';

  @override
  String get timePickerInputHelpText => 'TOMO TE WA';

  @override
  String get timePickerMinuteLabel => 'Te meneti';

  @override
  String get unspecifiedDate => 'Rā';

  @override
  String get unspecifiedDateRange => 'Awhe Ra';
}
