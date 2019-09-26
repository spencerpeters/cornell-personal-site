#!/bin/bash

stack exec cornell-personal-site build
git add .
git commit -am "Refreshed site from script."
git push
stack exec cornell-personal-site watch
