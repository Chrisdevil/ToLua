Controller = {}
local this = Controller

local GameObject = UnityEngine.GameObject

local Input = UnityEngine.Input

local Rigidbody = UnityEngine.Rigidbody

local Color = UnityEngine.Color
local vector3 = UnityEngine.Vector3

local audioSource = UnityEngine.AudioSource
local Sphere
local Rigi
local force
local John
local jRigi
function this.Start()
    Sphere = GameObject.Find('Sphere')
    Sphere:GetComponent('Renderer').material.color = Color(1, 0.1, 1)
    Sphere:AddComponent(typeof(Rigidbody))
    Rigi = Sphere:GetComponent('Rigidbody')
    Rigi.useGravity=true
    force =10
end

function this.update()

    local h = Input.GetAxis('Horizontal')
    local v = Input.GetAxis('Vertical')

    Rigi:AddForce(Vector3(h, 0, v) * force)
    local height = Sphere.transform.localPosition.y
    if height < -20 then
        Sphere.transform.localPosition = vector3(0, 1.5, 8.3)
        Rigi.Sleep(Rigi)
        
    end

end