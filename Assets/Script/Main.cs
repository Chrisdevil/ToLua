using System.Collections;
using System.Collections.Generic;
using LuaInterface;
using UnityEngine;
using UnityEngine.Networking;

public class Main : MonoBehaviour
{

    private LuaState luaState = null;

    private LuaFunction luaFunction = null;
    // Start is called before the first frame update
    void Start()
    {
        new LuaResLoader();
        luaState = new LuaState();
        luaState.Start();
        LuaBinder.Bind(luaState);
        luaState.DoFile("Controller.lua");
        CallFunc("Controller.Start");
    }

    // Update is called once per frame
    void Update()
    {
        CallFunc("Controller.update");
    }

    void CallFunc(string func)
    {
        luaFunction = luaState.GetFunction(func);
        luaFunction.Call();
    }
}
