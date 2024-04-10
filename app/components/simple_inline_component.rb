class SimpleInlineComponent < ViewComponent::Base
  strip_trailing_whitespace

  erb_template <<~ERB
    <div>Fooo</div>
  ERB
end
