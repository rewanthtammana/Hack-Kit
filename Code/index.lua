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

print("\n\nVersion: 0.2")
print("\nBy REWANTH COOL\n\n")

-- Due to the limitations of the firefox policies this is a semi-automatic process, after downloading all the addons the user have to click on install manually.

require 'firefox'
require 'global'
require 'user-mode'

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

args = {}

function split(...)
	for i, v in pairs(...) do
		args[i] = v
	end
end

function init()
  -- Fetching the plugin list from the table.
  extensions = fetchLinks()
  addonFlags = {}

  for name, _ in pairs(extensions) do
    addonFlags[name] = false
  end

  -- Delete the previous instances of the temporary directory
  err = run('rm -R .hack-kit & 2>/dev/null')

  -- Create a temporary directory for saving the data.
  -- This directory contains all the downloaded plugins.
  run('mkdir .hack-kit 2>/dev/null')

  -- Checking whether Firefox is installed or not on the users PC.
  local firefox = doesExist()

  if(firefox == false) then
      print("[!] Quitting firefox is not installed on your linux system\n")
      return false
  end
  return true
end

function listall()
  for name, _ in pairs(extensions) do
    print(name)
  end
end

function install(index)
  print(index)
  print(#args)
  --[[for index,#args in args do
    if(has_value(extensions, args[index])) then
      addonFlags[ args[ index ] ] = true
    else
      print("Not an available valid addon name. Use -l option to view the available list.")
      exit()
    end
  end]]
  exit()
end
--[[
local flag = init()
if not flag then
  exit()
end
]]
split(arg)

if has_value(args, '-h') or has_value(args, '--help') then
	help()
  exit()
elseif has_value(args, '-l') or has_value(args, '--list') then
  -- List all the addons
  listall()
  exit()
elseif has_value(args, '-ia') or has_value(args, '--install-all') then
  -- Install all the required hacker addons
elseif has_value(args, '-i') then
  install(get_index(args, '-i'))
elseif has_value(args, '--install') then
  install(get_index(args, '--install'))
else
  help()
  exit()
end


print("Lets start installing all the hacker addons now ...")

-- Fetching the plugin name and link of the download URL from the extensions table.
for name, url in pairs(extensions) do
    sleep(0.5)

    if(addonFlags[name]) then
        write("\nGreat, downloading " .. name .. ".....\n\n")
        run(url)
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

sleep(0.5)

-- Removing all temporary files
run('rm -R .hack-kit & 2>/dev/null')

exit()
