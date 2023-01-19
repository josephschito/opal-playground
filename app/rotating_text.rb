class RotatingText < Element
  attr_accessor :deg

  def rotate!
    self.deg ||= 0

    %x{
      setTimeout(() => {
        #{element[:style][:transform] = "rotate(#{_update_deg}deg)"}
        #{rotate!}
      }, "1")
    }
  end

  private

  def _update_deg
    self.deg += 1
  end
end
