{ ... }:
let
  defaultlocale = "en_US.UTF-8";
  extralocale = "id_ID.UTF-8";
in
{
  i18n = {
    defaultLocale = "${defaultlocale}";
    extraLocaleSettings = {
      LANGUAGE = "${defaultlocale}";
      LC_ALL = "${extralocale}";
      #LC_TIME = "${extralocale}";
    };
  };
}
