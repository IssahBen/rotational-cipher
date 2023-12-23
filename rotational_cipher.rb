class RotationalCipher
    def self.rotate(message,key)
        cipher=[]
        chars=message.downcase.scan(/[a-z]|\.|\s/)
        chars
        chars.each do |c|
            if c.ord <97
                cipher.push(c)
            else
                g=c.downcase.ord + key
                if g >122
                a=g%122
                b=96+a
                cipher<<b.chr
                else
                cipher<< (c.downcase.ord + key).chr
                end
            end
        end
        cipher.join
    end
end