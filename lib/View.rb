class PlayerView

  def initialize(name)
    case name
    when String
      @mode = :human
    when Symbol
      @mode = :computer
    end
  end

end
