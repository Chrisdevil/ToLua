using System.Collections;
using System.Collections.Generic;
using LuaInterface;
using UnityEngine;

public class Test : MonoBehaviour
{

    private LuaState luaState = null;
    
    // Start is called before the first frame update
    void Start()
    {
        new LuaResLoader();
        luaState = new LuaState();
        luaState.Start();
        LuaBinder.Bind(luaState);
        luaState.DoFile("TestLua.lua");
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
