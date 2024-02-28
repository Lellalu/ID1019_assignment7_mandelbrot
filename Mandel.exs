defmodule Mandel do
  def mandelbrot(width, height, x, y, k, depth) do
    trans = fn(w, h) ->
      Cmplx.new(x + k * (w - 1), y - k * (h - 1))
    end
    rows(width, height, trans, depth, [])
  end

  def rows(_, 0, _, _, list) do
    list
  end
  def rows(width, height, trans, depth, list) do
    row_c = Enum.map(1..width, fn w -> trans.(w, height) end)
    row_d = Enum.map(row_c, fn c -> Brot.mandelbrot(c, depth) end)
    rows(width, height-1, trans, depth, list ++ [Enum.map(row_d, fn d -> Color.convert(d, depth) end)])
  end
end
