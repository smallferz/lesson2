require 'yaml'

class Ball
   ANSWERS = YAML.load_file(File.join(__dir__, 'answers.yml'))
   
  def shake
    ball_answer
    colorized
    @answers
  end

  private

  def ball_answer
    @answers = ANSWERS.sample
  end

  def colorized
    # red = 31, gren = 32, yellow = 33, blue = 34

    if ANSWERS.include?("0..4")
      @color = 31
    end
    if ANSWERS.include?("5..9")
      @color = 32
    end
    if ANSWERS.include?("10..14")
      @color = 33
    end
    if ANSWERS.include?("15..19")
      @color = 34
    end
    puts "\e[#{@color}m#{@answers}\e[0m"
    end      

end

subject = Ball.new
subject.shake
