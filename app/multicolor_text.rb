require 'securerandom'

class MulticolorText < Element
  def live!
    %x{
      setTimeout(() => {
        #{_change_color}
        #{live!}
      }, "200")
    }
  end

  private

  def _change_color
    element[:style][:color] = _gen_hex
  end

  def _gen_hex
    %w(blue green red yellow black purple orange).sample
  end
end
