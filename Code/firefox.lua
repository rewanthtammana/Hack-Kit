require "global"

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
local execute = os.execute

-- Path of executable firefox in linux systems.
local path = "/usr/bin/firefox"

-- Checking whether firefox is installed or not on the users PC.
function doesExist()
    local file = open(path, "r")
    if file ~= nil then
        close(file)
        return true
    else
        return false
    end
end

-- Restarting firefox for installing the downloaded plugins.
function restart()
    kill = 'killall firefox & 2>/dev/null 1>/dev/null'
    -- local kill = 'pkill -f firefox'
    restarting_command = '/usr/bin/firefox ./.hack-kit/*.xpi & 2>/dev/null 1>/dev/null'
    
    -- Destroying all the previous instances of firefox.
    sleep(1)
    run(kill)

    -- Restarting a new instance of firefox.
    sleep(2)
    run(restarting_command)
    
end

-- Error Hanlding function : used with xpcall function.
function errHandler()
    print("\n[!] An error occured.")
    print("[!] Please restart the service or report to the admin.\n")
end
