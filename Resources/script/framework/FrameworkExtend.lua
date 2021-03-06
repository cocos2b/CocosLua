--[[
 description:框架扩展
 author:wp_g4
 date:2013/05/13
 --]]


--clsGameScene
class("clsGameScene",{create = function(...) return GameScene:create(...) end})

--clsNetFilter
class("clsNetFilter",{create = function() return NetFilter:create() end})

--clsNetHandler
class("clsNetHandler",{create = function() return NetHandler:create() end})

--clsViewController
class("clsViewController",{create = function() return ViewController:create() end})

--clsNode
class("clsNode",{create = function() return CCNode:create() end})

--clsLayer
class("clsLayer",{create = function() return CCLayer:create() end})

--clsSprite
class("clsSprite",{ create = function(...) return CCSprite:create(...) end,
                    createWithTexture = function(...) return CCSprite:createWithTexture(...) end,
                    createWithSpriteFrame = function(...) return CCSprite:createWithSpriteFrame(...) end,
                    createWithSpriteFrameName = function(...) return CCSprite:createWithSpriteFrameName(...) end    })

--系统tag分配.所有框架级控件，如果要在scene上添加layer，使用的tag必须在此处申请
TAG_SYSTEM_MIN = 100000000
TAG_SYSTEM_INDICATOR = TAG_SYSTEM_MIN + 1           --clsIndicator
TAG_SYSTEM_TOAST = TAG_SYSTEM_MIN + 2               --clsToast
TAG_SYSTEM_DIALOG = TAG_SYSTEM_MIN + 3              --clsDialog

--系统zOrder分配，如果要在scene上添加layer，使用的zOrder必须在此处申请
ZOEDER_SYSTEM_INDICATOR = 100000000                 --clsIndicator
ZOEDER_SYSTEM_TOAST = 100000000                     --clsToast
ZOEDER_SYSTEM_Dialog = 100000000                    --clsDialog
