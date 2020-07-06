class Stack

 
    def initialize
    @ivar = []        
    end

    def push(el)
        @ivar.push(el)
    end

    def pop
        @ivar.pop
    end

    def peek
        @ivar.last
    end
    

end

class Queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue << el
    end

    def dequeue
        @queue.shift
    end

    def peek
        @queue.first
    end

end

