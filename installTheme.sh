#!/bin/bash
echo "Choose theme (lumberjack, default)";
read theme;
echo "Using theme: $theme";
if [ "$theme" = "lumberjack" ] ; then 
  git clone https://github.com/MrkKr/wp_lumberjack_boilerplate ./wordpress/wp-content/themes/lumberjack-theme ;
  cd wordpress/wp-content/themes/lumberjack-theme;
  composer require rareloop/lumberjack-core;
  rm -Rf .git
else
  git clone https://github.com/MrkKr/wp_boilerplate ./wordpress/wp-content/themes/default-theme ;
  cd wordpress/wp-content/themes/default-theme;
  rm -Rf .git
fi
chmod -R 777 ../../../../wordpress;
echo "Ready setting up your theme";
