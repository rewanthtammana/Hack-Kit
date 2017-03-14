-- Declaring a table
extensions = {}

extensions['Right-Click XSS'] = 'wget "https://addons.mozilla.org/firefox/downloads/file/215802/rightclickxss-0.2.1-fx.xpi" -o /dev/null -O "./.hack-kit/right_click_xss.xpi"'

extensions['Foxy Proxy'] = 'wget "https://addons.mozilla.org/firefox/downloads/file/319162/foxyproxy_standard-4.5.5-sm+tb+fx.xpi" -o /dev/null -O "./.hack-kit/foxy_proxy.xpi"'

extensions['HackBar'] = 'wget "https://addons.mozilla.org/firefox/downloads/latest/3899/addon-3899-latest.xpi" -o /dev/null -O "./.hack-kit/hackbar.xpi"'

extensions['PassiveRecon'] = 'wget "https://addons.mozilla.org/firefox/downloads/latest/6196/addon-6196-latest.xpi" -o /dev/null -O "./.hack-kit/passiverecon.xpi"'

extensions['Cookie Manager+'] = 'wget "https://addons.mozilla.org/firefox/downloads/latest/92079/addon-92079-latest.xpi" -o /dev/null -O "./.hack-kit/cookiemanager+.xpi"'

extensions['Web Developer'] = 'wget "https://addons.mozilla.org/firefox/downloads/latest/web-developer/addon-60-latest.xpi" -o /dev/null -O "./.hack-kit/web_developer.xpi"'

extensions['Wappalyzer'] = 'wget "https://addons.mozilla.org/firefox/downloads/latest/wappalyzer/addon-10229-latest.xpi" -o /dev/null -O "./.hack-kit/wappalyzer.xpi"'

extensions['Cookie Export/Import'] = 'wget "https://addons.mozilla.org/firefox/downloads/latest/344927/addon-344927-latest.xpi" -o /dev/null -O "./.hack-kit/cookie_export_import.xpi"'

extensions['FlagFox'] = 'wget "https://addons.mozilla.org/firefox/downloads/latest/5791/addon-5791-latest.xpi" -o /dev/null -O "./.hack-kit/flagfox.xpi"'

extensions['Tamper Data'] = 'wget "https://addons.mozilla.org/firefox/downloads/latest/tamper-data/addon-966-latest.xpi" -o /dev/null -O "./.hack-kit/tamper_data.xpi"'

extensions['User Agent Switcher'] = 'wget "https://addons.mozilla.org/firefox/downloads/latest/user-agent-switcher/addon-59-latest.xpi" -o /dev/null -O "./.hack-kit/user_agent_switcher.xpi"'

extensions['Fireforce'] = 'wget "https://addons.mozilla.org/firefox/downloads/file/204186/fireforce-2.2-fx.xpi" -o /dev/null -O "./.hack-kit/fireforce.xpi"'

extensions['CSRF-Finder'] = 'wget "https://addons.mozilla.org/firefox/downloads/file/224182/csrf_finder-1.2-fx.xpi" -o /dev/null -O "./.hack-kit/csrf_finder.xpi"'

extensions['Live HTTP Headers'] = 'wget "https://addons.mozilla.org/firefox/downloads/file/345004/live_http_headers_fixed_by_danyialshahid-0.17.1-signed-sm+fx.xpi" -o /dev/null -O "./.hack-kit/live_http_headers.xpi"'

extensions['Crypto Fox'] = 'wget "https://addons.mozilla.org/firefox/downloads/file/140447/cryptofox-2.2-fx.xpi" -o /dev/null  -O "./.hack-kit/crypto_fox.xpi"'

extensions['Disable WebRTC'] = 'wget "https://addons.mozilla.org/firefox/downloads/latest/497366/addon-497366-latest.xpi" -o /dev/null  -O "./.hack-kit/disable_webrtc.xpi"'

-- Function that returns all plugin names and their download URLs.
function fetchLinks()
    return extensions
end

-- Makes the main thread to sleep for some time.
function sleep(n)
  os.execute("sleep " .. tonumber(n))
end
