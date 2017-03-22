function has_value (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return true
        end
    end
    return false
end

function get_index (tab, val)
    for index, value in ipairs(tab) do
        if value == val then
            return index
        end
    end
end


function help ()
	print("-ia, --install-all : Installs all the hacker addons")
  print("-l, --list : Lists all the addons")
  print("-i, --install : <addon-names> (Give the name of addons that are to be installed)")
  print("-h, --help : For help")
end
