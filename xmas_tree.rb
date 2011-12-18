class Tree
  attr_accessor :rows

  def initialize(rows)
    @rows = rows
    @star_on_top = false
    @star = ""
    @top = ""
    @tree = ""
  end
  
  def add_star
    @star_on_top = true
    @star = build_star
    build
  end
  
  def remove_star
    @star_on_top = false
    build
  end
  
  def star_on_top?
    return true if @star_on_top == true
  end
  
  def display
    build
    puts @tree
  end
  
  private
  
    def build
      @tree = ""
      @top = build_top
      self.star_on_top? ? @tree << @star :
                          @tree << @top
      @tree << build_trunk(@rows)
      add_base
    end
  
    def build_trunk(rows)
      (1..rows).to_a.inject("") { |r, e| r + build_row(e) << "\n" }
    end
  
    def build_row(number)

      texture = "\\"
      texture = "/" if number.even?

      branch  = "  "

      (@rows - number).times do
        branch << " "
      end

      branch << "/"

      (number - 1).times do
        branch << "_#{texture}"
      end

      branch << "_\\"
      branch
    end
    
    def build_star
      
      star = "  "
      
      (@rows - 1).times do
        star << " "
      end
      
      star << "\\ /" << "\n"
      
      (@rows - 3).times do
        star << " "
      end
      
      star << "  -->*<--" << "\n"
      star
    end
    
    def build_top
      
      top = "  "
      
      @rows.times do
        top << " "
      end
      
      top << "^" << "\n"
      top
    end
    
    def add_base
      
      base = "  "
      
      (@rows - 2).times do
        base << " "
      end
      
      base << "|___|" << "\n"
      
      @tree << base
    end
end