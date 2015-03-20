#!/bin/bash

gcc hello.m `gnustep-config --objc-flags` -lgnustep-base -lobjc -o hello
