class Greeter < Element
  def greet!
    element[:innerText] = 'Hello!'
  end
end
