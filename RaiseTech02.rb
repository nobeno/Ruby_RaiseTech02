# コンソールにHelloWorld表示、変数使用
greeting = "HelloWorld"
puts greeting

# 1~10まで加算
sum = 0
for num in 1..10 do
    sum = sum + num
end
puts sum

# 引数0なら偽、1なら真,メソッド使用
def if_sample(num)
    if num == 0 then
        puts "偽"
    elsif num == 1 then
        puts "真"
    else 
        puts "0か1を入れてください"
    end
end

if_sample(0)
if_sample(1)

# 配列
hinatazaka46 = ["MikuKanemura","KyokoSaitou","KonokaMatuda"]
puts(hinatazaka46[0])
puts(hinatazaka46.at(2))

# Hash:キーとバリューが入る
hinatazaka46_name = {Kanemura:"Miku", Saito:"Kyoko", Matuda:"Konoka"}
p hinatazaka46_name[:Kanemura]
p hinatazaka46_name.fetch(:Saito)

# 設定されてないキーに対して
# p hinatazaka46_name[:Takamoto]  => nilが出力される
# p hinatazaka46_name.fetch(:Kosaka) => エラーが出る：key not found  

# クラス
class Communication
    # 挨拶返すだけ
    def greet(greeting)
        if greeting == "Hello" then
            puts("Hello")
        end
    end
end

communication = Communication.new()
communication.greet("Hello")

# クラス継承
class WorkPlaceCommunication < Communication
    # 職場だと挨拶する、そうでなければしない
    # 真偽値で判定
   def greetAtWorkplace
        isworkplace = false
        if isworkplace then 
            puts "Hello"
        else
            puts "no comment"
        end
   end

    #引数の文字型で判定、ちなみにRubyはreturn省略化（ただし、最後の値が踊り値になるので注意）
   def judgeWorkplace(where)
        if where == "workplace" then
            "Hello,workplace"    
        end
    end
end

workplacecommunication = WorkPlaceCommunication.new()
workplacecommunication.greetAtWorkplace
puts workplacecommunication.judgeWorkplace("workplace")

# 例外処理
class ToWhoCommunication < Communication
    def greetToWho(name)
        if name == "boss" then
            puts "Hello,boss"
        elsif name == "co-worker" then
            puts "Hi!"
        elsif name == "someone"
            puts "Who?"
        end

        begin
            if name == "nobody"
                raise
            end
        rescue 
            puts "「...」"
        end
    end
end

towhocommunication = ToWhoCommunication.new()
towhocommunication.greetToWho("boss")
towhocommunication.greetToWho("co-worker")
towhocommunication.greetToWho("nobody")
