#
# https://elixir-lang.org/getting-started/sigils.html
#

regex = ~r/foo|bar/
  IO.inspect "foo" =~ regex

IO.inspect ~s(Text with unescaped quoted "text")

