

wait(5)

local InvCode = _G.discord_invite

print("Joining https://discord.gg/"..InvCode)

if syn then 
    syn.request({
        Url = "http://127.0.0.1:6463/rpc?v=1",
        Method = "POST",
        Headers = {
            ["Content-Type"] = "application/json",
            ["Origin"] = "https://discord.com"
        },
        Body = game:GetService("HttpService"):JSONEncode({
            cmd = "INVITE_BROWSER",
            args = {
                code = InvCode
            },
            nonce = game:GetService("HttpService"):GenerateGUID(false)
        }),
      })
    
    elseif KRNL_LOADED then
        request({
            Url = "http://127.0.0.1:6463/rpc?v=1",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
                ["Origin"] = "https://discord.com"
            },
            Body = game:GetService("HttpService"):JSONEncode({
                cmd = "INVITE_BROWSER",
                args = {
                    code = InvCode
                },
                nonce = game:GetService("HttpService"):GenerateGUID(false)
            }),
          })
    elseif identifyexecutor() then
        request({
            Url = "http://127.0.0.1:6463/rpc?v=1",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json",
                ["Origin"] = "https://discord.com"
            },
            Body = game:GetService("HttpService"):JSONEncode({
                cmd = "INVITE_BROWSER",
                args = {
                    code = InvCode
                },
                nonce = game:GetService("HttpService"):GenerateGUID(false)
            }),
          })
    else
        print("Could not join https://discord.gg/"..InvCode)
        print("Please try again with a different executor")
        wait(5)
        
    end