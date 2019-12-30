class WowHeadTag < Liquid::Tag
    def initialize(tag_name, input, tokens)
      super    
      @input = input
    end
  
    def render(context)
  
      # Render it on the page by returning it
      return "<a href=\"http://www.wowhead.com/item=#{@input}\" target=\"_blank\" data-wh-icon-size=\"tiny\" data-wowhead=\"item=#{@input}&qty=8\"></a>";
    end
  end
  Liquid::Template.register_tag('wh', WowHeadTag)
  