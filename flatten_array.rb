#Loop through array.
#if current element is an array, then 
#feed it back into the method
#until no nested arrays remain.

module FlattenArray

    def self.flatten(arr, result=[])
        for i in 0..arr.length-1
            if arr[i].class == Array
                self.flatten(arr[i], result)
            elsif arr[i] == nil
                next
            else
                result.push(arr[i])
            end
        end
        result
    end

end