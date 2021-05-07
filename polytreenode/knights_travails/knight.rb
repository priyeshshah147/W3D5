require_relative "\skeleton\lib\00_tree_node.rb"

class KnightPathFinder

    def initialize(pos)
        @start = PolyTreeNode.new(pos)
        @considered_positions = [pos]
    end

    def self.valid_moves(pos)
        moves = []
        
        moves << [pos[0] + 2, pos[1] + 1] if pos[0] < 8 && pos[1] < 8
        moves << [pos[0] + 1, pos[1] + 2] if pos[0] < 8 && pos[1] < 8
        
        moves << [pos[0] + 1, pos[1] - 2] if pos[0] < 8 && pos[1] >= 0
        moves << [pos[0] + 2, pos[1] - 1] if pos[0] < 8 && pos[1] >= 0
        
        moves << [pos[0] - 1, pos[1] + 2] if pos[0] >= 0 && pos[1] < 8
        moves << [pos[0] - 2, pos[1] + 1] if pos[0] >= 0 && pos[1] < 8
        
        moves << [pos[0] - 1, pos[1] - 2] if pos[0] >= 0 && pos[1] >= 0
        moves << [pos[0] - 2, pos[1] - 1] if pos[0] >= 0 && pos[1] >= 0

        moves
    end

    def new_move_positions(pos)
        moves = KnightPathFinder.valid_moves(pos)
        new_pos = []
        moves.each do |move|
            if !@considered_positions.include?(move)
                @considered_positions << move
                new_pos << move
            end
        end
        new_pos
    end

    def build_move_tree
        new_pos = []
        while @considered_positions.length > 0
            @considered_positions.each do |positions|
                new_pos << new_move_positions(positions)
            end
        end
                
    end

    # position >> 8 newposition
    8 new_move_positions >> 8 positions
    64

    def find_path(final_pos)
    end
    

end