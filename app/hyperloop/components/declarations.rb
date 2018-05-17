class Declarations < Hyperloop::Component
  render(DIV) do
    Declaration.each do |declare|
      P { declare.content }
    end
  end
end