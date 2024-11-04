function onCreate()
	-- background shit
	makeLuaSprite('sky', 'greenhill/sky', -600, -600);
	setScrollFactor('sky', 0.6, 0.6);
	addLuaSprite('sky', false);
	
	makeAnimatedLuaSprite('fire', 'greenhill/fire', -600, -200)
    luaSpriteAddAnimationByPrefix('fire', 'fire', 'fire', 24, true);
	objectPlayAnimation('fire','move',false)
	setScrollFactor('fire', 0.85, 0.85);
	removeLuaSprite('fire', false);
	
	makeLuaSprite('hills', 'greenhill/hills', -525, -50);
	setScrollFactor('hills', 0.8, 0.8);
	addLuaSprite('hills', false);
	
	makeAnimatedLuaSprite('water', 'greenhill/water', -600, 475)
    luaSpriteAddAnimationByPrefix('water', 'water', 'water', 24, true);
	objectPlayAnimation('water','move',false)
	setScrollFactor('water', 0.9, 0.9);
	addLuaSprite('water', false);

	
	makeLuaSprite('ground', 'greenhill/ground', -275, 600);
	addLuaSprite('ground', false);

	makeLuaSprite('tree', 'greenhill/tree', 800, -200);
	addLuaSprite('tree', true);
	
	function onBeatHit()
		if curBeat == 102 then
		addLuaSprite('fire', false);
		end

		if curBeat == 102 then
		removeLuaSprite('hills', false);
		end
		
		if curBeat == 102 then
		removeLuaSprite('water', false);
		end
		
		if curBeat == 102 then
		removeLuaSprite('ground', false);
		end
		
		if curBeat == 102 then
		addLuaSprite('water', false);
		end
		
		if curBeat == 102 then
		addLuaSprite('ground', false);
		end
		
		if curBeat == 102 then
		addLuaSprite('tree', false);
		end
end
	
end