#!/bin/bash

# create a FLOW3 Distribution
git clone git://git.typo3.org/FLOW3/Distributions/Base.git FLOW3Base
cd FLOW3Base
rm -Rf .git .gitmodules Packages/Framework/* .gitignore
git init

echo '/Configuration/Production/IncludeCachedConfigurations.php' >> .gitignore
echo '/Configuration/PackageStates.php' >> .gitignore
echo '/Data/' >> .gitignore
echo '/Web/_Resources/' >> .gitignore

git add * .gitignore

# Base Packages
git submodule add git://git.typo3.org/FLOW3/BuildEssentials.git Build/Common
git submodule add git://git.typo3.org/FLOW3/Packages/TYPO3.FLOW3.git Packages/Framework/TYPO3.FLOW3
git submodule add git://git.typo3.org/FLOW3/Packages/TYPO3.Fluid.git Packages/Framework/TYPO3.Fluid
git submodule add git://git.typo3.org/FLOW3/Packages/TYPO3.Party.git Packages/Framework/TYPO3.Party
git submodule add git://git.typo3.org/FLOW3/Packages/Doctrine.ORM.git Packages/Framework/Doctrine.ORM
git submodule add git://git.typo3.org/FLOW3/Packages/Doctrine.Common.git Packages/Framework/Doctrine.Common
git submodule add git://git.typo3.org/FLOW3/Packages/Doctrine.DBAL.git Packages/Framework/Doctrine.DBAL
git submodule add git://git.typo3.org/FLOW3/Packages/Symfony.Component.Yaml.git Packages/Framework/Symfony.Component.Yaml

# Helpful other Packages
git submodule add git://git.typo3.org/FLOW3/Packages/TYPO3.Kickstart.git Packages/Application/TYPO3.Kickstart
git submodule add git://git.typo3.org/FLOW3/Packages/TYPO3.Surf.git Packages/Application/TYPO3.Surf

echo '------------------------------------------'
echo ' CREATED DISTRIBUTION'
echo ' Now, push the resulting git repository
echo ' into a repository of your choice.
echo '------------------------------------------'
