
Music = {}
local this = Music
function this.PlaySound()
    
    local audio = UnityEngine.GameObject.Find('Sphere'):GetComponent('AudioSource')
    local url = UnityEngine.WWW('https://music.163.com/#/album?id=97118598')
    coroutine.www(url)
    audio.clip = url:GetAudioClip()
    audio:Play()
    
end