def compare_and_swap(lst, i, j):
    if lst[i] > lst[j]:
        lst[i], lst[j] = lst[j], lst[i]

def batcher_odd_even_merge_sort(lst):
    n = len(lst)
    p = 1
    while p < n:
        k = p
        while k >= 1:
            for j in range(k, n, 2 * k):
                for i in range(min(k, n - j - k)):
                    if (i + j) // (2 * p) == (i + j + k) // (2 * p):
                        compare_and_swap(lst, i + j, i + j + k)
            k = k // 2
        p *= 2
    return lst



def batcher_indicies(n):
    all_p = list(filter(lambda x: x <= n, [2**i for i in range(0, n+1)]))
    print(f'{all_p=}')
    for p in all_p:
        all_k = list(filter(lambda x: x > 1, [int(p/k**2) for k in range(1, p+1)]))
        print(f'{all_k=}')
        for k in all_k:
            # for j = mod(k,p) to (n-1-k) with a step size of 2k
            all_j = list(range(k % p, n-1-k, 2*k))
            print(f'{all_j=}')
            for j in all_j:
                # for i = 0 to min(k-1, n-j-k-1) with a step size of 1
                all_i = list(range(min(k-1, n-j-k-1)))
                print(f'{all_i=}')
                for i in all_i:
                    # if floor((i+j) / (p*2)) == floor((i+j+k) / (p*2))
                    if (i+j) // (p*2) == (i+j+k) // (p*2):
                        # compare and sort elements (i+j) and (i+j+k)
                        print(i+j, i+j+k)

def batcher_indicies2(n):
    p = 1
    while p < n:
        k = p
        while k >= 1:
            for j in range(k % p, n - 1 - k, 2 * k):
                for i in range(min(k - 1, n - j - k - 1) + 1):
                    if (i + j) // (2 * p) == (i + j + k) // (2 * p):
                        print(i + j, i + j + k)
            k = k // 2
        p *= 2


def main():
    for a, b in optimal_10():
        print(create_solidity_swap(a, b))

def create_solidity_swap(a, b):
    indent = ' ' * 8
    array_name = 'sortedArray'
    swap_text = f'''{indent}if({array_name}[{a}] > {array_name}[{b}]) {{
{indent}  ({array_name}[{a}], {array_name}[{b}]) = ({array_name}[{b}], {array_name}[{a}]);
{indent}}}'''
    return swap_text
    
    

def optimal_10() -> list[tuple[int, int]]:
    # Sorting network for 10 inputs, 29 CEs, 8 layers:
    ten_29ce_8l = '''[(0,8),(1,9),(2,7),(3,5),(4,6)]
    [(0,2),(1,4),(5,8),(7,9)]
    [(0,3),(2,4),(5,7),(6,9)]
    [(0,1),(3,6),(8,9)]
    [(1,5),(2,3),(4,8),(6,7)]
    [(1,2),(3,5),(4,6),(7,8)]
    [(2,3),(4,5),(6,7)]
    [(3,4),(5,6)]'''

    # Sorting network for 10 inputs, 31 CEs, 7 layers
    # 31 is the optimal size for 7 layers 
    ten_31ce_7l = '''[(0,1),(2,5),(3,6),(4,7),(8,9)]
    [(0,6),(1,8),(2,4),(3,9),(5,7)]
    [(0,2),(1,3),(4,5),(6,8),(7,9)]
    [(0,1),(2,7),(3,5),(4,6),(8,9)]
    [(1,2),(3,4),(5,6),(7,8)]
    [(1,3),(2,4),(5,7),(6,8)]
    [(2,3),(4,5),(6,7)]'''

    opt = eval(ten_29ce_8l.replace('\n', '+'))
    # print(opt)
    # print(len(opt))
    return opt



if __name__ == '__main__':
    main()
