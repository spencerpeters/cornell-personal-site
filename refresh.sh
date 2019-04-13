#!/bin/bash

stack exec minutes build
git add .
git commit -am "Refreshed site from script."
git push
stack exec minutes watch