ClearLog();

function moveSpace(direction)
  if (direction == "right") then
    PressKey("lctrl", "right");
    ReleaseKey("lctrl", "right");
  elseif (direction == "left") then
    PressKey("lctrl", "left");
    ReleaseKey("lctrl", "left");
  end
end

function OnEvent(event, arg)
  OutputLogMessage("Event -> "..event.."\n");
  OutputLogMessage("Button -> "..arg.."\n");

  if (event == "MOUSE_BUTTON_RELEASED" and arg == 4) then
    PressKey("lgui", "lshift", "rbracket");
    ReleaseKey("lgui", "lshift", "rbracket");
  end

  if (event == "MOUSE_BUTTON_RELEASED" and arg == 5) then
    PressKey("lgui", "lshift", "lbracket");
    ReleaseKey("lgui", "lshift", "lbracket");
  end

  if (event == "MOUSE_BUTTON_PRESSED" and arg == 7) then
    moveSpace("right");
  end

  if (event == "MOUSE_BUTTON_PRESSED" and arg == 8) then
    moveSpace("left");
  end  

  if (event == "MOUSE_BUTTON_PRESSED" and arg == 9) then
    PressKey("lctrl", "up");
    ReleaseKey("lctrl", "up");
  end
end
