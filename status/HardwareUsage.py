import psutil
import time

while True:
    # Fetch CPU usage
    cpu_percent = psutil.cpu_percent(interval=1)
    # Fetch memory usage
    memory_usage = psutil.virtual_memory()
    # Fetch disk usage
    disk_usage = psutil.disk_usage('/')
    
    # Print CPU, memory, and disk usage in three columns
    print(f"CPU Usage: {cpu_percent}% | Memory Usage: {memory_usage.percent}% | Disk Usage: {disk_usage.percent}%")
    time.sleep(1)