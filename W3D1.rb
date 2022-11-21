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
end
