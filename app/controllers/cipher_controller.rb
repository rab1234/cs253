require 'htmlentities'
  
class CipherController < ApplicationController
  def index
  end
  
  def submit
    @text = rot13(decode(params[:text]))
    render 'index'
  end
  

#
# Caesar cipher
#
  def rot13(text)
    alpha = ("a".."z").to_a.concat(("A".."Z").to_a)
    rot_alpha = ("n".."z").to_a.concat(("a".."m").to_a).concat(("N".."Z").to_a.concat(("A".."M").to_a))
    text2 = text
    c = -1
    text.chars.each do |l|
      c += 1
      i = alpha.index(l)
      text2[c] = rot_alpha[i] unless i.nil?
    end
    return text2
  end

  #
  # make HTML safe
  #
  def encode(text)
    coder = HTMLEntities.new
    return coder.encode(text) 
  end

  def decode(text)
    coder = HTMLEntities.new
    return coder.decode(text) 
  end
end
