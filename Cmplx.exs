defmodule Cmplx do
  def new(r, i) do
    {r, i}
  end
  def add({ra, ia}, {rb, ib}) do
    {ra+rb, ia+ib}
  end
  def spr({r, i}) do
    {r*r-i*i, 2*r*i}
  end
  def abs(a) do
    {r, i} = a
    :math.sqrt(r*r+i*i)
  end
end
