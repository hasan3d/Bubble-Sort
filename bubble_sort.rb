# bubble_sort methods that takes an array and returns a sorted array.

def bubble_sort(array)
    swap = true
    while swap
    	swap = false
    	array[0...-1].each_with_index do |e, i| #looping through each elemnt and index of array with the method #each_with_index.
    		if array[i] > array[i + 1]  # Here saying if index of first array is greater than second one.
    			array[i], array[i + 1] = array[i + 1], array[i] #Here i am assigning index of first and second array to index of second and frist.
    			swap = true
    		end
    end
	end
 array
end

array = ([4,3,78,2,0,2]) # An array with default value. Change it to see different result.
puts bubble_sort(array)

#This method accepts a block.
#The block accepts two arguments which are the values that are being compared at that point which are passed via yield.
def bubble_sort_by(array)
    swap = true
    while swap
    	swap = false
    	array[0...-1].each_with_index do |e, i| 
    		if yield(array[i], array[i + 1])  > 0   
    			array[i], array[i + 1] = array[i + 1], array[i] 
    			swap = true
    		end
    end
	end	
 array
end
puts bubble_sort_by(["hi","hello","hey"]) {|left,right| left.length - right.length }

