#!/bin/bash

stack exec minutes rebuild
git add .
git commit -am "rebuilt site from script"
git push
stack exec minutes watch
