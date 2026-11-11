# Linux Server Monitoring

## Project Overview

A beginner-friendly Linux system monitoring project built using Bash scripting on Ubuntu (WSL).

The script monitors important system resources, displays usage information, generates basic alerts and saves monitoring results to a log file.

## Technologies Used

- Ubuntu Linux
- Bash Shell Scripting
- Linux Commands
- Cron
- Git and GitHub

## Project Features

1. **System Information**
   - Hostname
   - Current date and time
   - CPU core count
   - System uptime

2. **CPU Monitoring**
   - CPU usage percentage
   - Alert when CPU usage reaches 80%

3. **Memory Monitoring**
   - Total and used memory
   - Memory usage percentage
   - Alert when memory usage reaches 80%

4. **Disk Monitoring**
   - Disk space information
   - Disk usage percentage
   - Alert when disk usage reaches 80%

5. **Process Monitoring**
   - Displays the top 5 CPU-consuming processes
   - Shows process ID, CPU and memory usage

6. **Log Management**
   - Saves monitoring output to `logs/monitor.log`
   - Appends new monitoring results to the log

7. **Automation**
   - Uses Cron to execute the monitoring script every 5 minutes

## Project Structure

```text
linux-monitor/
├── server_monitor.sh
├── .gitignore
├── README.md
└── logs/
    └── monitor.log
```

The `logs/` directory is excluded from Git using `.gitignore`.

## How to Run

Clone the repository:

```bash
git clone https://github.com/Kejiya-dev/linux-server-monitor.git
```

Navigate into the project:

```bash
cd linux-monitor
```

Make the script executable:

```bash
chmod +x server_monitor.sh
```

Run the monitoring script:

```bash
./server_monitor.sh
```

## Configure Cron

Open the Cron scheduler:

```bash
crontab -e
```

Add this line, replacing the path if your project is stored elsewhere:

```bash
*/5 * * * * /home/kejiya/devops-projects/linux-monitor/server_monitor.sh
```

This schedules the monitoring script to run every five minutes.

## Learning Outcomes

Through this project, I practised:

- Linux system administration basics
- Bash scripting
- CPU, memory and disk monitoring
- Process management
- Conditional statements and threshold-based alerts
- Log file management
- Task scheduling using Cron
- Git version control

## Future Improvements

- Prometheus integration
- Grafana dashboards
- Advanced monitoring alerts
- Email notifications
