function Header(el)
  if (el.level <= 1) then
    error("Cannot raise the level of header 1")
  end
  el.level = el.level - 1
  return el
end
