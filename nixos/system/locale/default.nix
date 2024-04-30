{ ... }:
let
  defaultlocale = "en_US.UTF-8";
in
{
  i18n = {
    defaultLocale = "${defaultlocale}";
  };
}
