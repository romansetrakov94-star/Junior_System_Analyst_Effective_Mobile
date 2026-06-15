def prime_factors(n: int) -> list:
    factors = []
    divisor = 2
    while divisor * divisor <= n:
        while n % divisor == 0:
            factors.append(divisor)
            n //= divisor
        divisor += 1
    if n > 1:
        factors.append(n)
    return factors

# Пример использования
if __name__ == "__main__":
    n = 56
    print(prime_factors(n))  # [2, 2, 2, 7]
    