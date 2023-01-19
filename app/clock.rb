class Clock < Element
  def tick!
    %x{
      setTimeout(() => {
        #{element[:innerText] = Time.now.strftime("%H:%M:%S")}
        #{tick!}
      }, "1000")
    }
  end
end
