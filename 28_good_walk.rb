# Good walk
# Difficulty: medium/hard

# You live in the city of Cartesia where all roads are laid out in a perfect grid. 
# You arrived ten minutes too early to an appointment, so you decided to take the 
# opportunity to go for a short walk. 

# The city provides its citizens with a Walk Generating App on their phones -- 
# everytime you press the button it sends you an array of one-letter strings 
# representing directions to walk (eg. ['n', 's', 'w', 'e']). 
# You always walk only a single block in a direction and you know it takes 
# you one minute to traverse one city block, so create a function that will 
# return true if the walk the app gives you will take you exactly ten minutes 
# (you don't want to be early or late!) and will, of course, return you to your starting point. 
# Return false otherwise.

# Rails uses rspec for testing by default
# rspec is automatically installed with Rails, but if you haven't installed Rails yet,
# you'll have to install it to use the tests included for this morning challenge:
#    sudo gem install rspec

# Then run the tests by just running:
#   rspec

# rspec uses a convention that it will run any file in a subdirectory called 'spec' that
# has a file name ending in _spec.rb

def good_walk(walk)

    #1st remove any array whose length != 10
    if walk.length != 10
        return false
    end

    #2nd starting at x,y = 0,0 
    x = 0
    y = 0
    
    walk.each do |step|
        if step == 'n'          # n => x+=1, y
            x += 1
        elsif step == 'e'       # e => x, y+=1 
            y += 1
        elsif step == "s"       # s => x-=1, y
            x -= 1
        elsif step == "w"       # w => x, y-=1
            y -= 1
        else
            return false
        end
    end

    return true if x == 0 and y == 0
    
end

# p good_walk(['n','s','e','w','n','s','e','w','n','s']) # => true
# p good_walk(['n','n','s','s','e','w','e','w','n','s']) # => true
# p good_walk(['n','s','e','w','n','s','e','w']) # => false
# p good_walk([]) # => false
# p good_walk(['n','n','n','s','e','w','e','w','n','s']) # => false