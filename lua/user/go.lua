local status_ok, goray = pcall(require, "go")
if not status_ok then
  return
end

goray.setup()
