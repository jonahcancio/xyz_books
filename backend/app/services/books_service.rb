class BooksService
    def self.convert_isbn13_to_10(isbn_13)
        trim_str = isbn_13[4..14].gsub("-", "")
        weight_arr = Array.new

        i = 10
        trim_str.each_char do |c|
            weight_arr.push(c.to_i * i)
            i -= 1
        end

        sum = weight_arr.sum
        rem = sum % 11
        check = 11 - rem
        if check == 11
            check_str = "0"
        elsif check == 10
            check_str = "X"
        else
            check_str = check.to_s
        end

        isbn_10 = trim_str.insert(1, "-").insert(5, "-") + "-#{check_str}"
        return isbn_10
    end

    def self.convert_isbn10_to_13(isbn_10)
        return "Service is WORKING BABYYY: " + isbn
    end
end

