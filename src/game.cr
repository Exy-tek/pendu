def file
    if File.exists?("word.txt")
        file = File.new("word.txt")
        file_words = file.gets_to_end
        content = file_words.split
        i = content.size
        rand = Random.rand(i)    
        file.close
    else
        exit
    end
    return content[rand]
end

def check_word(content)
    array = content.to_s.split("")
    return array
end

def losing(content)
    puts "\n\n\nWRONG LETTER"
    lose = Static.incrementing 1
    if lose == 1
        puts "\n\n\n\n\n\n\n#####################"
    end
    if lose == 2
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("#####################\n");
    end
    if lose == 3
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("    /|\n");
        printf("   / |\n");
        printf("#####################\n");
    end
    if lose == 4
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("    /|\\\n");
        printf("   / | \\\n");
        printf("#####################\n");
    end
    if lose == 5
        printf("\n     __________\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("    /|\\\n");
        printf("   / | \\\n");
        printf("#####################\n");
    end
    if lose == 6
        printf("\n     __________\n");
        printf("     | /\n");
        printf("     |/\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("    /|\\\n");
        printf("   / | \\\n");
        printf("#####################\n");
    end
    if lose == 7
        printf("\n     __________\n");
        printf("     | //\n");
        printf("     |//\n");
        printf("     |/\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("    /|\\\n");
        printf("   / | \\\n");
        printf("#####################\n");
    end
    if lose == 8
        printf("\n     __________\n");
        printf("     | //      |\n");
        printf("     |//       |\n");
        printf("     |/\n");
        printf("     | \n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("    /|\\\n");
        printf("   / | \\\n");
        printf("#####################\n");
    end
    if lose == 9
        printf("\n     __________\n");
        printf("     | //      |\n");
        printf("     |//       |\n");
        printf("     |/       (_)\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("     |\n");
        printf("    /|\\\n");
        printf("   / | \\\n");
        printf("#####################\n");
    end
    if lose == 10
        printf("\n     __________\n");
        printf("     | //      |\n");
        printf("     |//       |\n");
        printf("     |/       (_)\n");
        printf("     |         |\n");
        printf("     |         |\n");
        printf("     |         |\n");
        printf("     |\n");
        printf("    /|\\\n");
        printf("   / | \\\n");
        printf("#####################\n");
    end
    if lose == 11
        printf("\n     __________\n");
        printf("     | //      |\n");
        printf("     |//       |\n");
        printf("     |/       (_)\n");
        printf("     |         |\n");
        printf("     |        /|\n");
        printf("     |         |\n");
        printf("     |\n");
        printf("    /|\\\n");
        printf("   / | \\\n");
        printf("#####################\n");
    end
    if lose == 12
        printf("\n     __________\n");
        printf("     | //      |\n");
        printf("     |//       |\n");
        printf("     |/       (_)\n");
        printf("     |         |\n");
        printf("     |        /|\\\n");
        printf("     |         |\n");
        printf("     |\n");
        printf("    /|\\\n");
        printf("   / | \\\n");
        printf("#####################\n");
    end
    if lose == 13
        printf("\n     __________\n");
        printf("     | //      |\n");
        printf("     |//       |\n");
        printf("     |/       (_)\n");
        printf("     |         |\n");
        printf("     |        /|\\\n");
        printf("     |         |\n");
        printf("     |        /\n");
        printf("    /|\\\n");
        printf("   / | \\\n");
        printf("#####################\n");
    end
    if lose == 14
        printf("\n     __________\n");
        printf("     | //      |\n");
        printf("     |//       |\n");
        printf("     |/       (_)\n");
        printf("     |         |\n");
        printf("     |        /|\\\n");
        printf("     |         |\n");
        printf("     |        / \\\n");
        printf("    /|\\\n");
        printf("   / | \\\n");
        printf("#####################\n");
        puts "You lost, the word was : " + content.to_s
        exit
    end
end

def check_character(array, c_word, copy, winning_condition, content, written)
    print "\n\n"
    puts "Current word : " + c_word.to_s
    puts "Letter tried : " + written.to_s
    print "Type a character : "
    i = 0
    stk = gets.not_nil!
    check = stk.upcase
    if check.size > 1
        puts "1 Maximum character"
        check_character(array, c_word, copy, winning_condition, content, 
        written)
    end
    stk = 0
    while copy[i]?
        if check == copy[i] && check != written
            c_word.[]=(i, check)
            winning_condition = Static.incrementing 1
            if c_word != copy && winning_condition != content.size
                puts "You found a letter !"
                stk = 1
            end
        end
        i += 1
    end
    i = 0
    z = 0
    ct = 0
    while c_word[z]?
        if c_word[z] == "_"
            ct += 1
        end
        z+=1
    end
    if ct == 0
        puts "\n\n\nYOU FOUND THE WORD ! " + content
        return true
    end
    written << check
    while copy[i]?
        if check != copy[i] && check != written && stk == 0
            losing(content)
            stk = 1
        end
        i+=1
    end
    return false
end

def game
    winning_condition = 0
    content = file
    array = check_word(content)
    copy = check_word(content)
    written = [""]
    written.delete_at(0)
    current_word = "_" * copy.size
    c_word = current_word.split("")
    while check_character(array, c_word, copy, winning_condition, content, 
        written) == false
    end
end

class Static
    @@winning_condition = 0
    def self.incrementing(value)
        @@winning_condition += value
        return @@winning_condition
    end
end

game