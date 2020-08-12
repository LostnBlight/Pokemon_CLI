module Goodlooks
    module Styles
        
        def add_spaces(str)
            str = str.to_s
            get_space = 80 - str.length;
            spaces = ""
            (1..get_space/2).each{|i| spaces += " "}
            getstr = str + spaces
            getstr
        end

        def add_spaces_back_front(str)
            get_space = 40 - str.length;
            spaces = ""
            (1..get_space/2).each{|i| spaces += " "}
            getstr = spaces + str + spaces
            getstr
        end

        def add_commas(int)

        end
    end
end


