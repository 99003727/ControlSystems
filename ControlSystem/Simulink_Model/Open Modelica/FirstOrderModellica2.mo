model FirstOrderModellica2
  Modelica.Blocks.Continuous.TransferFunction transferFunction(a = {0.005, 1}, b = {0.01})  annotation(
    Placement(visible = true, transformation(origin = {2, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Step step annotation(
    Placement(visible = true, transformation(origin = {-78, 6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(step.y, transferFunction.u) annotation(
    Line(points = {{-66, 6}, {-10, 6}}, color = {0, 0, 127}));

annotation(
    uses(Modelica(version = "4.0.0")));
end FirstOrderModellica2;
