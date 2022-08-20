import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'hi'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? hiText = '',
  }) =>
      [enText, hiText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.toString());

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'dmmzov8q': {
      'en': 'Hello World',
      'hi': 'नमस्ते दुनिया',
    },
    'katlr8gb': {
      'en': 'Hello World',
      'hi': 'नमस्ते दुनिया',
    },
    'g497n4bp': {
      'en': 'Hello World',
      'hi': 'नमस्ते दुनिया',
    },
    'bzkbaxst': {
      'en': 'Hindi',
      'hi': 'हिन्दी',
    },
    'naub0arz': {
      'en': 'English',
      'hi': 'अंग्रेज़ी',
    },
    'rm50xw7c': {
      'en': 'Logout',
      'hi': 'लॉग आउट',
    },
    'a9bmhov8': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // Login
  {
    'nb0r66kq': {
      'en': 'Welcome Back!',
      'hi': 'वापसी पर स्वागत है!',
    },
    'uid30dar': {
      'en': 'Use the form below to access your account.',
      'hi': 'अपने खाते तक पहुंचने के लिए नीचे दिए गए फॉर्म का प्रयोग करें।',
    },
    'vpbpicfa': {
      'en': 'Email Address',
      'hi': 'ईमेल पता',
    },
    'mv91rbl3': {
      'en': 'Enter your email here...',
      'hi': 'अपना ई मेल यहा भरे...',
    },
    'axk2vrt4': {
      'en': 'Password',
      'hi': 'पासवर्ड',
    },
    'boiu5cdz': {
      'en': 'Enter your email here...',
      'hi': 'अपना ई मेल यहा भरे...',
    },
    'ul4cffk9': {
      'en': 'Forgot Password?',
      'hi': 'पासवर्ड भूल गए?',
    },
    'pgf0eftq': {
      'en': 'Login',
      'hi': 'लॉग इन करें',
    },
    'vsbdprsp': {
      'en': 'Use a social platform to continue',
      'hi': 'जारी रखने के लिए एक सामाजिक मंच का उपयोग करें',
    },
    't0czxirg': {
      'en': 'Don\'t have an account?',
      'hi': 'खाता नहीं है?',
    },
    'd95dghes': {
      'en': 'Create Account',
      'hi': 'खाता बनाएं',
    },
    '7s7ayyuk': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // SignUp
  {
    'wqa0fuae': {
      'en': 'Get Started',
      'hi': 'शुरू हो जाओ',
    },
    'bxmvup5m': {
      'en': 'Use the form below to get started.',
      'hi': 'आरंभ करने के लिए नीचे दिए गए फॉर्म का प्रयोग करें।',
    },
    'wqp00lit': {
      'en': 'Email Address',
      'hi': 'ईमेल पता',
    },
    'tq4fdt3q': {
      'en': 'Enter your email here...',
      'hi': 'अपना ई मेल यहा भरे...',
    },
    'm9jx7aa2': {
      'en': 'Password',
      'hi': 'पासवर्ड',
    },
    'ffzl0eny': {
      'en': 'Enter your email here...',
      'hi': 'अपना ई मेल यहा भरे...',
    },
    'a94v6d1g': {
      'en': 'Confirm Password',
      'hi': 'पासवर्ड की पुष्टि कीजिये',
    },
    '0ty0c0hv': {
      'en': 'Enter your email here...',
      'hi': 'अपना ई मेल यहा भरे...',
    },
    '1589plaf': {
      'en': 'Create Account',
      'hi': 'खाता बनाएं',
    },
    'qng3y8ny': {
      'en': 'Use a social platform to continue',
      'hi': 'जारी रखने के लिए एक सामाजिक मंच का उपयोग करें',
    },
    'glwmzkmb': {
      'en': 'Already have an account?',
      'hi': 'क्या आपके पास पहले से एक खाता मौजूद है?',
    },
    'vfh257ro': {
      'en': 'Log In',
      'hi': 'लॉग इन करें',
    },
    '8zv2ycuj': {
      'en': 'Home',
      'hi': 'घर',
    },
  },
  // Primee
  {
    'vkfoeut2': {
      'en': 'Click Here',
      'hi': '',
    },
    'qygs93d9': {
      'en': 'Home',
      'hi': '',
    },
  },
  // Miscellaneous
  {
    '2ux0k92u': {
      'en': '',
      'hi': '',
    },
    'ubm08fj4': {
      'en': '',
      'hi': '',
    },
    'rf9dni2m': {
      'en': '',
      'hi': '',
    },
    'rglmru0i': {
      'en': '',
      'hi': '',
    },
    'cyma1hx1': {
      'en': '',
      'hi': '',
    },
    'cro8p2jz': {
      'en': '',
      'hi': '',
    },
    'nb9qpklm': {
      'en': '',
      'hi': '',
    },
    'scws08yu': {
      'en': '',
      'hi': '',
    },
    '9n3260eu': {
      'en': '',
      'hi': '',
    },
    'djli95pg': {
      'en': '',
      'hi': '',
    },
    'kpb9vxhj': {
      'en': '',
      'hi': '',
    },
    'p5h4ru94': {
      'en': '',
      'hi': '',
    },
    'yehyybbs': {
      'en': '',
      'hi': '',
    },
    'bx34a4s5': {
      'en': '',
      'hi': '',
    },
    'dmh9phnl': {
      'en': '',
      'hi': '',
    },
    'b9em5ekj': {
      'en': '',
      'hi': '',
    },
    'j511b1tg': {
      'en': '',
      'hi': '',
    },
    '4qvbly3c': {
      'en': '',
      'hi': '',
    },
    'fzk6vgrf': {
      'en': '',
      'hi': '',
    },
    'fklprisx': {
      'en': '',
      'hi': '',
    },
    'm1l40mco': {
      'en': '',
      'hi': '',
    },
    '5bvwuatk': {
      'en': '',
      'hi': '',
    },
  },
].reduce((a, b) => a..addAll(b));
