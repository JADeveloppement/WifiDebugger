# WifiDebugger
We all know how challenging Android Studio can be when trying to connect our phone in debug mode via Wi-Fi. It often either doesn't work or takes a long time. This simple batch file streamlines the process of connecting to your Android phone wirelessly for debugging.

## Prerequisites
- A Windows computer (the script can be adapted for Linux/macOS, but this version is for Windows).
- An Android phone with Wireless Debugging enabled in Developer Options.
- **Both** your computer and Android phone must be connected to the **same Wi-Fi network**.
- Android SDK Platform-Tools installed, and the adb.exe executable's directory added to your system's PATH environment variable. (Common path: C:\Users\your_username\AppData\Local\Android\sdk\platform-tools).

## How to Use
### Initial Setup (One-Time Per Device or After Reboot):
- Connect your Android phone to your computer via USB cable.
- Open a command prompt (CMD) or PowerShell.
- Run the command: `adb tcpip 5555` (You can choose a different port if 5555 is in use, but 5555 is standard).
- You should see a message like "restarting in TCP mode port: 5555".
- You can now disconnect your USB cable.

### Using the WifiDebugger.bat Script:
- Download the WifiDebugger.bat file from this repository to a convenient location on your computer.
- Get your phone's IP address and port:
  - On your Android phone, go to Developer Options > Wireless Debugging. You will see an IP address and port (e.g., 192.168.1.100:39487). Note this down.
- Run the script:
  - **Option A (Interactive):** Double-click WifiDebugger.bat. The script will prompt you to enter the IP address and port (e.g., 192.168.1.100:39487). Type it and press Enter.
  - **Option B (Direct):** Open a command prompt, navigate to the directory where you saved WifiDebugger.bat, and run: `WifiDebugger.bat 192.168.1.100:39487` *(Replace 192.168.1.100:39487 with your phone's actual IP and port)*.
- The script will attempt the connection.

### Verify in Android Studio:
Return to Android Studio. 
Your device should now be listed in the device selection dropdown (e.g., 192.168.1.100:39487). You can now deploy and debug your app wirelessly!

## Troubleshooting
- If adb.exe is not found, ensure it's added to your system's PATH.
- If the connection fails, double-check your phone's IP address and port (it can change!).
- Ensure your phone's Wi-Fi debugging setting is still enabled and that both devices are on the same network.
- Remember to run adb tcpip via USB again if your phone restarts or if wireless debugging stops working unexpectedly.

Disclaimer
This code is provided as-is for convenience. I cannot be held responsible for any adverse effects resulting from its use. Use it at your own risk.
