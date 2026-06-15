def missing_number(nums):
    n = len(nums) + 1
    total_sum = n * (n + 1) // 2
    actual_sum = sum(nums)
    return total_sum - actual_sum

# Пример использования
if __name__ == "__main__":
    nums = [1, 2, 3, 4, 5, 6, 8, 9, 10, 11]
    print(missing_number(nums))  # 7
    