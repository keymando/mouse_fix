class MouseFix < Plugin

  requires_version '1.0.3' 

  def before
    Kernel.class_eval do

      # !!! Still performing right-click for some reason :(
      def left_click
        event = CGEventCreate(nil)
        point = CGEventGetLocation(event)

        CGPostMouseEvent(point, 1, 1, 1 )
        CGPostMouseEvent(point, 1, 1, 0 )

        CFRelease(event)
        CFRelease(point)
      end

      def mouse_move(x, y)
        CGWarpMouseCursorPosition(CGPointMake(x,y))
      end

      def mouse_x
        event = CGEventCreate(nil);
        x = CGEventGetLocation(event).x
        CFRelease(event)
        return x
      end

      def mouse_y
        event = CGEventCreate(nil);
        y = CGEventGetLocation(event).y
        CFRelease(event)
        return y
      end

    end

  end

end
