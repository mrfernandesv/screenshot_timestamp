# Tool Screenshot Timestamp

This script was developed to take screenshots with date and time to generate evidence for pentest reports.

## Step-by-Step Guide to Configure the Screenshot Timestamp Script on Ubuntu 22.04

### Install Dependencies

`sudo apt install flameshot imagemagick xclip`

### Create the Base Directory

`mkdir -p ~/tools`

### Download the Script and Move it to the Directory

`mv screenshot_timestamp.sh ~/tools/`

### Make the Script Executable

`chmod +x ~/tools/screenshot_timestamp.sh`

## Create a Keyboard Shortcut

To trigger the script using a keyboard shortcut on Ubuntu Gnome, follow the steps below:

### 1. Open System Settings

1. In **Ubuntu**, open **System Settings**.
2. Go to the **Keyboard** section.
3. Scroll down to the **Shortcuts** section in the side menu.
4. Click on **Custom Shortcuts**.

### 2. Add a New Keyboard Shortcut

1. At the bottom, click the **+** (Add Shortcut) button.
2. In the window that appears, enter a name for the shortcut, such as **"Screenshot Timestamp"**.
3. In the **Command** field, enter the full path to the script. _Note: replace `your_user` with your actual Linux username._

    `/home/your_user/tools/screenshot/screenshot_timestamp.sh`

### 3. Assign a Key Combination

1. After defining the command, click **Apply**.
2. Now, next to the shortcut name you just created, click where it says **Unassigned** or **No shortcut**.
3. Press the key combination you want to use to trigger the script.  
    **Recommended:** **Ctrl + Print Screen**.

## How to Use

Simply press the configured key combination (**Ctrl + Print Screen**) or run the script directly from the terminal.

When the Gnome screen appears asking for screenshot sharing, click **"Share"**.

Select the area to capture (you can add text, shapes, and arrows as usual with Flameshot), then press **ENTER**.

Paste the image into the reporting tool of your choice using **Ctrl + V**.

If you try to paste it directly into the filesystem, it won’t work. Instead, navigate to the directory `$HOME/Pictures/Screenshot Timestamp`, where the screenshot will be saved.

## Additional Details

As soon as you press **ENTER**, the screenshot will automatically be saved in the folder `$HOME/Pictures/Screenshot Timestamp` with a timestamp and copied to the clipboard.

If you prefer not to use the "paste" option, you can access the timestamped image directly in the directory `$HOME/Pictures/Screenshot Timestamp`.

Try to always leave some space at the bottom of your evidence so that the timestamp can be added without obscuring any important content.