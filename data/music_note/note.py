with open('/home/flathead/bitbucket/mycaffe/data/music_note/txt.txt', 'w') as file:
    for i in range(1, 10):
        file.write("{}\n".format('_000' + str(i) + '.jpg = 1'))
    for i in range(10, 100):
        file.write("{}\n".format('_00' + str(i) + '.jpg = 1'))
    for i in range(100, 104):
        file.write("{}\n".format('_0' + str(i) + '.jpg = 1'))
    for i in range(104, 224):
        file.write("{}\n".format('_0' + str(i) + '.jpg = 2'))
    for i in range(224, 237):
        file.write("{}\n".format('_0' + str(i) + '.jpg = 3'))
    for i in range(237, 365):
        file.write("{}\n".format('_0' + str(i) + '.jpg = 4'))
    for i in range(365, 476):
        file.write("{}\n".format('_0' + str(i) + '.jpg = 5'))
    for i in range(476, 606):
        file.write("{}\n".format('_0' + str(i) + '.jpg = 6'))
    for i in range(606, 738):
        file.write("{}\n".format('_0' + str(i) + '.jpg = 7'))
    for i in range(738, 850):
        file.write("{}\n".format('_0' + str(i) + '.jpg = 8'))
    for i in range(850, 981):
        file.write("{}\n".format('_0' + str(i) + '.jpg = 9'))
    for i in range(981, 1000):
        file.write("{}\n".format('_0' + str(i) + '.jpg = 10'))
    for i in range(1000, 1113):
        file.write("{}\n".format('_' + str(i) + '.jpg = 10'))
    for i in range(1113, 1228):
        file.write("{}\n".format('_' + str(i) + '.jpg = 11'))
    for i in range(1228, 1357):
        file.write("{}\n".format('_' + str(i) + '.jpg = 12'))
    for i in range(1357, 1488):
        file.write("{}\n".format('_' + str(i) + '.jpg = 13'))
    for i in range(1488, 1602):
        file.write("{}\n".format('_' + str(i) + '.jpg = 14'))
    for i in range(1602, 1731):
        file.write("{}\n".format('_' + str(i) + '.jpg = 15'))
    for i in range(1731, 1856):
        file.write("{}\n".format('_' + str(i) + '.jpg = 16'))
    for i in range(1856, 1970):
        file.write("{}\n".format('_' + str(i) + '.jpg = 17'))
    for i in range(1970, 2102):
        file.write("{}\n".format('_' + str(i) + '.jpg = 18'))
    for i in range(2102, 2229):
        file.write("{}\n".format('_' + str(i) + '.jpg = 19'))
    for i in range(2229, 2358):
        file.write("{}\n".format('_' + str(i) + '.jpg = 20'))
    for i in range(2358, 2489):
        file.write("{}\n".format('_' + str(i) + '.jpg = 21'))
file.close()
