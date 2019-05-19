=begin
Анаграмма — литературный приём, состоящий в перестановке букв или звуков
определённого слова (или словосочетания), что в результате даёт другое слово
или словосочетание.
Разработайте метод combine_anagrams(words_array), который принимает на вход
массив слов и разбивает их в группы по анаграммам, регистр букв не имеет
значения при определении анаграмм. 
=end

arr = %w[cars for potatoes racs four scar creams scream] 

def combine_anagrams(arr)
arr = arr.sort_by(&:length)
ness = []
ness.push(arr[0])
arr.delete_at(0)
for x in arr do
    if x.length !=ness[-1].length
        ness.push(x)
    end
end
for x in ness do
    arr.delete(x)
end

ness = ness.each_slice(1).to_a
check1 = []
check2 = []

for y in ness do

    y[0].each_char{|t| check1.push(t)}
    check1.sort!
    
    
    for z in arr do
        z.each_char {|n| check2.push(n)}
        check2.sort!
        if (check1==check2)
            y.push(z)
        end
        check2 = []
    end
     check1 = []
end

for t in ness do
    for k in t do
        for h in arr do
            if k == h
                arr.delete(h)
            end
        end
    end
end
            
if arr[0].class != NilClass
    arr = arr.each_slice(1).to_a
    for x in arr
    ness.push(x)
    
    end
end
return ness
end

 puts combine_anagrams(%w[cars for potatoes racs four scar creams scream])