import time

print('\a')
print('\a')
print('\a')

for x in range(4):
    for i in range(1499, -1, -3):
        time.sleep(3)
        seconds = i % 60
        minutes = i // 60
        print("Remaining Productive Phase: ", minutes, ":", seconds)
    for i in range(299, -1, -3):
        time.sleep(3)
        seconds = i % 60
        minutes = i // 60
        print("Remaining Break Phase: ", minutes, ":", seconds)
