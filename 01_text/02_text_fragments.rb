Shoes.app :title => 'text fragments' do
  tagline ins("\ntext fragments must be inside of a text block, i.e. para\n\n")
    
  para code("del('strikthrough') => "), del('strikethrough'), "\n\n"
  
  para code("em('italicized') => "), em('italicized'), "\n\n"
  
  para code("ins('underlined') => "), ins('underlined'), "\n\n"
  
  para code("strong('bolded') => "), strong('bolded'), "\n\n"
  
  para code("sub('subscripted') => "), "foo", sub('subscripted'), "\n\n"
  
  para code("sup('supersripted') => "), "bar", sup('superscripted'), "\n\n"
  
  para code("code('some code') => "), code('some code'), "\n\n"
end