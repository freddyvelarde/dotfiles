import subprocess


def network_info():
    data = {}
    command = (
        "essid=$(iwconfig wlan0 | grep ESSID | awk -F'\"' '{print $2}') ; echo $essid"
    )
    output = subprocess.check_output(command, shell=True).decode().strip()

    data["network_name"] = output
    if len(output) > 0:
        data["icon"] = "󰤨"
    else:
        data["icon"] = "󰤭"
    return data


#  print(network_info())


# Execute a command and get its return code
#  command = "mkdir new_directory"
#  return_code = subprocess.call(command, shell=True)
#  print(f"Return code: {return_code}")
