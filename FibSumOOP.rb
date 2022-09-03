class Fibsum
    def initialize(num)
        @num = num
    end

    def digitsum
        @sum = @num.digits.sum
    end

    def fibo?
        if @sum == 0 or @sum == 1 then
            return true
        end
        if isPerfectSquare(5*@sum*@sum + 4) then
            return true
        end
        if isPerfectSquare(5*@sum*@sum - 4) then
            return true
        end
        return false
    end

    private
    def isPerfectSquare(sum)
        Integer.sqrt(sum) ** 2  == sum
    end
    
end

arr = []
total = 0
cnt = 0

while total < 20 do
    f = Fibsum.new(cnt)
    sum = f.digitsum
    if f.fibo? then
        arr.push(cnt)
        total += 1
    end
    cnt += 1
end
puts "Output: #{arr}"





