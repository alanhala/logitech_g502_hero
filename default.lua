-- DEFAULT
MISSION_CONTROL_ENABLED = false

ClearLog();

function triggerMissionControl()
  if (MISSION_CONTROL_ENABLED == true) then
    PressKey("escape");
    ReleaseKey("escape");
    MISSION_CONTROL_ENABLED = false;
  else
    PressKey("lctrl", "up");
    ReleaseKey("lctrl", "up");
    MISSION_CONTROL_ENABLED = true;
  end
end

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
  if (event == "MOUSE_BUTTON_PRESSED" and arg == 9) then
    triggerMissionControl()
  end

  if (event == "MOUSE_BUTTON_PRESSED" and arg == 7) then
    moveSpace("right");
  end

  if (event == "MOUSE_BUTTON_PRESSED" and arg == 8) then
    moveSpace("left");
  end
end
