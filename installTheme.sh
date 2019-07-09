#!/bin/bash
echo "Choose theme (lumberjack, default)";
read theme;
echo "Using theme: $theme";
if [ "$theme" = "lumberjack" ] ; then 
  git clone https://github.com/MrkKr/wp_lumberjack_boilerplate ./wordpress/wp-content/themes/lumberjack-theme ;
  cd wordpress/wp-content/themes/lumberjack-theme;
  composer require rareloop/lumberjack-core;
  git remote remove origin;
  rm .git -R
else
  git clone https://github.com/MrkKr/wp_boilerplate ./wordpress/wp-content/themes/default-theme ;
  cd wordpress/wp-content/themes/default-theme;
  git remote remove origin;
  rm .git -R
fi
chmod 777 wordpress -R;
echo "Ready setting up your theme";