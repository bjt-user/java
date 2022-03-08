#!/bin/bash

MAINCLASS="Firstfile"
CLASSFILE=$MAINCLASS".class"
JAVAFILE=$MAINCLASS".java"

javac "$JAVAFILE"
java "$MAINCLASS"

