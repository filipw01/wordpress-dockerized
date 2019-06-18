#!/bin/bash
echo "Choose theme (lumberjack, default)";
read theme;
echo "Using theme: $theme";
chmod 755 wordpress mysql -R;
if [ "$theme" = "lumberjack" ] ; then 
  git clone https://github.com/MrkKr/wp_lumberjack_boilerplate ./wordpress/wp-content/themes/lumberjack-theme ;
  cd wordpress/wp-content/themes/lumberjack-theme;
  composer require rareloop/lumberjack-core;
else
  git clone https://github.com/MrkKr/wp_boilerplate ./wordpress/wp-content/themes/default-theme ;
  cd wordpress/wp-content/themes/default-theme;
fi
echo "Ready setting up your theme";