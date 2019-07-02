# Maze Runner

# Introduction
#      Welcome Adventurer. Your aim is to navigate the maze and reach the finish point without
#      touching any walls. Doing so will kill you instantly!

# Task
#      You will be given a 2D array of the maze and an array of directions.
#      Your task is to follow the directions given.
#      If you reach the end point before all your moves have gone, you should return Finish.
#      If you hit any walls or go outside the maze border, you should return Dead.
#      If you find yourself still in the maze after using all the moves, you should return Lost.

# The Maze array will look like

# maze = [[1,1,1,1,1,1,1],
#         [1,0,0,0,0,0,3],
#         [1,0,1,0,1,0,1],
#         [0,0,1,0,0,0,1],
#         [1,0,1,0,1,0,1],
#         [1,0,0,0,0,0,1],
#         [1,2,1,0,1,0,1]]

#         ..with the following key

#         0 = Safe place to walk
#         1 = Wall
#         2 = Start Point
#         3 = Finish Point

# Rules
#     1. The Maze array will always be square i.e. N x N
#     2. The start and finish positions could be anywhere in the maze
#     3. The directions array will always be in upper case and will be in the format of:
#         N = North, E = East, W = West and S = South. (North is assumed to be the top)

# Good luck, and stay safe!

# class Maze
#     def initialize(maze)
#         @maze = maze
#     end
#     def walk(path)
#         # your code goes here
#     end
# end

class Maze
    def initialize(maze)
        @maze = maze
        x = 0
        # y irterate over

        # where to start 
        #start = maze.index(2)
    end
    def walk(moves)
        
        x, y = 0, 0
        moves.each do |step|
            if step == 'N'
                x += 1
            elsif step == 'E'
                y += 1
            elsif step == 'S'
                x -= 1
            elsif step == 'W'
                y -= 1
            else
                return false
            end
        end
    case
    if x == 3 or y == 3
        puts 'finish'
    elsif x == 
    end
end

#N = x+=1, y
#E = x, y+=1
#S = x-=1, y
#W = x, y-=1