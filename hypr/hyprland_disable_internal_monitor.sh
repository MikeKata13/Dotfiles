#!/usr/bin/env zsh

# Config file path
config_file_path="/home/mike/.config/hypr/hyprlandd.conf"

# Monitor name
internal_monitor_name="eDP-1"

# The line to be replaced in the config file
commented_line="#monitor=$internal_monitor_name,disable"
uncommented_line="monitor=$internal_monitor_name,disable"

# Function to uncomment the line in the config file
uncomment_line() {
    if grep -q "$commented_line" $config_file_path; then
        # Uncomment the line, effectively disabling the internal monitor
        sed -i "s/$commented_line/$uncommented_line/g" $config_file_path
    fi
}

# Uncomment the line
uncomment_line
