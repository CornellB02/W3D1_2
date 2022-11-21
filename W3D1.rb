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
        result = []
        i = 0
        while i < self.length
            ele = self[i] 
            if prc.call(ele) == true
                result << ele
            end
        end
        result
        #self.my_each.select { |num| prc.call(num) }
    end

    def my_reject(&prc)
        result = []
        i = 0
        while i < self.length
            ele = self[i]
            if prc.call(ele) == false
                result << ele
            end
        end
        result
        #self.my_each.reject { |num| prc.call(num) }
    end

    def my_any?(&prc)
        i = 0
        while i < self.length
            ele = self[i]
            if prc.call(ele)    
            i += 1
        end

        #self.any? { |ele| prc.call(ele) }
    end




end
