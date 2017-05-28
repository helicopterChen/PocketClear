
--[[

Copyright (c) 2011-2014 chukong-inc.com

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

]]

local ScrollView = ccui.ScrollView

function ScrollView:onEvent(callback)
    self:addEventListener(function(sender, eventType)
        local event = {}
        if eventType == 0 then
            event.name = "SCROLL_TO_TOP"
        elseif eventType == 1 then
            event.name = "SCROLL_TO_BOTTOM"
        elseif eventType == 2 then
            event.name = "SCROLL_TO_LEFT"
        elseif eventType == 3 then
            event.name = "SCROLL_TO_RIGHT"
        elseif eventType == 4 then
            event.name = "SCROLLING"
        elseif eventType == 5 then
            event.name = "BOUNCE_TOP"
        elseif eventType == 6 then
            event.name = "BOUNCE_BOTTOM"
        elseif eventType == 7 then
            event.name = "BOUNCE_LEFT"
        elseif eventType == 8 then
            event.name = "BOUNCE_RIGHT"
        end
        event.target = sender
        callback(event)
    end)
    return self
end

ScrollView.onScroll = ScrollView.onEvent

local tempSetBounceEnabled = ScrollView.setBounceEnabled;
function ScrollView:setBounceEnabled(enabled)
    tempSetBounceEnabled(self, enabled);
    return self;
end

local tempSetDirection = ScrollView.setDirection;
function ScrollView:setDirection(direction)
    tempSetDirection(self, direction);
    return self;
end

local tempSetInnerContainerSize = ScrollView.setInnerContainerSize;
function ScrollView:setInnerContainerSize(size)
    tempSetInnerContainerSize(self, size);
    return self;
end

local tempJumpToPercentVertical = ScrollView.jumpToPercentVertical;
function ScrollView:jumpToPercentVertical(percent)
    tempJumpToPercentVertical(self, percent);
    return self;
end

local tempAddEventListener = ScrollView.addEventListener;
function ScrollView:addEventListener(call)
    tempAddEventListener(self, call);
    return self;
end

local tempSetScrollBarEnabled = ScrollView.setScrollBarEnabled;
function ScrollView:setScrollBarEnabled(enabled)
    tempSetScrollBarEnabled(self, enabled);
    return self;
end

local tempSetInertiaScrollEnabled = ScrollView.setInertiaScrollEnabled;
function ScrollView:setInertiaScrollEnabled(enabled)
    tempSetInertiaScrollEnabled(self, enabled);
    return self;
end

local tempScrollToRight = ScrollView.scrollToRight;
function ScrollView:scrollToRight(time, attenuated)
    tempScrollToRight(self, time, attenuated);
    return self;
end

-- local tempRemoveAllChildren = ScrollView.removeAllChildren;
-- print("###########################", tempRemoveAllChildren);
-- function ScrollView:removeAllChildren()
--     tempRemoveAllChildren(self);
--     return self;
-- end