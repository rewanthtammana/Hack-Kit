--[[
    Created by Rewanth Cool (14/03/2017)
    Description:
        This script allows the user to auto-install all the essential addons to the firefox as extensions
        inorder to turn his browser into a BEAST. 
]]

print("\n\nWelcome to Firefox-Hack-Kit\n\n")

print("    |        | ___________ _________  |   /             |   /  ___________  ___________ ")
print("    |        | |         | |          |  /              |  /        |            |      ")
print("    |        | |         | |          | /     _______   | /         |            |      ")
print("    |_ _ _ _ | |_________| |          |/     |_______|  |/          |            |      ")
print("    |        | |         | |          |\\                |\\          |            |      ")
print("    |        | |         | |          | \\               | \\         |            |      ")
print("    |        | |         | |_________ |  \\              |  \\   _____|_____       |      ")

print("\n\nVersion: 0.1")
print("\nBy REWANTH COOL\n\n")

-- Due to the limitations of the firefox policies this is a semi-automatic process, after downloading all the addons the user have to click on install manually

require 'firefox'
require 'global'

-- Including the dependencies
local os = require "os"
local io = require "io"
local string = require "string"

-- Acquiring required functions from io module
local run = io.popen
local open = io.open
local close = io.close
local read = io.read
local write = io.write

-- Acquiring the required functions from os module
local exit = os.exit

-- Acquiring the required functions from string module
local toLower = string.lower

-- This section will be used for interactive mode
--[[
function split(...)
    for i, v in pairs(...) do
        print(v)
    end
end

split(arg)
]]

-- Delete the previous instances
err = run('rm -R .hack-kit 2>/dev/null')

-- Create a temporary directory for saving the data
run('mkdir .hack-kit 2>/dev/null')

local firefox = doesExist()
if(firefox == false) then
    print("[!] Quitting firefox is not installed on your linux system\n")
    exit()
end

print("Lets start installing all the hacker addons now ...")

local extensions = fetchLinks()

for name, command in pairs(extensions) do

    sleep(0.2)

    write("Do you want to install " .. name .. " (y/n) ?  ");
    ans = read()
    
    toLower(ans)

    if ans == 'y' then
        write("\nOk, installing " .. name .. ".....\n\n")
	run(command)
    elseif ans == 'n' then
        write("\nSkipping this addon ....\n\n")
    else
        write("\nInvalid input, moving to next addon\n\n")
    end
end

sleep(1)

restart()

print("\n\n[*] Downloading Successful")
print("\n[!] Due to the limitations of the firefox policies this is a semi-automatic process.")
print("[!] Now click on the small addon icon on the left side of the URL bar for installation.")

print("\n\nEnJoY HaCkIng !!! By Rewanth C00l\n\n")

exit()

