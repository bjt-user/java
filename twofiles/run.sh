#!/bin/bash

MAINCLASS="Firstfile"
JAVAFILE=$MAINCLASS".java"

javac "$JAVAFILE"
java "$MAINCLASS"

