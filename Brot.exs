defmodule Brot do
  def mandelbrot(c, m) do
    z0 = Cmplx.new(0, 0)
    i = 0
    test(i, z0 ,c ,m)
  end
  def test(i, zi, c, m) when i < m do
    i = i + 1
    zn = Cmplx.add(Cmplx.spr(zi) , c)
    if Cmplx.abs(zi) > 2 do
      i
    else
      test(i, zn, c, m)
    end
  end
  def test(_, _, _, _) do
    0
  end
end
