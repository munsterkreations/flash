# Flash.rb

require_relative 'Flash/version'
require_relative 'Flash.rbs'

module  flash
  class HTMLDivElement < HTMLElement
    def initialize
      @children = []
    end

    def append_child(child)
      @children << child
    end

    def render
      children_html = @children.map(&:render).join
      "<div#{attributes}>#{children_html}</div>"
    end

    private

    def attributes
      # implementation for setting attributes goes here
    end
  end

  class CSSDivStyle < CSSStyle
    def initialize
      @properties = {}
    end

    def set_property(property, value)
      @properties[property] = value
    end

    def to_s
      # implementation for generating CSS style goes here
    end
  end

  class InteractiveDiv < UIComponent
    def initialize(id)
      super(id: id)
      @content = ''
      @event_listeners = {}
    end

    def set_content(content)
      @content = content
    end

    def on(event_type, &block)
      @event_listeners[event_type] = block
    end

    def render
      "<div id='#{@id}'#{@style}>#{@content}</div>"
    end

    private

    def style
      # implementation for generating inline style goes here
    end
  end
end

