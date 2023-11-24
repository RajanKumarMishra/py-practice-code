new="Top News in India: Read Latest News on Sports, Business, Entertainment,"
# u want the o/p in the form of dict count of each of the character
char_count = {}
for char in new:
    char_count[char] = char_count.get(char, 0) +1

print(char_count)

