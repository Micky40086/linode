#!/bin/sh
/usr/bin/ruby -e "$(curl - fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
 brew tap microsoft/mssql-release https://github.com/Microsoft/homebrew-mssql-release
 brew update
 brew install --no-sandbox msodbcsql mssql-tools
