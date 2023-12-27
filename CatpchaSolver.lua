local LP = game:GetService("Players").LocalPlayer
local captcha = LP.PlayerGui.CardCaptchaGame.CaptchaGame

function solve()
    local res = game:HttpGetAsync(("http://204.10.194.65:8000/solve?id=%d&name=%s"):format(string.match(captcha.Top.Card.Image, "id=(%d+)"), LP.Name))
    local data = game:GetService("HttpService"):JSONDecode(res)
    if data and data.success and data.index > 0 then
        for _,v in pairs(getconnections(captcha.Bottom.Buttons[tostring(data.index)].MouseButton1Click)) do v:Fire() end
    end
end

while task.wait(10) do
    if not captcha.Parent.Enabled or string.find(captcha.Top.AttemptsRemaining.Text, "1 attempt") then continue end
    xpcall(solve, print)
end
