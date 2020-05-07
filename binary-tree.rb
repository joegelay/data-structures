class Node
    attr_reader :value 
    attr_accessor :left, :right 

    def initialize value
        @value = value
        left = nil
        right = nil
    end 
end 

class BinaryTree
    attr_accessor :root

    def initialize root_value
        @root = Node.new(root_value)
    end 

    def search find_val 
        return preorder_search(@root, find_val)
    end 

    def print_tree 
        return preorder_print(@root, "")
    end 

    def preorder_search start, find_val
        if start
            if start.value == find_val
                return true
            else
                return preorder_search(start.left, find_val) || preorder_search(start.right, find_val)
            end 
        end 
        return false
    end 

    def preorder_print start, traversal
        if start
            traversal += (start.value.to_s + "-")
            traversal = preorder_print(start.left, traversal)
            traversal = preorder_print(start.right, traversal)
        end 
        return traversal
    end 

    def insert_node value 
        return insert_node_recursive(@root, value)
    end 

    def insert_node_recursive start, value
        if start.value == value
            return "Value already in tree"
        elsif start.value > value
            if start.left != nil
                insert_node_recursive(start.left, value)
            else 
                start.left = Node.new(value)
                return "Inserted node with value of #{value}"
            end 
        else 
            if start.right != nil
                insert_node_recursive(start.right, value)
            else 
                start.right = Node.new(value)
                return "Inserted node with value of #{value}"
            end
        end  
    end 


end

tree = BinaryTree.new(3)
tree.insert_node(6)
tree.insert_node(9)
tree.insert_node(2)
tree.insert_node(1)
p tree.search(9)
p tree.print_tree