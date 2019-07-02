#!/bin/bash
echo "Choose theme (lumberjack, default)";
read theme;
echo "Using theme: $theme";
if [ "$theme" = "lumberjack" ] ; then 
  git clone https://github.com/MrkKr/wp_lumberjack_boilerplate ./wordpress/wp-content/themes/lumberjack-theme ;
  cd wordpress/wp-content/themes/lumberjack-theme;
  composer require rareloop/lumberjack-core;
  git remote remove origin;
else
  git clone https://github.com/MrkKr/wp_boilerplate ./wordpress/wp-content/themes/default-theme ;
  cd wordpress/wp-content/themes/default-theme;
  git remote remove origin;
fi
chmod 777 wordpress -R;
echo "Ready setting up your theme";