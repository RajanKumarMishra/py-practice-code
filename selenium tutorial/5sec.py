import time

# Define the message
message = "Hello, world!"

# Define the duration in seconds
duration = 25

# Get the current time
start_time = time.time()

# Run a loop for 5 seconds
while (time.time() - start_time) < duration:
    print(message)
    time.sleep(5)  # Print the message every 1 second

print("Done")