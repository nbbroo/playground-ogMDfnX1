# Auto-generated code below aims at helping you parse
# the standard input according to the problem statement.

# @myStr = String.new(gets.chomp)
@myStr = "Teste moi !"
puts @myStr
@myStr = @myStr.reverse
myStrLength = @myStr.length

@myStrB = ""
@myStrS = nil.to_s
@myStrA = nil.to_s
@myStrC = nil.to_s
@anser = nil.to_s
@compter = 0

@controler =  @myStr.unpack('b7'* myStrLength)
@myStrB = @myStrB += @myStr.unpack('b7'* myStrLength).to_s.reverse

@myStrB.gsub!('"','')
@myStrB.gsub!(' ','')
@myStrB.gsub!('[','')
@myStrB.gsub!(']','')
@myStrB.gsub!(',','')
@myStrB.downcase

@compter = 0
while @myStrB.length != 0 #tant qu'il y a des carracteres dans la chaine

@current = @myStrB[0] #lit le premier carractere

@current == "1" ? @anser << "0 " : @anser << "00 " #j 'ai lu un 1 j'ecrit "0 " sinon j'ecrit "00 "

for i in 0..@myStrB.length

@current == @myStrB[i] ? @compter += 1 : break
end

for i in 1..@compter
@anser << "0"
@myStrB = @myStrB.reverse.chop.reverse
end

@anser << " "
@compter = 0

end

 puts @anser.chop
