--[[
    Created by Rewanth Cool (14/03/2017)
    Description:
        This script allows the user to auto-install all the essential addons to the firefox as extensions
        inorder to turn your browser into a hackers BEAST(Tool). 
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

-- Due to the limitations of the firefox policies this is a semi-automatic process, after downloading all the addons the user have to click on install manually.

require 'firefox'
require 'global'

-- Including the dependencies.
local os = require "os"
local io = require "io"
local string = require "string"

-- Acquiring required functions from io module.
local run = io.popen
local open = io.open
local close = io.close
local read = io.read
local write = io.write

-- Acquiring the required functions from os module.
local exit = os.exit

-- Acquiring the required functions from string module.
local toLower = string.lower

-- This section will be used for interactive mode.
--[[
function split(...)
    for i, v in pairs(...) do
        print(v)
    end
end

split(arg)
]]

-- Delete the previous instances of the temporary directory
err = run('rm -R .hack-kit & 2>/dev/null')

-- Create a temporary directory for saving the data.
-- This directory contains all the downloaded plugins.
run('mkdir .hack-kit 2>/dev/null')

-- Checking whether Firefox is installed or not on the users PC.
local firefox = doesExist()

if(firefox == false) then
    print("[!] Quitting firefox is not installed on your linux system\n")
    exit()
end

print("Lets start installing all the hacker addons now ...")

-- Fetching the plugin list from the table.
local extensions = fetchLinks()

-- Fetching the plugin name and link of the download URL from the extensions table.
for name, url in pairs(extensions) do
    sleep(0.5)

    -- Waiting for user choice.
    write("Do you want to install " .. name .. " (y/n) ?  ")
    ans = read()
    
    -- Convert the user input into lowercase.
    toLower(ans)

    -- Checking for users choice.
    if ans == 'y' then
        write("\nGreat, downloading " .. name .. ".....\n\n")
        run(url)
    elseif ans == 'n' then
        write("\nSkipping this addon ....\n\n")
    else
        write("\nInvalid input, moving to next addon\n\n")
    end
end

-- Sleeping the current thread for a while to add the updates.
sleep(1)

-- Restarting the firefox for installing the downloaded plugins.
restart()

print("\n\n[*] Downloading Successful")
print("\n[!] Due to the limitations of the firefox policies this is a semi-automatic process.")
print("[!] Now click install on the small addon icon on the left side of the URL bar for adding it to your firefox.")

print("\n\nEnJoY HaCkIng !!! By Rewanth Cool\n\n")

-- Asking the user permissions for deleting the temporary files created by this tool
write("Do you want to delete the temporary files created by this tool (y/n) ?")
local choice = read()

-- Converting the users choice into lowercase
toLower(choice)

if(choice == 'y') then
    -- Delete the previous instances of the temp files
    sleep(0.5)
    over = run('rm -R .hack-kit & 2>/dev/null')
    write("Temporary files deleted successfully !!!")
end

exit()
