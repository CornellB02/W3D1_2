class Array
    
    def my_each(&prc)
        i = 0
        while i < self.length 
            ele = self[i]
            prc.call(ele)
            i += 1
        end
        
        self

    end

    def my_select(&prc)
        self.my_each.select { |num| prc.call(num) }
    end

    def 
    


end
