def binary_search(arr, target)
    low = 0;
    high = arr.length-1
    while(low <= high)
        mid = (low+high)/2
        if target == arr[mid]
            return mid
        elsif target > arr[mid]
            low = low+1
        else
            high = high-1;
        end
    end
    return -1;
end


puts binary_search([1,2,3,4,5,6,7],7)