
def process_message(msg)
    # for now, just alert on everything
    # eventually we'll be able to regex for special messages
    
    # escape the quotes just in case they come up in some log message
    `growlnotify --message "#{msg.gsub("\"", "\\\"")}"`
end

# look for log messages on STD::IN
while(true) do
    # process full line at a time
    process_message(gets)
end