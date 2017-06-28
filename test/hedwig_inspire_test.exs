defmodule Hedwig.Responders.InspireTest do
  use Hedwig.RobotCase

  @tag start_robot: true, name: "alfred", responders: [{Hedwig.Responders.Inspire, []}]

  test "inspires you", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "alfred inspire me"}}
    assert_receive {:message, %{text: text}}, 3000
    assert String.contains?(text, "http://generated.inspirobot.me/")
  end

  @tag start_robot: true, name: "alfred", responders: [{Hedwig.Responders.Inspire, []}]

  test "inspires others", %{adapter: adapter, msg: msg} do
    send adapter, {:message, %{msg | text: "alfred inspire Joe"}}
    assert_receive {:message, %{text: text}}, 3000
    assert String.contains?(text, "Joe: http://generated.inspirobot.me/")
  end
end