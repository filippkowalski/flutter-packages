part of fk_phone_utils;

class PhonePrefixProvider {
  final _countriesRepository = CountriesRepository();

  String get() {
    final List<Locale> systemLocales = WidgetsBinding.instance.window.locales;
    final String isoCountryCode = systemLocales.first.countryCode;

    final countries = _countriesRepository.getCountries();
    for (final country in countries) {
      if (country.code == isoCountryCode) {
        return country.dialCode;
      }
    }

    return '+1';
  }
}
