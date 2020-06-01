require 'byebug'
require 'set'

class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end

    def add_neighbor(neighbor)
        self.neighbors << neighbor
    end

    

end

def bfs(starting_node, target_value)
queue = Set.new(starting_node.val)

starting_node.neighbors.each do |neighbor|

end
        
end