import random


# creates a bytearray of given size filled with a sequence of pseudorandomly generated values based on the given seed
def pseudo_random_bytearray(seed, size):
    # initializes the pseudorandom generator with the given seed
    random.seed(seed)
    # generates and returns the bytearray
    return bytearray(random.getrandbits(8) for _ in range(0, int(size)))
