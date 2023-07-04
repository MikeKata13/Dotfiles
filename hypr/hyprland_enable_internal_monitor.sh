#!/bin/bash

# Config file path
config_file_path="/home/mike/.config/hypr/hyprlandd.conf"

# Monitor name
internal_monitor_name="eDP-1"

# The line to be replaced in the config file
uncommented_line="monitor=$internal_monitor_name,disable"
commented_line="#monitor=$internal_monitor_name,disable"

# Function to comment the line in the config file
comment_line() {
    if grep -q "$uncommented_line" $config_file_path; then
        # Comment the line, effectively enabling the internal monitor
        sed -i "s/$uncommented_line/$commented_line/g" $config_file_path
    fi
}

# Comment the line
comment_line

