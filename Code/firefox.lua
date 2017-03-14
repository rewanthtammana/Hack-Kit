require "global"

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
local execute = os.execute

-- Path of executable firefox in linux systems
local path = "/usr/bin/firefox"

function doesExist()
    local file = open(path, "r")
    if file ~= nil then
        close(file)
        return true
    else
        return false
    end
end

function restart()
    kill = 'killall firefox & 2>/dev/null 1>/dev/null'
    -- local kill = 'pkill -f firefox'
    restarting_command = '/usr/bin/firefox ./.hack-kit/*.xpi & 2>/dev/null 1>/dev/null'
    
    sleep(1)
    run(kill)

    sleep(2)
    run(restarting_command)
    
end

function errHandler()
    print("\n[!] An error occured.")
    print("[!] Please restart the service or report to the admin.\n")
end

