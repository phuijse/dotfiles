complete -c btm -l color -d 'Use a color scheme, use --help for info.' -r -f -a "{default	,default-light	,gruvbox	,gruvbox-light	,nord	,nord-light	}"
complete -c btm -s C -l config -d 'Sets the location of the config file.' -r -F
complete -c btm -s t -l default_time_value -d 'Default time value for graphs.' -r
complete -c btm -l default_widget_count -d 'Sets the n\'th selected widget type as the default.' -r
complete -c btm -l default_widget_type -d 'Sets the default widget type, use --help for info.' -r
complete -c btm -s r -l rate -d 'Sets the data refresh rate.' -r
complete -c btm -l retention -d 'The timespan of data stored.' -r
complete -c btm -s d -l time_delta -d 'The amount of time changed upon zooming.' -r
complete -c btm -l autohide_time -d 'Temporarily shows the time scale in graphs.'
complete -c btm -s b -l basic -d 'Hides graphs and uses a more basic look.'
complete -c btm -l battery -d 'Shows the battery widget.'
complete -c btm -s S -l case_sensitive -d 'Enables case sensitivity by default.'
complete -c btm -s c -l celsius -d 'Sets the temperature type to Celsius.'
complete -c btm -s u -l current_usage -d 'Sets process CPU% to be based on current CPU%.'
complete -c btm -l disable_advanced_kill -d 'Hides advanced process killing.'
complete -c btm -l disable_click -d 'Disables mouse clicks.'
complete -c btm -s m -l dot_marker -d 'Uses a dot marker for graphs.'
complete -c btm -l enable_cache_memory -d 'Enable collecting and displaying cache and buffer memory.'
complete -c btm -l enable_gpu_memory -d 'Enable collecting and displaying GPU memory usage.'
complete -c btm -s e -l expanded -d 'Expand the default widget upon starting the app.'
complete -c btm -s f -l fahrenheit -d 'Sets the temperature type to Fahrenheit.'
complete -c btm -s g -l group -d 'Groups processes with the same name by default.'
complete -c btm -s a -l hide_avg_cpu -d 'Hides the average CPU usage.'
complete -c btm -l hide_table_gap -d 'Hides spacing between table headers and entries.'
complete -c btm -l hide_time -d 'Hides the time scale.'
complete -c btm -s k -l kelvin -d 'Sets the temperature type to Kelvin.'
complete -c btm -s l -l left_legend -d 'Puts the CPU chart legend to the left side.'
complete -c btm -l mem_as_value -d 'Defaults to showing process memory usage by value.'
complete -c btm -l network_use_binary_prefix -d 'Displays the network widget with binary prefixes.'
complete -c btm -l network_use_bytes -d 'Displays the network widget using bytes.'
complete -c btm -l network_use_log -d 'Displays the network widget with a log scale.'
complete -c btm -l process_command -d 'Show processes as their commands by default.'
complete -c btm -s R -l regex -d 'Enables regex by default.'
complete -c btm -l show_table_scroll_position -d 'Shows the scroll position tracker in table widgets.'
complete -c btm -s T -l tree -d 'Defaults the process widget be in tree mode.'
complete -c btm -s n -l unnormalized_cpu -d 'Show process CPU% usage without normalizing over the number of cores.'
complete -c btm -l use_old_network_legend -d 'DEPRECATED - uses a separate network legend.'
complete -c btm -s V -l version -d 'Prints version information.'
complete -c btm -s W -l whole_word -d 'Enables whole-word matching by default.'
complete -c btm -s h -l help -d 'Print help (see more with \'--help\')'
