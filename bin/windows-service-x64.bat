@echo off
@setlocal enableextensions
@cd /d "%~dp0"

sc create Redis displayname= Redis binpath= "\"%cd%\x64\redis-service.exe\" \"%cd%\redis.conf\"" start= auto
sc description Redis "Provides advanced key-value data storage (64-bit). It is often referred to as a data structure server since keys can contain strings, hashes, lists, sets and sorted sets."
sc failure Redis actions= restart/10000 reset= 60