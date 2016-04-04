do
local function run(msg, matches)
local bot_id = 180245219 
local fbot1 = 168546052,163770495,180245219,151624528 
    if matches[1] == 'bye' and is_admin(msg) or msg.action.type == "chat_add_user" and msg.action.user.id == tonumber(bot_id) and not is_sudo(msg) then
       chat_del_user("chat#id"..msg.to.id, 'user#id'..bot_id, ok_cb, false)
    elseif msg.action.type == "chat_del_user" and msg.action.user.id == tonumber(fbot1) then
       send_large_msg("chat#id"..msg.to.id, 'Madarjende rafighe mano Az Goroh pak mikoni???/nMadarjende rafighe mano Az Goroh pak mikoni???/nMadarjende rafighe mano Az Goroh pak mikoni???\n', ok_cb, false)
       chat_add_user("chat#id"..msg.to.id, 'user#id'..fbot1, ok_cb, false)
    end
end
 
return {
  patterns = {
    "^/(bye)$",
    "^!!tgservice (.+)$",
  },
  run = run
}
end
