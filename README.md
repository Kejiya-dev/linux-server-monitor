Linux Server Monitoring Using Bash

Project Overview

Linux Server Monitoring is a beginner-friendly system monitoring project developed using Bash scripting on Ubuntu Linux.

The script collects basic system information and monitors CPU, memory, and disk usage. It also displays warning messages when memory or disk usage exceeds the configured threshold.

Technologies Used

- Ubuntu Linux
- Bash Scripting
- Linux Commands
- Git
- GitHub

Features

- Displays system hostname.
- Displays current date and time.
- Checks available CPU cores.
- Displays CPU usage.
- Monitors memory utilization.
- Calculates memory usage percentage.
- Monitors disk space.
- Calculates disk usage percentage.
- Displays system uptime.
- Generates warning messages when memory or disk usage reaches 80% or higher.

Project Structure

```text
linux-server-monitor/
│
└── server_monitor.sh
```

How to Run

Clone the repository:

```bash
git clone https://github.com/Kejiya-dev/linux-server-monitor.git
```

Navigate to the project directory:

```bash
cd linux-server-monitor
```

Give execution permission:

```bash
chmod +x server_monitor.sh
```

Run the script:

```bash
./server_monitor.sh
```
Sample Output

The script displays:

- Hostname
- Date and time
- CPU information
- Memory usage percentage
- Disk usage percentage
- System uptime
- Monitoring status messages

Learning Outcomes

Through this project, I am gaining practical experience with:

- Linux system administration fundamentals
- Bash scripting
- System resource monitoring
- Conditional statements
- Linux command-line operations

Project Status

In Progress

Author

Kejiya
