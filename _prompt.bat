@echo off
::Handles the actual prompt command
set cfg=$e[38;5;
set cbg=$e[48;5;
if "%1" == "normal" (
	set addon=^
$e[49m^

)
if "%1" == "git" (
	set addon=^
%cbg%%bg3%m^
^
%cfg%%fg3%m^
%cbg%%bg3%m^
$s^
$s%2$s^
$e[49m^
%cfg%%bg3%m
)

prompt ^
%cfg%%bg1%m^
$e[7m^
$e[m^
%cfg%%fg1%m^
%cbg%%bg1%m^
$s%username%@^
%userdomain%^
%cfg%%bg1%m^
%cbg%%bg2%m^
^
%cfg%%fg2%m^
$s$p^
%cfg%%bg2%m^
%addon%^
$e[m$s
@echo on
