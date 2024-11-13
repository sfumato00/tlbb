<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE MudletPackage>
<MudletPackage version="1.001">
	<TriggerPackage>
		<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>tlbb</name>
			<script></script>
			<triggerType>0</triggerType>
			<conditonLineDelta>0</conditonLineDelta>
			<mStayOpen>0</mStayOpen>
			<mCommand></mCommand>
			<packageName></packageName>
			<mFgColor>#ff0000</mFgColor>
			<mBgColor>#ffff00</mBgColor>
			<mSoundFile></mSoundFile>
			<colorTriggerFgColor>#000000</colorTriggerFgColor>
			<colorTriggerBgColor>#000000</colorTriggerBgColor>
			<regexCodeList />
			<regexCodePropertyList />
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>system</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>blocked</name>
					<script>stopSpeedwalk()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>这个方向没有出路。</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>3</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>loginSuccess</name>
					<script>raiseEvent("loginSuccessEvent")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>终端机型态设定为 MUDLET。</string>
						<string>重新连线完毕。</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>3</integer>
						<integer>3</integer>
					</regexCodePropertyList>
				</Trigger>
				<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="yes" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>enter_room</name>
					<script>env = env or {}
env["房间"] = multimatches[2][2]</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>99</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string> - </string>
						<string>^(\S+) - $</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
						<integer>1</integer>
					</regexCodePropertyList>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>grab_exits</name>
						<script>
function split_by_delimiters(input)

  local modified_string = input:gsub(" 和 ", ","):gsub("、", ",")
  
  local result = {}
  for word in string.gmatch(modified_string, "[^,]+") do
    table.insert(result, word)
  end
  return result
end

env["出口"] = split_by_delimiters(matches[2])</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^\s*这里\S+出口是 (.+)。$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>terminate list items</name>
						<script>setTriggerStayOpen("enter_room", 0)
raiseEvent("EnterRoom", env["房间"], env["出口"])</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>&gt; </string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>2</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>match money</name>
						<script>local chinese_number = matches[2]
local name = matches[4]:lower()
send("get "..name)

</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ca0bff</mFgColor>
						<mBgColor>#ffffff</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^  (\S+)两(银子|黄金|金子)\((\w+)\)$</string>
							<string>^  (\S+)张(银票|金票)\((\w+)\)$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>find_silver</name>
						<script></script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand>get silver</mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>两银子(Silver)</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>0</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>find_gold</name>
						<script></script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand>get gold</mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>两金子(Gold)</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>0</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>find_coin</name>
						<script></script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand>get coin</mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>文钱(Coin)</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>0</integer>
						</regexCodePropertyList>
					</Trigger>
				</TriggerGroup>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="yes" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>高亮</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ffffff</mFgColor>
					<mBgColor>#aa00ff</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>你</string>
						<string>^你(.+)$</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>2</integer>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>game</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>睡不着</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand>shui</mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>你躺在檀香木小床上，眼望着天花板，发了半天呆，就是睡不着，大概是睡得太多了！</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>3</integer>
					</regexCodePropertyList>
				</Trigger>
				<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>safety</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList />
					<regexCodePropertyList />
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="yes" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>盯著你看</name>
						<script>env["enemy_name"] = multimatches[2][2]
debugc("enemy name: " .. env["enemy_name"])
send("id here")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>99</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>正盯著你看，不知道打些什麽主意。</string>
							<string>^(\S+)正盯著你看，不知道打些什麽主意。$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>0</integer>
							<integer>1</integer>
						</regexCodePropertyList>
						<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
							<name>识别id</name>
							<script>local name = matches[2]
local id = matches[3]

-- debugc(string.format("name: %s, id: %s", name, id))

if name == env["enemy_name"] then
  raiseEvent("BeingInspected", id, name)
  setTriggerStayOpen("盯著你看", 0)
end</script>
							<triggerType>0</triggerType>
							<conditonLineDelta>0</conditonLineDelta>
							<mStayOpen>5</mStayOpen>
							<mCommand></mCommand>
							<packageName></packageName>
							<mFgColor>#ff0000</mFgColor>
							<mBgColor>#ffff00</mBgColor>
							<mSoundFile></mSoundFile>
							<colorTriggerFgColor>#000000</colorTriggerFgColor>
							<colorTriggerBgColor>#000000</colorTriggerBgColor>
							<regexCodeList>
								<string>^(\S+)\s+= (.+)$</string>
							</regexCodeList>
							<regexCodePropertyList>
								<integer>1</integer>
							</regexCodePropertyList>
							<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
								<name>terminate_trigger</name>
								<script>setTriggerStayOpen("盯著你看", 0)</script>
								<triggerType>0</triggerType>
								<conditonLineDelta>0</conditonLineDelta>
								<mStayOpen>0</mStayOpen>
								<mCommand></mCommand>
								<packageName></packageName>
								<mFgColor>#ff0000</mFgColor>
								<mBgColor>#ffff00</mBgColor>
								<mSoundFile></mSoundFile>
								<colorTriggerFgColor>#000000</colorTriggerFgColor>
								<colorTriggerBgColor>#000000</colorTriggerBgColor>
								<regexCodeList>
									<string>&gt; </string>
								</regexCodeList>
								<regexCodePropertyList>
									<integer>3</integer>
								</regexCodePropertyList>
							</Trigger>
						</Trigger>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>你死了。</name>
						<script>raiseEvent("death")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>你死了。</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>3</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>晕倒</name>
						<script>raiseEvent("loseConsciousness")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>你的眼前一黑，接著什麽也不知道了....</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>3</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="yes" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>想杀死你！</name>
						<script>env["enemy_name"] = multimatches[2][2]
debugc("enemy name: " .. env["enemy_name"])
send("id here")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>99</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>想杀死你！</string>
							<string>^看起来(\S+)想杀死你！$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>0</integer>
							<integer>1</integer>
						</regexCodePropertyList>
						<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
							<name>识别id</name>
							<script>local name = matches[2]
local id = matches[3]

-- debugc(string.format("name: %s, id: %s", name, id))

if name == env["enemy_name"] then
  raiseEvent("BeingAttacked", id, name)
  setTriggerStayOpen("想杀死你！", 0)
end</script>
							<triggerType>0</triggerType>
							<conditonLineDelta>0</conditonLineDelta>
							<mStayOpen>5</mStayOpen>
							<mCommand></mCommand>
							<packageName></packageName>
							<mFgColor>#ff0000</mFgColor>
							<mBgColor>#ffff00</mBgColor>
							<mSoundFile></mSoundFile>
							<colorTriggerFgColor>#000000</colorTriggerFgColor>
							<colorTriggerBgColor>#000000</colorTriggerBgColor>
							<regexCodeList>
								<string>^(\S+)\s+= (.+)$</string>
							</regexCodeList>
							<regexCodePropertyList>
								<integer>1</integer>
							</regexCodePropertyList>
							<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
								<name>terminate_trigger</name>
								<script>setTriggerStayOpen("想杀死你！", 0)</script>
								<triggerType>0</triggerType>
								<conditonLineDelta>0</conditonLineDelta>
								<mStayOpen>0</mStayOpen>
								<mCommand></mCommand>
								<packageName></packageName>
								<mFgColor>#ff0000</mFgColor>
								<mBgColor>#ffff00</mBgColor>
								<mSoundFile></mSoundFile>
								<colorTriggerFgColor>#000000</colorTriggerFgColor>
								<colorTriggerBgColor>#000000</colorTriggerBgColor>
								<regexCodeList>
									<string>&gt; </string>
								</regexCodeList>
								<regexCodePropertyList>
									<integer>3</integer>
								</regexCodePropertyList>
							</Trigger>
						</Trigger>
					</Trigger>
				</TriggerGroup>
				<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>stats</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList />
					<regexCodePropertyList />
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="yes" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>vitals</name>
						<script>local vitals = {}
Char = Char or {}
Char["vitals"] = vitals

vitals["精神"] = tonumber(multimatches[1][2])
vitals["精神_max"] = tonumber(multimatches[1][3])
vitals["精神%"] = tonumber(multimatches[1][4])

vitals["潜力"] = tonumber(multimatches[1][5])
vitals["潜力_max"] = tonumber(multimatches[1][6])
vitals["潜力+"] = tonumber(multimatches[1][7])

vitals["气血"] = tonumber(multimatches[2][2])
vitals["气血_max"] = tonumber(multimatches[2][3])
vitals["气血%"] = tonumber(multimatches[2][4])

vitals["内力"] = tonumber(multimatches[2][5])
vitals["内力_max"] = tonumber(multimatches[2][6])
vitals["内力+"] = tonumber(multimatches[2][7])

vitals["食物"] = tonumber(multimatches[3][2])
vitals["食物_max"] = tonumber(multimatches[3][3])
vitals["潜能"] = tonumber(multimatches[3][4])

vitals["饮水"] = tonumber(multimatches[4][2])
vitals["饮水_max"] = tonumber(multimatches[4][3])
vitals["经验"] = tonumber(multimatches[4][4])

vitals["last_update"] = getEpoch()

raiseEvent("VitalsUpdated")
</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>4</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^\s* 精神：\s*(\d+)/\s*(\d+)\s+\(\s*(\d+)%\)\s+潜力：\s*(\d+)\s*/\s*(\d+)\s*\(\+(\d+)\)</string>
							<string>^\s* 气血：\s*(\d+)/\s*(\d+)\s+\(\s*(\d+)%\)\s+内力：\s*(\d+)\s*/\s*(\d+)\s*\(\+(\d+)\)</string>
							<string>^\s* 食物：\s*(\d+)/\s*(\d+)\s+潜能：\s+(\d+)</string>
							<string>^\s* 饮水：\s*(\d+)/\s*(\d+)\s+经验：\s+(\d+)</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>score</name>
						<script></script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>30</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>【人物档案】</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>3</integer>
						</regexCodePropertyList>
						<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
							<name>parse_stats</name>
							<script>local score = {}
score["根骨"] = matches[2]
score["胆识"] = matches[3]
score["悟性"] = matches[4]
score["膂力"] = matches[5]
score["容貌"] = matches[6]

Char = Char or {}
Char["score"] = score

debugc(serialize(Char["score"]))</script>
							<triggerType>0</triggerType>
							<conditonLineDelta>0</conditonLineDelta>
							<mStayOpen>0</mStayOpen>
							<mCommand></mCommand>
							<packageName></packageName>
							<mFgColor>#ff0000</mFgColor>
							<mBgColor>#ffff00</mBgColor>
							<mSoundFile></mSoundFile>
							<colorTriggerFgColor>#000000</colorTriggerFgColor>
							<colorTriggerBgColor>#000000</colorTriggerBgColor>
							<regexCodeList>
								<string>^ 根骨\s+(\d+)  胆识\s+(\d+)  悟性\s+(\d+)  膂力\s+(\d+)  容貌\s+(\d+)\s$</string>
							</regexCodeList>
							<regexCodePropertyList>
								<integer>1</integer>
							</regexCodePropertyList>
						</Trigger>
						<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
							<name>terminate_trigger</name>
							<script>setTriggerStayOpen("score", 0)</script>
							<triggerType>0</triggerType>
							<conditonLineDelta>0</conditonLineDelta>
							<mStayOpen>0</mStayOpen>
							<mCommand></mCommand>
							<packageName></packageName>
							<mFgColor>#ff0000</mFgColor>
							<mBgColor>#ffff00</mBgColor>
							<mSoundFile></mSoundFile>
							<colorTriggerFgColor>#000000</colorTriggerFgColor>
							<colorTriggerBgColor>#000000</colorTriggerBgColor>
							<regexCodeList>
								<string>&gt; </string>
							</regexCodeList>
							<regexCodePropertyList>
								<integer>3</integer>
							</regexCodePropertyList>
						</Trigger>
					</TriggerGroup>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="yes" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>enable</name>
						<script>Char = Char or {}
Char["effective_levels"] = {}</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>99</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>以下是你目前使用中的特殊技能。</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>3</integer>
						</regexCodePropertyList>
						<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
							<name>terminate_trigger</name>
							<script>setTriggerStayOpen("enable", 0)</script>
							<triggerType>0</triggerType>
							<conditonLineDelta>0</conditonLineDelta>
							<mStayOpen>0</mStayOpen>
							<mCommand></mCommand>
							<packageName></packageName>
							<mFgColor>#ff0000</mFgColor>
							<mBgColor>#ffff00</mBgColor>
							<mSoundFile></mSoundFile>
							<colorTriggerFgColor>#000000</colorTriggerFgColor>
							<colorTriggerBgColor>#000000</colorTriggerBgColor>
							<regexCodeList>
								<string>&gt; </string>
							</regexCodeList>
							<regexCodePropertyList>
								<integer>3</integer>
							</regexCodePropertyList>
						</Trigger>
						<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
							<name>effective_skill_levels</name>
							<script>local name = matches[2]
local id = matches[3]
local skill_name = matches[4]
local level = matches[5]

Char["effective"][id] = {
  ["name"] = name,
  ["skill_name"] = skill_name,
  ["level"] = tonumber(level)
}</script>
							<triggerType>0</triggerType>
							<conditonLineDelta>0</conditonLineDelta>
							<mStayOpen>0</mStayOpen>
							<mCommand></mCommand>
							<packageName></packageName>
							<mFgColor>#ff0000</mFgColor>
							<mBgColor>#ffff00</mBgColor>
							<mSoundFile></mSoundFile>
							<colorTriggerFgColor>#000000</colorTriggerFgColor>
							<colorTriggerBgColor>#000000</colorTriggerBgColor>
							<regexCodeList>
								<string> (\S+)\((\w)\)\s+： (\S+)\s+有效等级：(\s+)$</string>
							</regexCodeList>
							<regexCodePropertyList>
								<integer>1</integer>
							</regexCodePropertyList>
						</Trigger>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>skill_up</name>
						<script>send("skills")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>进步了！</string>
							<string>^你的「\S+」进步了！$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>0</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>你目前所学过的技能：</name>
						<script>Char["skills"] = {}</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>99</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>你目前所学过的技能：</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>3</integer>
						</regexCodePropertyList>
						<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
							<name>技能等级经验</name>
							<script>local skill = matches[2]
local level = matches[3]

-- debugc(string.format("%s(%s) - %d/%d", cn, id, level, exp))
Char["skills"][skill] = tonumber(level)</script>
							<triggerType>0</triggerType>
							<conditonLineDelta>0</conditonLineDelta>
							<mStayOpen>0</mStayOpen>
							<mCommand></mCommand>
							<packageName></packageName>
							<mFgColor>#ff0000</mFgColor>
							<mBgColor>#ffff00</mBgColor>
							<mSoundFile></mSoundFile>
							<colorTriggerFgColor>#000000</colorTriggerFgColor>
							<colorTriggerBgColor>#000000</colorTriggerBgColor>
							<regexCodeList>
								<string>\(([a-z-]+)\)\s+- \S+\s*(\d+)\s*/\s*(\d+)</string>
							</regexCodeList>
							<regexCodePropertyList>
								<integer>1</integer>
							</regexCodePropertyList>
						</Trigger>
						<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
							<name>terminate_trigger</name>
							<script>setTriggerStayOpen("你目前所学过的技能：", 0)
raiseEvent("SkillUpdated")
debugc(serialize(Char["skills"]))
</script>
							<triggerType>0</triggerType>
							<conditonLineDelta>0</conditonLineDelta>
							<mStayOpen>0</mStayOpen>
							<mCommand></mCommand>
							<packageName></packageName>
							<mFgColor>#ff0000</mFgColor>
							<mBgColor>#ffff00</mBgColor>
							<mSoundFile></mSoundFile>
							<colorTriggerFgColor>#000000</colorTriggerFgColor>
							<colorTriggerBgColor>#000000</colorTriggerBgColor>
							<regexCodeList>
								<string>&gt; </string>
							</regexCodeList>
							<regexCodePropertyList>
								<integer>3</integer>
							</regexCodePropertyList>
						</Trigger>
					</Trigger>
				</TriggerGroup>
				<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>items</name>
					<script></script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList />
					<regexCodePropertyList />
					<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>possession</name>
						<script>local items = {}
items["money"] = {}
items["items"] = {}

Char["items"] = items</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>99</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0af3</mFgColor>
						<mBgColor>#ffffff</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>你身上带著下列这些东西(负重</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>2</integer>
						</regexCodePropertyList>
						<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
							<name>match money</name>
							<script>local chinese_number = matches[2]
local name = matches[4]:lower()
local quantity = ChineseToInteger(chinese_number)

local items = Char["items"]
items["money"][name] = quantity</script>
							<triggerType>0</triggerType>
							<conditonLineDelta>0</conditonLineDelta>
							<mStayOpen>0</mStayOpen>
							<mCommand></mCommand>
							<packageName></packageName>
							<mFgColor>#ca0bff</mFgColor>
							<mBgColor>#ffffff</mBgColor>
							<mSoundFile></mSoundFile>
							<colorTriggerFgColor>#000000</colorTriggerFgColor>
							<colorTriggerBgColor>#000000</colorTriggerBgColor>
							<regexCodeList>
								<string>^  (\S+)两(银子|黄金|金子)\((\w+)\)$</string>
								<string>^  (\S+)张一千两(银票|金票)\((\w+)\)$</string>
								<string>^  (\S+)文(钱)\((\w+)\)$</string>
							</regexCodeList>
							<regexCodePropertyList>
								<integer>1</integer>
								<integer>1</integer>
								<integer>1</integer>
							</regexCodePropertyList>
						</Trigger>
						<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
							<name>match valuable</name>
							<script>local item_id = matches[2]:lower()
local items = Char["items"]
items["items"][#items["items"] + 1] = item_id</script>
							<triggerType>0</triggerType>
							<conditonLineDelta>0</conditonLineDelta>
							<mStayOpen>0</mStayOpen>
							<mCommand></mCommand>
							<packageName></packageName>
							<mFgColor>#ca0bff</mFgColor>
							<mBgColor>#ffffff</mBgColor>
							<mSoundFile></mSoundFile>
							<colorTriggerFgColor>#000000</colorTriggerFgColor>
							<colorTriggerBgColor>#000000</colorTriggerBgColor>
							<regexCodeList>
								<string>^  \S+\((\S+)\)</string>
							</regexCodeList>
							<regexCodePropertyList>
								<integer>1</integer>
							</regexCodePropertyList>
						</Trigger>
						<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
							<name>terminate_possession_parsing</name>
							<script>setTriggerStayOpen("possession", 0)
raiseEvent("PossessionUpdated")</script>
							<triggerType>0</triggerType>
							<conditonLineDelta>0</conditonLineDelta>
							<mStayOpen>0</mStayOpen>
							<mCommand></mCommand>
							<packageName></packageName>
							<mFgColor>#ff0000</mFgColor>
							<mBgColor>#ffff00</mBgColor>
							<mSoundFile></mSoundFile>
							<colorTriggerFgColor>#000000</colorTriggerFgColor>
							<colorTriggerBgColor>#000000</colorTriggerBgColor>
							<regexCodeList>
								<string>&gt; </string>
							</regexCodeList>
							<regexCodePropertyList>
								<integer>3</integer>
							</regexCodePropertyList>
						</Trigger>
					</TriggerGroup>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="yes" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>存款</name>
						<script>local saving = multimatches[2][2]
local msg = string.format("%s:银行存款 %s 两银子。\n", Account["id"], saving)
cecho("win_stat", msg)
Log(msg)</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>你在银行中存了</string>
							<string>^你在银行中存了(\S+)两银子。$</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>2</integer>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<TriggerGroup isActive="yes" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>捡破烂</name>
						<script></script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>丢下一</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>0</integer>
						</regexCodePropertyList>
						<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
							<name>银子</name>
							<script></script>
							<triggerType>0</triggerType>
							<conditonLineDelta>0</conditonLineDelta>
							<mStayOpen>0</mStayOpen>
							<mCommand>get silver</mCommand>
							<packageName></packageName>
							<mFgColor>#ff0000</mFgColor>
							<mBgColor>#ffff00</mBgColor>
							<mSoundFile></mSoundFile>
							<colorTriggerFgColor>#000000</colorTriggerFgColor>
							<colorTriggerBgColor>#000000</colorTriggerBgColor>
							<regexCodeList>
								<string>丢下一些银子。</string>
							</regexCodeList>
							<regexCodePropertyList>
								<integer>0</integer>
							</regexCodePropertyList>
						</Trigger>
						<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
							<name>黄金</name>
							<script></script>
							<triggerType>0</triggerType>
							<conditonLineDelta>0</conditonLineDelta>
							<mStayOpen>0</mStayOpen>
							<mCommand>get gold</mCommand>
							<packageName></packageName>
							<mFgColor>#ff0000</mFgColor>
							<mBgColor>#ffff00</mBgColor>
							<mSoundFile></mSoundFile>
							<colorTriggerFgColor>#000000</colorTriggerFgColor>
							<colorTriggerBgColor>#000000</colorTriggerBgColor>
							<regexCodeList>
								<string>丢下一些黄金。</string>
							</regexCodeList>
							<regexCodePropertyList>
								<integer>0</integer>
							</regexCodePropertyList>
						</Trigger>
						<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
							<name>钱</name>
							<script></script>
							<triggerType>0</triggerType>
							<conditonLineDelta>0</conditonLineDelta>
							<mStayOpen>0</mStayOpen>
							<mCommand>get coin</mCommand>
							<packageName></packageName>
							<mFgColor>#ff0000</mFgColor>
							<mBgColor>#ffff00</mBgColor>
							<mSoundFile></mSoundFile>
							<colorTriggerFgColor>#000000</colorTriggerFgColor>
							<colorTriggerBgColor>#000000</colorTriggerBgColor>
							<regexCodeList>
								<string>丢下一些钱。</string>
							</regexCodeList>
							<regexCodePropertyList>
								<integer>0</integer>
							</regexCodePropertyList>
						</Trigger>
						<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
							<name>万两银票</name>
							<script></script>
							<triggerType>0</triggerType>
							<conditonLineDelta>0</conditonLineDelta>
							<mStayOpen>0</mStayOpen>
							<mCommand>get thousand-cash</mCommand>
							<packageName></packageName>
							<mFgColor>#ff0000</mFgColor>
							<mBgColor>#ffff00</mBgColor>
							<mSoundFile></mSoundFile>
							<colorTriggerFgColor>#000000</colorTriggerFgColor>
							<colorTriggerBgColor>#000000</colorTriggerBgColor>
							<regexCodeList>
								<string>一叠一千两银票</string>
							</regexCodeList>
							<regexCodePropertyList>
								<integer>0</integer>
							</regexCodePropertyList>
						</Trigger>
						<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
							<name>千两银票</name>
							<script></script>
							<triggerType>0</triggerType>
							<conditonLineDelta>0</conditonLineDelta>
							<mStayOpen>0</mStayOpen>
							<mCommand>get tenthousand-cash</mCommand>
							<packageName></packageName>
							<mFgColor>#ff0000</mFgColor>
							<mBgColor>#ffff00</mBgColor>
							<mSoundFile></mSoundFile>
							<colorTriggerFgColor>#000000</colorTriggerFgColor>
							<colorTriggerBgColor>#000000</colorTriggerBgColor>
							<regexCodeList>
								<string>一叠一万两银票</string>
							</regexCodeList>
							<regexCodePropertyList>
								<integer>0</integer>
							</regexCodePropertyList>
						</Trigger>
					</TriggerGroup>
				</TriggerGroup>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>祸不单行。</name>
					<script>send("step 单数")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>程青霜对你说道：你要进宫切记祸不单行。</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>3</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>福无双至。</name>
					<script>send("step 双数")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>程青霜对你说道：你要进宫切记福无双至。</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>3</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<TriggerGroup isActive="no" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>打工</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>需要休息</name>
					<script>if Work["timer"] then
    killTimer(Work["timer"])
end

local work_loc = Work["工作地点"]
local config = Work[work_loc]
local hotel = config["hotel"]
local npc = Hotels[hotel]["npc"]

local payment = "1 silver"
if work_loc == "粮店" then
  payment = "100 coin"
end

env["onTravelFinishedEventHandler"] = function()
  send(string.format("give %s %s",  npc, payment))
  send("i")
  HotelGotoRoom(hotel)
end
To(hotel)</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>你先歇一会儿吧！</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>3</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>醒来</name>
					<script>local work = Work["工作地点"]
local config = Work[work]
local hotel = config["hotel"]
local bank = config["bank"]
local items = Char["items"]

env["房间"] = hotel

if items["money"]["gold"] and items["money"]["gold"] &gt; 0
  or items["money"]["silver"] and items["money"]["silver"] &gt; 10
  or items["money"]["coin"] and items["money"]["coin"] &gt; 1000
then
  env["onTravelFinishedEventHandler"] = function()
    send("check")
    expandAlias("dep")
    assert(work ~= nil, "debug work should not be nil")
    debugc("to: " .. work)
    tempTimer(4, function() To(work) end)
  end
  To(bank)
else
  assert(work ~= nil, "debug work should not be nil")
  debugc("hotel to work" .. hotel .. work)
  To(work)
end

</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>你一觉醒来，觉得身体完全恢复了！</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>3</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>住满了</name>
					<script>local config = Work[Work["工作地点"]]
local hotel = config["hotel"]

HotelGotoRoom(hotel)</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>这里已经住满了，请到别间去住吧！</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>3</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>gag</name>
					<script>deleteLine()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^(?!你)\S*走了过来。</string>
						<string>^(?!你)\S*往\S+离开。$</string>
						<string>^店小二说道：多谢这位\S+，请楼上歇息。</string>
						<string>^(?!你)\S*拿出\S+给店小二。$</string>
						<string>对(?!你)\S*说道：</string>
						<string>^(?!你).*从大车上</string>
						<string>^(?!你).*卷起袖子</string>
						<string>(?!你).*的肩膀说：辛苦啦，最近打工的人太多，只能给你这点工钱。$</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<TriggerGroup isActive="no" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>战斗</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="yes" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>谁放了水桶</name>
					<script>local msg = string.format("%s丢下一只水桶。", multimatches[2][2])
debugc(msg)
Log(msg, Account["id"].."_tong_taker")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>丢下一只水桶。</string>
						<string>^(\S+)丢下一只水桶。$</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="yes" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>谁拿了水桶</name>
					<script>Fight["tong_taker"] = multimatches[2][2]
send("id here")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>99</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>捡起一只水桶。</string>
						<string>^(\S+)捡起一只水桶。$</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
						<integer>1</integer>
					</regexCodePropertyList>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>谁拿了水桶_id</name>
						<script>local name = matches[2]
local id = matches[3]
-- debugc(string.format("%s(%s)", name, id))
if name == Fight["tong_taker"] then
  local msg = string.format("%s(%s) 拿了水桶。", name, id)
  debugc(msg)
  Log(msg, Account["id"].."_tong_taker")
end</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>^(\S+)\s+= (\w+)</string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>1</integer>
						</regexCodePropertyList>
					</Trigger>
					<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
						<name>terminate list items</name>
						<script>setTriggerStayOpen("谁拿了水桶", 0)
raiseEvent("TongTaken")</script>
						<triggerType>0</triggerType>
						<conditonLineDelta>0</conditonLineDelta>
						<mStayOpen>0</mStayOpen>
						<mCommand></mCommand>
						<packageName></packageName>
						<mFgColor>#ff0000</mFgColor>
						<mBgColor>#ffff00</mBgColor>
						<mSoundFile></mSoundFile>
						<colorTriggerFgColor>#000000</colorTriggerFgColor>
						<colorTriggerBgColor>#000000</colorTriggerBgColor>
						<regexCodeList>
							<string>&gt; </string>
						</regexCodeList>
						<regexCodePropertyList>
							<integer>2</integer>
						</regexCodePropertyList>
					</Trigger>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>( 你摇头晃脑、歪歪斜斜地站都站不稳，眼看就要倒在地上。 )</name>
					<script>send("surrender")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>( 你摇头晃脑、歪歪斜斜地站都站不稳，眼看就要倒在地上。 )</string>
						<string>慢慢睁开眼睛，清醒了过来。</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>3</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>gag</name>
					<script>deleteLine()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>似乎有些疲惫，但是仍然十分有活力。</string>
						<string>动作似乎开始有点不太灵光，但是仍然有条不紊</string>
						<string>气喘嘘嘘，看起来状况并不太好。</string>
						<string>看起来可能有些累了。</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<TriggerGroup isActive="no" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>学习</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="yes" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>也许是缺乏实战经验，你对</name>
					<script>StopHotelStudy()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>也许是缺乏实战经验，你对</string>
						<string>的回答总是无法领会。</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>2</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>你一觉醒来，觉得身体完全恢复了！</name>
					<script>env["房间"] = Study["hotel"]
send("hp")
tempTimer(1, Study["action"])
</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>你一觉醒来，觉得身体完全恢复了！</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>3</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>这里已经住满了，请到别间去住吧！</name>
					<script>local hotel = Study["hotel"]
HotelGotoRoom(hotel)</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>这里已经住满了，请到别间去住吧！</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>3</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>gag</name>
					<script>deleteLine()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>^\S+走了过来。</string>
						<string>^\S+往\S+离开。$</string>
						<string>^店小二说道：多谢这位\S+，请楼上歇息。</string>
						<string>^(?!你).*拿出\S+给店小二。$</string>
						<string>^店小二笑着对(?!你).*说道：这位\S+，您还没付钱呢！$</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
						<integer>1</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>jingluo</name>
					<script>Study["master_skill"] = "zhemei-strike"</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>你的经络学知识不够，无法进一步学习北冥神功。</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>3</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>你躺在檀香木小床上，盖上紫红绸缎被子，不一会儿便做起了美梦。</name>
					<script>send("skills")</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>你躺在檀香木小床上，盖上紫红绸缎被子，不一会儿便做起了美梦。</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>3</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="yes" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>您还没付钱呢！</name>
					<script>tempTimer(3, CheckFreeze(function() PayForHotel("gold") end), false)</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>店小二笑着对你说道：这位</string>
						<string>您还没付钱呢！</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>2</integer>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>你发现上面所说的对你而言都太浅了，没有学到任何东西。</name>
					<script>StopHotelStudy()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>你发现上面所说的对你而言都太浅了，没有学到任何东西。</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>3</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
			<TriggerGroup isActive="no" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>包工头</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList />
				<regexCodePropertyList />
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>现在没有新工作了，请等两刻钟再来吧。</name>
					<script>deleteLine()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>现在没有新工作了，请等两刻钟再来吧。</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
				<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
					<name>从大车上卸下一袋袋面粉，扛进粮仓。</name>
					<script>deleteLine()</script>
					<triggerType>0</triggerType>
					<conditonLineDelta>0</conditonLineDelta>
					<mStayOpen>0</mStayOpen>
					<mCommand></mCommand>
					<packageName></packageName>
					<mFgColor>#ff0000</mFgColor>
					<mBgColor>#ffff00</mBgColor>
					<mSoundFile></mSoundFile>
					<colorTriggerFgColor>#000000</colorTriggerFgColor>
					<colorTriggerBgColor>#000000</colorTriggerBgColor>
					<regexCodeList>
						<string>从大车上卸下一袋袋面粉，扛进粮仓。</string>
					</regexCodeList>
					<regexCodePropertyList>
						<integer>0</integer>
					</regexCodePropertyList>
				</Trigger>
			</TriggerGroup>
		</TriggerGroup>
		<TriggerGroup isActive="no" isFolder="yes" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
			<name>experiment</name>
			<script></script>
			<triggerType>0</triggerType>
			<conditonLineDelta>0</conditonLineDelta>
			<mStayOpen>0</mStayOpen>
			<mCommand></mCommand>
			<packageName></packageName>
			<mFgColor>#ff0000</mFgColor>
			<mBgColor>#ffff00</mBgColor>
			<mSoundFile></mSoundFile>
			<colorTriggerFgColor>#000000</colorTriggerFgColor>
			<colorTriggerBgColor>#000000</colorTriggerBgColor>
			<regexCodeList />
			<regexCodePropertyList />
			<Trigger isActive="no" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>喝桶</name>
				<script>local vitals = Char["vitals"]
local n = math.ceil((vitals["饮水_max"] - vitals["饮水"]) / 30)
for i=1,n do send("drink tong") end</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>只水桶(Tong)</string>
					<string>CanDrink()</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>0</integer>
					<integer>4</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="no" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="no" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>吃猪</name>
				<script>local vitals = Char["vitals"]

local n = math.ceil((vitals["食物_max"] - vitals["食物"]) / 100)
for i=1,n do send("eat pig") end</script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>只烤乳猪(Pig)</string>
					<string>CanEat()</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>0</integer>
					<integer>4</integer>
				</regexCodePropertyList>
			</Trigger>
			<Trigger isActive="yes" isFolder="no" isTempTrigger="no" isMultiline="no" isPerlSlashGOption="no" isColorizerTrigger="yes" isFilterTrigger="no" isSoundTrigger="no" isColorTrigger="no" isColorTriggerFg="no" isColorTriggerBg="no">
				<name>test</name>
				<script></script>
				<triggerType>0</triggerType>
				<conditonLineDelta>0</conditonLineDelta>
				<mStayOpen>0</mStayOpen>
				<mCommand></mCommand>
				<packageName></packageName>
				<mFgColor>#ff0000</mFgColor>
				<mBgColor>#ffff00</mBgColor>
				<mSoundFile></mSoundFile>
				<colorTriggerFgColor>#000000</colorTriggerFgColor>
				<colorTriggerBgColor>#000000</colorTriggerBgColor>
				<regexCodeList>
					<string>(\S+) \(([\w-]+)\)\s+- \S+\s+(\d+)/\s+(\d+)$</string>
				</regexCodeList>
				<regexCodePropertyList>
					<integer>1</integer>
				</regexCodePropertyList>
			</Trigger>
		</TriggerGroup>
	</TriggerPackage>
	<TimerPackage>
		<Timer isActive="yes" isFolder="no" isTempTimer="no" isOffsetTimer="no">
			<name>timer_hp</name>
			<script>send("hp")</script>
			<command></command>
			<packageName></packageName>
			<time>00:00:30.000</time>
		</Timer>
		<Timer isActive="no" isFolder="no" isTempTimer="no" isOffsetTimer="no">
			<name>npc</name>
			<script></script>
			<command>get all from cabinet</command>
			<packageName></packageName>
			<time>00:00:02.000</time>
		</Timer>
	</TimerPackage>
	<AliasPackage>
		<AliasGroup isActive="yes" isFolder="yes">
			<name>echo</name>
			<script></script>
			<command></command>
			<packageName>echo</packageName>
			<regex></regex>
			<Alias isActive="yes" isFolder="no">
				<name>`echo</name>
				<script>local s = matches[2]

s = string.gsub(s, "%$", "\n")
feedTriggers("\n" .. s .. "\n")
echo("\n")</script>
				<command></command>
				<packageName></packageName>
				<regex>`echo (.+)</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>`cecho</name>
				<script>local s = matches[2]

s = string.gsub(s, "%$", "\n")
cfeedTriggers("\n" .. s .. "\n")
echo("\n")</script>
				<command></command>
				<packageName></packageName>
				<regex>`cecho (.+)</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>`decho</name>
				<script>local s = matches[2]

s = string.gsub(s, "%$", "\n")
dfeedTriggers("\n" .. s .. "\n")
echo("\n")</script>
				<command></command>
				<packageName></packageName>
				<regex>`decho (.+)</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>`hecho</name>
				<script>local s = matches[2]

s = string.gsub(s, "%$", "\n")
hfeedTriggers("\n" .. s .. "\n")
echo("\n")</script>
				<command></command>
				<packageName></packageName>
				<regex>`hecho (.+)</regex>
			</Alias>
		</AliasGroup>
		<AliasGroup isActive="yes" isFolder="yes">
			<name>tlbb</name>
			<script></script>
			<command></command>
			<packageName></packageName>
			<regex></regex>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>game</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>存钱</name>
					<script>local items = Char["items"]
local money_type = "silver"

if type(items["money"]["thousand-cash"]) == "number" and items["money"]["thousand-cash"] &gt; 0 then
  money_type = "thousand-cash"
elseif type(items["money"]["gold"]) == "number" and items["money"]["gold"] &gt; 0 then
  money_type = "gold"
elseif type(items["money"]["silver"]) == "number" and items["money"]["silver"] &gt; 0 then
  money_type = "silver"
elseif type(items["money"]["coin"]) == "number" and items["money"]["coin"] &gt; 0 then
  money_type = "coin"
end

send(string.format("deposit %d %s",items["money"][money_type], money_type))</script>
					<command></command>
					<packageName></packageName>
					<regex>^dep</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>login</name>
					<script>Login()</script>
					<command></command>
					<packageName></packageName>
					<regex>^login</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>全卖</name>
					<script>SellAll()</script>
					<command></command>
					<packageName></packageName>
					<regex>^sa</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>学技能</name>
					<script>local master = matches[2]
local skill = matches[3]
local qn = matches[4]
local cmd = string.format("learn %s from %s with %d", skill, master, qn)
debugc(cmd)
send(cmd)</script>
					<command></command>
					<packageName></packageName>
					<regex>^ll (\S+) (\S+) (\d+)</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>喝桶</name>
					<script>local vitals = Char["vitals"]

local n = math.ceil((vitals["饮水_max"] - vitals["饮水"]) / 30)
for i=1,n do send("drink tong") end

</script>
					<command></command>
					<packageName></packageName>
					<regex>^dt</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>全给</name>
					<script>GiveAll(matches[2])</script>
					<command></command>
					<packageName></packageName>
					<regex>^gall (\w+)</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>吃猪</name>
					<script>local vitals = Char["vitals"]
local n = math.ceil((vitals["食物_max"] - vitals["食物"]) / 100)
for i=1,n do send("eat pig") end</script>
					<command></command>
					<packageName></packageName>
					<regex>^ep</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>path</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
				<Alias isActive="yes" isFolder="no">
					<name>去</name>
					<script>To(matches[2]) </script>
					<command></command>
					<packageName></packageName>
					<regex>^ggg (\w+)</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>雪山</name>
					<script>ts2buddhism()</script>
					<command></command>
					<packageName></packageName>
					<regex>^xs1</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>雪山2</name>
					<script>buddhism_back()</script>
					<command></command>
					<packageName></packageName>
					<regex>^xsb</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>雪山3</name>
					<script>ts2buddhism3()</script>
					<command></command>
					<packageName></packageName>
					<regex>^ts2xs3</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>天山-虎跳-上山</name>
					<script>shangTianShan()</script>
					<command></command>
					<packageName></packageName>
					<regex>^sts</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>天山-下山</name>
					<script>xiaTianShan()</script>
					<command></command>
					<packageName></packageName>
					<regex>^xts</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>逍遥子</name>
					<script>xyz()</script>
					<command></command>
					<packageName></packageName>
					<regex></regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>cunmin</name>
					<script>cunmin()</script>
					<command></command>
					<packageName></packageName>
					<regex>^cm</regex>
				</Alias>
				<Alias isActive="yes" isFolder="no">
					<name>cunmin back</name>
					<script>cunmin2ly()</script>
					<command></command>
					<packageName></packageName>
					<regex>^cm2ly</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>mapper</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex>^map save</regex>
				<Alias isActive="yes" isFolder="no">
					<name>^map init$</name>
					<script>InitRooms()</script>
					<command></command>
					<packageName></packageName>
					<regex>^map init$</regex>
				</Alias>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>学习</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
			</AliasGroup>
			<AliasGroup isActive="yes" isFolder="yes">
				<name>utils</name>
				<script></script>
				<command></command>
				<packageName></packageName>
				<regex></regex>
			</AliasGroup>
		</AliasGroup>
		<AliasGroup isActive="yes" isFolder="yes">
			<name>test</name>
			<script></script>
			<command></command>
			<packageName></packageName>
			<regex></regex>
			<Alias isActive="yes" isFolder="no">
				<name>t1</name>
				<script>Traverse(MainMap)</script>
				<command></command>
				<packageName></packageName>
				<regex>^t1</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>t2</name>
				<script>xiaTianShan()</script>
				<command></command>
				<packageName></packageName>
				<regex>^t2</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>t3</name>
				<script>env["onEnterRoomEventHandler"] = nil</script>
				<command></command>
				<packageName></packageName>
				<regex>^t3</regex>
			</Alias>
			<Alias isActive="yes" isFolder="no">
				<name>test</name>
				<script>To("十字广场", function() 
  To("天龙客栈", function() 
    To("大理钱庄")
  end)
end)</script>
				<command></command>
				<packageName></packageName>
				<regex>^test</regex>
			</Alias>
		</AliasGroup>
	</AliasPackage>
	<ActionPackage>
		<ActionGroup isActive="yes" isFolder="yes" isPushButton="no" isFlatButton="no" useCustomLayout="no">
			<name>TLBB</name>
			<packageName></packageName>
			<script></script>
			<css></css>
			<commandButtonUp></commandButtonUp>
			<commandButtonDown></commandButtonDown>
			<icon></icon>
			<orientation>0</orientation>
			<location>0</location>
			<posX>0</posX>
			<posY>0</posY>
			<mButtonState>1</mButtonState>
			<sizeX>0</sizeX>
			<sizeY>0</sizeY>
			<buttonColumn>1</buttonColumn>
			<buttonRotation>0</buttonRotation>
			<ActionGroup isActive="yes" isFolder="yes" isPushButton="no" isFlatButton="no" useCustomLayout="no">
				<name>战斗</name>
				<packageName></packageName>
				<script></script>
				<css></css>
				<commandButtonUp></commandButtonUp>
				<commandButtonDown></commandButtonDown>
				<icon></icon>
				<orientation>1</orientation>
				<location>0</location>
				<posX>0</posX>
				<posY>0</posY>
				<mButtonState>1</mButtonState>
				<sizeX>0</sizeX>
				<sizeY>0</sizeY>
				<buttonColumn>1</buttonColumn>
				<buttonRotation>0</buttonRotation>
				<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>战斗</name>
					<packageName></packageName>
					<script>Info("开始战斗")
StartFight()</script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
				</Action>
				<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>结束战斗</name>
					<packageName></packageName>
					<script>Info("停止战斗")
StopFight() </script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
				</Action>
			</ActionGroup>
			<ActionGroup isActive="yes" isFolder="yes" isPushButton="no" isFlatButton="no" useCustomLayout="no">
				<name>学习</name>
				<packageName></packageName>
				<script></script>
				<css></css>
				<commandButtonUp></commandButtonUp>
				<commandButtonDown></commandButtonDown>
				<icon></icon>
				<orientation>1</orientation>
				<location>0</location>
				<posX>0</posX>
				<posY>0</posY>
				<mButtonState>1</mButtonState>
				<sizeX>0</sizeX>
				<sizeY>0</sizeY>
				<buttonColumn>1</buttonColumn>
				<buttonRotation>0</buttonRotation>
				<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>酒店打坐读书</name>
					<packageName></packageName>
					<script>Info("开始学习")
StartHotelStudy()</script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
				</Action>
				<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>停止学习</name>
					<packageName></packageName>
					<script>Info("停止学习")
StopHotelStudy()</script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
				</Action>
			</ActionGroup>
			<ActionGroup isActive="yes" isFolder="yes" isPushButton="no" isFlatButton="no" useCustomLayout="no">
				<name>旅行</name>
				<packageName></packageName>
				<script></script>
				<css></css>
				<commandButtonUp></commandButtonUp>
				<commandButtonDown></commandButtonDown>
				<icon></icon>
				<orientation>1</orientation>
				<location>0</location>
				<posX>0</posX>
				<posY>0</posY>
				<mButtonState>1</mButtonState>
				<sizeX>0</sizeX>
				<sizeY>0</sizeY>
				<buttonColumn>1</buttonColumn>
				<buttonRotation>0</buttonRotation>
				<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>停止</name>
					<packageName></packageName>
					<script>StopSpeedwalk()</script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
				</Action>
				<ActionGroup isActive="yes" isFolder="yes" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>汴梁</name>
					<packageName></packageName>
					<script></script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>汴梁城中心</name>
						<packageName></packageName>
						<script>To("汴梁城中心")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>镇西门</name>
						<packageName></packageName>
						<script>To("镇西门")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>东安门</name>
						<packageName></packageName>
						<script>To("东安门")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>聚宝门</name>
						<packageName></packageName>
						<script>To("聚宝门")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
				</ActionGroup>
				<ActionGroup isActive="yes" isFolder="yes" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>大理</name>
					<packageName></packageName>
					<script></script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>十字广场</name>
						<packageName></packageName>
						<script>To("十字广场")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>天龙客栈</name>
						<packageName></packageName>
						<script>To("天龙客栈")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>大理钱庄</name>
						<packageName></packageName>
						<script>To("大理钱庄")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>清和宫</name>
						<packageName></packageName>
						<script>To("清和宫")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
				</ActionGroup>
				<ActionGroup isActive="yes" isFolder="yes" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>洛阳</name>
					<packageName></packageName>
					<script></script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>洛阳中心</name>
						<packageName></packageName>
						<script>To("洛阳中心")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>天水关</name>
						<packageName></packageName>
						<script>To("天水关")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>松鹤楼</name>
						<packageName></packageName>
						<script>To("松鹤楼")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>松鹤楼二楼</name>
						<packageName></packageName>
						<script>To("松鹤楼二楼")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
				</ActionGroup>
				<ActionGroup isActive="yes" isFolder="yes" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>登封</name>
					<packageName></packageName>
					<script></script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>登封县中央广场</name>
						<packageName></packageName>
						<script>To("登封县中央广场")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>登封钱庄</name>
						<packageName></packageName>
						<script>To("登封钱庄")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>登封客栈</name>
						<packageName></packageName>
						<script>To("登封客栈")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
				</ActionGroup>
				<ActionGroup isActive="yes" isFolder="yes" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>东大陆</name>
					<packageName></packageName>
					<script></script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>不醉无归小客栈</name>
						<packageName></packageName>
						<script>To("不醉无归小客栈")

</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>帐房</name>
						<packageName></packageName>
						<script>To("帐房")

</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>「三清观」大殿</name>
						<packageName></packageName>
						<script>To("「三清观」大殿")

</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>药房</name>
						<packageName></packageName>
						<script>To("药房")

</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>都灵子卧室</name>
						<packageName></packageName>
						<script>To("都灵子卧室")

</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
				</ActionGroup>
				<ActionGroup isActive="yes" isFolder="yes" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>西域</name>
					<packageName></packageName>
					<script></script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>小山坡</name>
						<packageName></packageName>
						<script>To("小山坡")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>天山-虎跳溪</name>
						<packageName></packageName>
						<script>To("虎跳溪")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>一品堂</name>
						<packageName></packageName>
						<script>To("一品堂")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>谷场</name>
						<packageName></packageName>
						<script>To("谷场")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>逍遥子</name>
						<packageName></packageName>
						<script>To("青草坪")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>苏星河</name>
						<packageName></packageName>
						<script>To("林中空地")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>薛慕华</name>
						<packageName></packageName>
						<script>To("小木屋")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
				</ActionGroup>
				<ActionGroup isActive="yes" isFolder="yes" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>少林</name>
					<packageName></packageName>
					<script></script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>大雄宝殿</name>
						<packageName></packageName>
						<script>To("大雄宝殿")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>二祖庵大殿</name>
						<packageName></packageName>
						<script>To("大殿-s-e-w")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>二祖庵庵门</name>
						<packageName></packageName>
						<script></script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>菩提院</name>
						<packageName></packageName>
						<script>To("菩提院")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>方丈精舍</name>
						<packageName></packageName>
						<script>To("方丈精舍")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>禅房</name>
						<packageName></packageName>
						<script>To("禅房")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>山间土屋</name>
						<packageName></packageName>
						<script>To("山间土屋")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
				</ActionGroup>
				<ActionGroup isActive="yes" isFolder="yes" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>秦家寨</name>
					<packageName></packageName>
					<script></script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>山坳</name>
						<packageName></packageName>
						<script>To("山坳")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>广场</name>
						<packageName></packageName>
						<script>To("广场")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
				</ActionGroup>
				<ActionGroup isActive="yes" isFolder="yes" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>工地</name>
					<packageName></packageName>
					<script></script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>开封</name>
						<packageName></packageName>
						<script>To("库房-金刀镖局-w")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>洛阳</name>
						<packageName></packageName>
						<script>To("粮店")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
					<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
						<name>大理</name>
						<packageName></packageName>
						<script>To("库房-n")</script>
						<css></css>
						<commandButtonUp></commandButtonUp>
						<commandButtonDown></commandButtonDown>
						<icon></icon>
						<orientation>1</orientation>
						<location>0</location>
						<posX>0</posX>
						<posY>0</posY>
						<mButtonState>1</mButtonState>
						<sizeX>0</sizeX>
						<sizeY>0</sizeY>
						<buttonColumn>1</buttonColumn>
						<buttonRotation>0</buttonRotation>
					</Action>
				</ActionGroup>
			</ActionGroup>
			<ActionGroup isActive="yes" isFolder="yes" isPushButton="no" isFlatButton="no" useCustomLayout="no">
				<name>包工头</name>
				<packageName></packageName>
				<script></script>
				<css></css>
				<commandButtonUp></commandButtonUp>
				<commandButtonDown></commandButtonDown>
				<icon></icon>
				<orientation>1</orientation>
				<location>0</location>
				<posX>0</posX>
				<posY>0</posY>
				<mButtonState>1</mButtonState>
				<sizeX>0</sizeX>
				<sizeY>0</sizeY>
				<buttonColumn>1</buttonColumn>
				<buttonRotation>0</buttonRotation>
				<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>开始包工</name>
					<packageName></packageName>
					<script>StartForeman()</script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
				</Action>
				<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>停止包工</name>
					<packageName></packageName>
					<script>StopForeman()</script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
				</Action>
			</ActionGroup>
		</ActionGroup>
		<ActionGroup isActive="yes" isFolder="yes" isPushButton="no" isFlatButton="no" useCustomLayout="no">
			<name>experimental</name>
			<packageName></packageName>
			<script></script>
			<css></css>
			<commandButtonUp></commandButtonUp>
			<commandButtonDown></commandButtonDown>
			<icon></icon>
			<orientation>0</orientation>
			<location>0</location>
			<posX>0</posX>
			<posY>0</posY>
			<mButtonState>1</mButtonState>
			<sizeX>0</sizeX>
			<sizeY>0</sizeY>
			<buttonColumn>1</buttonColumn>
			<buttonRotation>0</buttonRotation>
			<ActionGroup isActive="yes" isFolder="yes" isPushButton="no" isFlatButton="no" useCustomLayout="no">
				<name>traverse</name>
				<packageName></packageName>
				<script></script>
				<css></css>
				<commandButtonUp></commandButtonUp>
				<commandButtonDown></commandButtonDown>
				<icon></icon>
				<orientation>1</orientation>
				<location>0</location>
				<posX>0</posX>
				<posY>0</posY>
				<mButtonState>1</mButtonState>
				<sizeX>0</sizeX>
				<sizeY>0</sizeY>
				<buttonColumn>1</buttonColumn>
				<buttonRotation>0</buttonRotation>
				<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>巡游</name>
					<packageName></packageName>
					<script>Traverse(MainMap)</script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
				</Action>
				<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>停止巡游</name>
					<packageName></packageName>
					<script>StopTraverse()</script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
				</Action>
			</ActionGroup>
			<ActionGroup isActive="yes" isFolder="yes" isPushButton="no" isFlatButton="no" useCustomLayout="no">
				<name>StopWatch</name>
				<packageName></packageName>
				<script></script>
				<css>		</css>
				<commandButtonUp></commandButtonUp>
				<commandButtonDown></commandButtonDown>
				<icon></icon>
				<orientation>1</orientation>
				<location>0</location>
				<posX>0</posX>
				<posY>0</posY>
				<mButtonState>1</mButtonState>
				<sizeX>0</sizeX>
				<sizeY>0</sizeY>
				<buttonColumn>1</buttonColumn>
				<buttonRotation>0</buttonRotation>
				<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>MeasureHotelSleep</name>
					<packageName></packageName>
					<script>MeasureHotelSleep()</script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
				</Action>
			</ActionGroup>
		</ActionGroup>
		<ActionGroup isActive="no" isFolder="yes" isPushButton="no" isFlatButton="no" useCustomLayout="no">
			<name>deprecate</name>
			<packageName></packageName>
			<script></script>
			<css></css>
			<commandButtonUp></commandButtonUp>
			<commandButtonDown></commandButtonDown>
			<icon></icon>
			<orientation>1</orientation>
			<location>0</location>
			<posX>0</posX>
			<posY>0</posY>
			<mButtonState>1</mButtonState>
			<sizeX>0</sizeX>
			<sizeY>0</sizeY>
			<buttonColumn>1</buttonColumn>
			<buttonRotation>0</buttonRotation>
			<ActionGroup isActive="no" isFolder="yes" isPushButton="no" isFlatButton="no" useCustomLayout="no">
				<name>打工</name>
				<packageName></packageName>
				<script></script>
				<css></css>
				<commandButtonUp></commandButtonUp>
				<commandButtonDown></commandButtonDown>
				<icon></icon>
				<orientation>1</orientation>
				<location>0</location>
				<posX>0</posX>
				<posY>0</posY>
				<mButtonState>1</mButtonState>
				<sizeX>0</sizeX>
				<sizeY>0</sizeY>
				<buttonColumn>1</buttonColumn>
				<buttonRotation>0</buttonRotation>
				<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>开始打工</name>
					<packageName></packageName>
					<script>Info("开始打工")
StartWork()</script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
				</Action>
				<Action isActive="yes" isFolder="no" isPushButton="no" isFlatButton="no" useCustomLayout="no">
					<name>停止打工</name>
					<packageName></packageName>
					<script>Info("停止打工")
StopWork()</script>
					<css></css>
					<commandButtonUp></commandButtonUp>
					<commandButtonDown></commandButtonDown>
					<icon></icon>
					<orientation>1</orientation>
					<location>0</location>
					<posX>0</posX>
					<posY>0</posY>
					<mButtonState>1</mButtonState>
					<sizeX>0</sizeX>
					<sizeY>0</sizeY>
					<buttonColumn>1</buttonColumn>
					<buttonRotation>0</buttonRotation>
				</Action>
			</ActionGroup>
		</ActionGroup>
	</ActionPackage>
	<ScriptPackage>
		<ScriptGroup isActive="yes" isFolder="yes">
			<name>tlbb</name>
			<packageName></packageName>
			<script></script>
			<eventHandlerList />
			<ScriptGroup isActive="yes" isFolder="yes">
				<name>helper</name>
				<packageName></packageName>
				<script></script>
				<eventHandlerList />
				<ScriptGroup isActive="yes" isFolder="yes">
					<name>containers</name>
					<packageName></packageName>
					<script></script>
					<eventHandlerList />
					<Script isActive="yes" isFolder="no">
						<name>queue</name>
						<packageName></packageName>
						<script>Queue = {}

Queue.__index = Queue

function Queue:new()
    return setmetatable({ first = 0, last = -1, items = {} }, Queue)
end

function Queue:append(item)
    self.last = self.last + 1
    self.items[self.last] = item
end

function Queue:popleft()
    if self:isEmpty() then
        error("Deque is empty.")
    end

    local item = self.items[self.first]
    self.items[self.first] = nil -- Remove reference to allow garbage collection
    self.first = self.first + 1
    return item
end

function Queue:clear()
    self.fist = 0
    self.last = -1
    self.items = {}
end

function Queue:isEmpty()
    return self.first &gt; self.last
end

function Queue:size()
    return self.last - self.first + 1
end</script>
						<eventHandlerList />
					</Script>
					<Script isActive="yes" isFolder="no">
						<name>stack</name>
						<packageName></packageName>
						<script>-- Create a table to represent the stack
local Stack = {}

-- Function to create a new stack
function Stack:new()
    local obj = {items = {}}
    setmetatable(obj, self)
    self.__index = self
    return obj
end

-- Push: Add an element to the top of the stack
function Stack:push(item)
    table.insert(self.items, item)
end

-- Pop: Remove and return the top element from the stack
function Stack:pop()
    if #self.items == 0 then
        error("Stack is empty")
    end
    return table.remove(self.items)
end

-- Peek: Return the top element without removing it
function Stack:peek()
    if #self.items == 0 then
        error("Stack is empty")
    end
    return self.items[#self.items]
end

-- Check if the stack is empty
function Stack:isEmpty()
    return #self.items == 0
end</script>
						<eventHandlerList />
					</Script>
					<Script isActive="yes" isFolder="no">
						<name>stopwatch</name>
						<packageName></packageName>
						<script>StopWatch = {}
StopWatch.__index = StopWatch


function StopWatch:New()
  local instance = setmetatable({}, StopWatch)
  return instance
end


function StopWatch:Start()
  self.start_epoch = getEpoch()
end


function StopWatch:Lapse()
  AssertType(self.start_epoch, "StopWatch:GetLapse::self.start_epoch", "number")
  Info("StopWatch: Lapse")
  return getEpoch() - self.start_epoch
end


function StopWatch:Clear()
  Info("StopWatch: Clear")
  self.start_epoch = nil
end





</script>
						<eventHandlerList />
					</Script>
				</ScriptGroup>
				<Script isActive="yes" isFolder="no">
					<name>serialization</name>
					<packageName></packageName>
					<script>-- Function to serialize a table
function serialize(o)
    if type(o) == "number" then
        if o ~= math.floor(o) then
          return string.format("%.2f", o)
        end
        return tostring(o)
    elseif type(o) == "string" then
        return string.format("%q", o)
    elseif type(o) == "table" then
        local s = "{"
        for k, v in pairs(o) do
            s = s .. "[" .. serialize(k) .. "]=" .. serialize(v) .. ","
        end
        s = s .. "}"
        return s
    else
        error("Cannot serialize a " .. type(o))
    end
end

-- Function to deserialize a string back to a table
-- Deserialize function
function deserialize(s)
    local func = loadstring("return " .. s)
    return func()
end
</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>io</name>
					<packageName></packageName>
					<script>local log_folder = "D:/git/mudlet_tlbb/logs"

function Info(msg)
  cecho(string.format("\n&lt;ivory:blue&gt;[INFO] %s", msg))
end


function Warn(msg)
  cecho(string.format("\n&lt;ivory:salmon&gt;[WARNING] %s", msg))
end


function Alert(msg)
  cecho(string.format("\n&lt;ivory:ansiLightRed&gt;[ALERT] %s\n", msg))
end


function Log(msg, filename_prefix)
  -- AssertType(filename, "AppendToFile::filename", "string")
  
  local filename = os.date("%Y-%m-%d.log")
  
  if type(filename_prefix) == "string" then
    filename = filename_prefix .. "_" .. filename
  end
  
  local folder_path = folder_path
  AppendToFile(msg, log_folder, filename)
end


function AppendToFile(msg, folder_path, file_name)
    local file_path = string.format("%s/%s", folder_path, file_name)
    local file = io.open(file_path, "a")
    if file then
        local timestamp = os.date("%Y-%m-%d %H:%M:%S")
        local log_msg = string.format("[%s] %s\n", timestamp, msg)

        file:write(log_msg)
        print(string.format("msg written to %s", file_path))
        file:close()
    else
        error(string.format("Error: could not write to file '%s'", file_path))
    end
end


function AppendBufferToFile(buf, folder_path, file_name)
    AssertType(buf, "AppendBufferToFile::buf", "table")
    AssertType(folder_path, "AppendBufferToFile::folder_path", "string")
    AssertType(file_name, "AppendBufferToFile::file_name", "string")
    
    local file_path = string.format("%s/%s", folder_path, file_name)
    local file = io.open(file_path, "a")
    if file then
        local timestamp = os.date("%Y-%m-%d %H:%M:%S")
        local log_msg = string.format("\n\n===========[%s]==========\n", timestamp)
        
        for i, line in ipairs(buf) do
            file:write(line.."\n")
        end
        
        print(string.format("msg written to %s", file_path))
        file:close()
    else
        error(string.format("Error: could not write to file '%s'", file_path))
    end

end


function LogLastLines(number_of_lines_to_log, filename_prefix)
  
  local latest_line_number = getLastLineNumber("main")
  local latest_lines = getLines(getLineNumber() - number_of_lines_to_log, getLineNumber())
  local filename = os.date("%Y-%m-%d") .."_" .. filename_prefix .. ".log"
  AppendBufferToFile(latest_lines, log_folder, filename)

end

</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>assert</name>
					<packageName></packageName>
					<script>function AssertType(var, var_name, expected_type)
    local tp = type(var)
    assert(tp == expected_type, string.format("'%s' must be %s, but is %s.", var_name, expected_type, tp))
end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>utils_chinese</name>
					<packageName></packageName>
					<script>local chinese_digits = {
    ["零"] = 0,
    ["一"] = 1,
    ["二"] = 2,
    ["三"] = 3,
    ["四"] = 4,
    ["五"] = 5,
    ["六"] = 6,
    ["七"] = 7,
    ["八"] = 8,
    ["九"] = 9
}

local chinese_units = {
    ["十"] = 10, ["百"] = 100, ["千"] = 1000, ["万"] = 10000
}

local function utf8_char_iter(s)
    local i = 1
    local function iter()
        if i &gt; #s then
            return nil
        end

        local byte = string.byte(s, i)
        local char_len = 1

        -- Determine the number of bytes in the UTF-8 character based on the first byte
        if byte &gt;= 0xF0 then
            char_len = 4 -- 4-byte character
        elseif byte &gt;= 0xE0 then
            char_len = 3 -- 3-byte character (Chinese characters)
        elseif byte &gt;= 0xC0 then
            char_len = 2 -- 2-byte character
        end

        -- Extract the character
        local char = string.sub(s, i, i + char_len - 1)
        i = i + char_len
        return char
    end
    return iter
end

function ChineseToInteger(chinese_number)
    local result = 0
    local current_selection = 0
    local current_number = 0
    local unit_value = 1

    for ch in utf8_char_iter(chinese_number) do
        if chinese_digits[ch] then
            current_number = chinese_digits[ch]
        elseif chinese_units[ch] then
            unit_value = chinese_units[ch]
            if current_number == 0 and ch == "十" then
                current_number = 1
            end
            current_selection = current_selection + current_number * unit_value
            current_number = 0
        elseif ch == "零" then
            current_number = 0
        end
    end

    result = result + current_selection + current_number
    return result
end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>tasks</name>
					<packageName></packageName>
					<script>function ExecuteTasksWithDelay(tasks, delay)
    local index = 1

    local function executeNextTask()
        if index &lt;= #tasks then
            tasks[index]()  -- Execute the current task
            index = index + 1  -- Move to the next task
            if index &lt;= #tasks then
                -- Schedule the next task after the delay
                tempTimer(delay, [[executeNextTask]])
            end
        end
    end

    -- Start by executing the first task immediately
    executeNextTask()
end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>random</name>
					<packageName></packageName>
					<script>function Random(n)
  return math.random(1, n)
end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>table</name>
					<packageName></packageName>
					<script>function Deepcopy(orig)
    return table.deepcopy(orig)
end


</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>string</name>
					<packageName></packageName>
					<script>function IsPrefix(s1, s2)
  if #s1 &gt; #s2 then
    return false
  end
  
  return string.sub(s2, 1, #s1) == s1
end

function StringBuilder()
  
  local self = {}
  local buffer = {}
  
  function self.append(str)
    table.insert(buffer, str)
  end

  function self.toString()
    return table.concat(buffer)
  end
  
  return self
end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>exceptions</name>
					<packageName></packageName>
					<script>function NotImplemented()
    Alert("Not implemented.")
end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>measure</name>
					<packageName></packageName>
					<script>function MeasureHotelSleep()
  local sw = StopWatch:New()
  
  local tid1 = tempTrigger("你躺在檀香木小床上，盖上紫红绸缎被子，不一会儿便做起了美梦。", function() sw:Start() end, 1)
  local tid2 = tempTrigger("你一觉醒来，觉得身体完全恢复了！", function()
    local lapse = sw:Lapse()
    Info(string.format("Time lapse: %d", lapse))
    sw:Clear()
    sw = nil
  end, 1)
  return sw, tid1, tid2
end</script>
					<eventHandlerList />
				</Script>
			</ScriptGroup>
			<ScriptGroup isActive="yes" isFolder="yes">
				<name>event</name>
				<packageName></packageName>
				<script></script>
				<eventHandlerList />
				<Script isActive="yes" isFolder="no">
					<name>onEnterRoom</name>
					<packageName></packageName>
					<script>function onEnterRoom(event, room_name, exits)
  debugc(string.format("%s: %s, %s", event, room_name, serialize(exits)))
  -- local room = CreateRoom(room_name)
  
  if room_name == "城隍庙" then
    raiseEvent("Respawn")
  end
    
  if env["onEnterRoomEventHandler"] ~= nil then
    debugc("onEnterRoomEventHandler")
    
    local f = env["onEnterRoomEventHandler"]
    env["onEnterRoomEventHandler"] = nil
    f(room_name, exits)
  end
  
  if type(env["OnEnterRoomDest"]) == "string" then
    
    if GetRoomId(room_name, exits) == env["OnEnterRoomDest"] then
      env["OnEnterRoomDest"] = nil
      raiseEvent("TravelFinished")
    end
  end  
end</script>
					<eventHandlerList>
						<string>EnterRoom</string>
					</eventHandlerList>
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>onSysConnectionEvent</name>
					<packageName></packageName>
					<script>function onSysConnectionEvent(event)
  debugc("onSysConnectionEvent")
  if env["disable_reconnect"] then
    return
  end
  send("gb")
  Login()
end


function Login()
  debugc("Login::" .. Account["id"])
  if Account and Account["id"] and Account["pw"] then
    send(Account["id"])
    send(Account["pw"])
    send("y")
  end
end</script>
					<eventHandlerList>
						<string>sysConnectionEvent</string>
					</eventHandlerList>
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>onSysLoadEvent</name>
					<packageName></packageName>
					<script>function onSysLoadEvent()
  debugc("onSysLoadEvent")  
  -- LoadRooms()
end
</script>
					<eventHandlerList>
						<string>sysLoadEvent</string>
					</eventHandlerList>
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>onSysDisconnectionEvent</name>
					<packageName></packageName>
					<script>local retryTimerId = 0
local retryDelay = 0

function onSysDisconnectionEvent(event)
  debugc("onSysDisconnectionEvent")  
  disableTimer("timer_hp")
  
  if retryTimerId then
    killTimer(retryTimerId)
  end 
  
  retryConnect(retryDelay)
  retryDelay = retryDelay * 2 + Random(5)
  if retryDelay &gt; 30 then
    retryDelay = 0
  end
end


function retryConnect(delay)
  if not delay then
    reconnect()
    return
  end
  Info(string.format("Reconnecting in %d seconds.", delay))
  retryTimerId = tempTimer(delay, function() reconnect() end)
end</script>
					<eventHandlerList>
						<string>sysDisconnectionEvent</string>
					</eventHandlerList>
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>onSysSpeedwalkStarted</name>
					<packageName></packageName>
					<script>function onSysSpeedwalkStarted()
  env["speedwalk"] = "started"
end</script>
					<eventHandlerList>
						<string>sysSpeedwalkStarted</string>
					</eventHandlerList>
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>onSysSpeedwalkFinished</name>
					<packageName></packageName>
					<script>function onSysSpeedwalkFinished()
  debugc("onSysSpeedwalkFinished")
  env["speedwalk"] = nil
  
  if env["TaskOnWalkFinished"] ~= nil and type(env["TaskOnWalkFinished"]) == "function" then
    debugc("TaskOnWalkFinished")
    local f = env["TaskOnWalkFinished"]
    env["TaskOnWalkFinished"] = nil
    f()
  end
  
  if env["onSysSpeedwalkFinishedEventHandler"] ~= nil
    and type(env["onSysSpeedwalkFinishedEventHandler"]) == "function"
    then
    local f = env["onSysSpeedwalkFinishedEventHandler"]
    env["onSysSpeedwalkFinishedEventHandler"] = nil
    f()
  end
end</script>
					<eventHandlerList>
						<string>sysSpeedwalkFinished</string>
					</eventHandlerList>
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>onSysSpeedwalkStopped</name>
					<packageName></packageName>
					<script>function onSysSpeedwalkStopped()
  env["speedwalk"] = "stopped"
end</script>
					<eventHandlerList>
						<string>sysSpeedwalkStopped</string>
					</eventHandlerList>
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>onSysExitEvent</name>
					<packageName></packageName>
					<script>function onSysExitEvent()
  debugc("onSysExitEvent")
  SaveRooms()
end</script>
					<eventHandlerList>
						<string>sysExitEvent</string>
					</eventHandlerList>
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>onSysTelnetEvent</name>
					<packageName></packageName>
					<script>function onSysTelnetEvent()
  debugc("onSysTelnetEvent")
end</script>
					<eventHandlerList>
						<string>sysTelnetEvent</string>
					</eventHandlerList>
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>onLoginSuccessEvent</name>
					<packageName></packageName>
					<script>function onLoginSuccessEvent()
  debugc("onLoginSuccessEvent")
  env["房间"] = nil
  env["出口"] = nil  
  
  enableTimer("timer_hp")
  
  send("look;;hp;;skills;;score")
  
  if type(env["mode"]) == "string" then
      tempTimer(3, ResumeAction)
  end
end</script>
					<eventHandlerList>
						<string>loginSuccessEvent</string>
					</eventHandlerList>
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>onVitalsUpdated</name>
					<packageName></packageName>
					<script>function onVitalsUpdated()
  -- debugc("onVitalsUpdated")
  VitalsUpdatedEventHandler()
end
</script>
					<eventHandlerList>
						<string>VitalsUpdated</string>
					</eventHandlerList>
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>onTravelFinished</name>
					<packageName></packageName>
					<script>function onTravelFinished()
  -- debugc("onTravelFinished")
  if type(env["onTravelFinishedEventHandler"]) == "function" then
    local f = env["onTravelFinishedEventHandler"]
    env["onTravelFinishedEventHandler"] = nil
    f()
  end
end</script>
					<eventHandlerList>
						<string>TravelFinished</string>
					</eventHandlerList>
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>onBeingAttacked</name>
					<packageName></packageName>
					<script>function onBeingAttacked(event, enemy_id, enemy_name)
  local function log_enemy()
      debugc(string.format("on %s: %s, %s", event, enemy_id, enemy_name))
      Alert(string.format("%s(%s) is attacking you!", enemy_name, enemy_id))
      LogLastLines(300, "enemy")
  end
  
  local status, result = pcall(log_enemy)
  
  -- tempTimer(1, function() send("quit") end)
  -- send("quit")
end


</script>
					<eventHandlerList>
						<string>BeingAttacked</string>
					</eventHandlerList>
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>onRespawn</name>
					<packageName></packageName>
					<script>function onRespawn(event)
  debugc("respawn")
  LogLastLines(300, "post_mortem")
end</script>
					<eventHandlerList>
						<string>Respawn</string>
					</eventHandlerList>
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>onSkillUpdated</name>
					<packageName></packageName>
					<script>function onSkillUpdated(event)
  debugc(event)
  
  if type(env["onSkillUpdatedEventHandler"]) == "function" then
    local func = env["onSkillUpdatedEventHandler"]
    env["onSkillUpdatedEventHandler"] = nil
    func()
  end
end</script>
					<eventHandlerList>
						<string>SkillUpdated</string>
					</eventHandlerList>
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>onBeingInspected</name>
					<packageName></packageName>
					<script>function onBeingInspected()

    local function log_enemy()
        debugc(string.format("on %s: %s, %s", event, enemy_id, enemy_name))
        Warn(string.format("%s(%s) is looking at you.", enemy_name, enemy_id))
        LogLastLines(50, string.format("_%s_being_inspected", getCharacterName()))
    end
    
    local status, result = pcall(log_enemy)
    
    if not status then
        print("Caught an error: " .. result)
    else
        print("Result: " .. result)
    end
end</script>
					<eventHandlerList>
						<string>BeingInspected</string>
					</eventHandlerList>
				</Script>
			</ScriptGroup>
			<ScriptGroup isActive="yes" isFolder="yes">
				<name>map</name>
				<packageName></packageName>
				<script></script>
				<eventHandlerList />
				<Script isActive="yes" isFolder="no">
					<name>hotels</name>
					<packageName></packageName>
					<script>Hotels = {
    ["天龙客栈"] = {
        ["房间"] = { "u;;s", "u;;n", "u;;e", "u;;ne", "u;;se", "u;;w", "u;;sw", "u;;nw" },
        ["npc"] = "waiter",
        ["bank"] = "大理钱庄",
    },
    ["古城客栈"] = {
        ["房间"] = { "u;;e", "u;;s;;w", "u;;s;;e;;s", "u;;w;;n" },
        ["npc"] = "keeper",
        ["bank"] = "洛阳钱庄",
    },
    ["登封客栈"] = {
        ["房间"] = { "u;;n", "u;;w", "u;;e" },
        ["npc"] = "waiter",
        ["bank"] = "登封钱庄",
    },
    ["龙门客栈"] = {
        ["房间"] = { "u;;nw", "u;;n", "u;;ne", "u;;w", "u;;e", "u;;sw", "u;;s", "u;;se" },
        ["npc"] = "waiter",
        ["bank"] = "富贵钱庄",
    },
    ["禅房"] = {
        ["房间"] = { "e", "se", "ne", "sw", "nw" },
        ["npc"] = "qingzheng",
        ["bank"] = "登封钱庄",
    },
    -- 天山客栈
    ["东客房"] = {
        ["房间"] = { "s", "eu", "e", "wu", "se", "w", "sw", "su" },
        ["npc"] = "xiao cui",
        ["bank"] = "",
    },
    -- 逍遥子客栈
    ["小客栈"] = {
        ["房间"] = { "u;;s", "u;;n", "u;;e", "u;;w" },
        ["npc"] = "waiter",
        ["bank"] = "洛阳钱庄",
    },
    ["不醉无归小客栈"] = {
        ["房间"] = { "u;;e", "u;;w", "u;;n", "u;;s" },
        ["npc"] = "waiter",
        ["bank"] = "帐房",
    }
}
</script>
					<eventHandlerList />
					<Script isActive="yes" isFolder="no">
						<name>hotel_access_functions</name>
						<packageName></packageName>
						<script>function HotelGotoRoom(hotel)
  assert(Hotels[hotel] ~= nil, string.format("Unrecognized hotel '%s'", hotel))
  local paths = Hotels[hotel]["房间"]
  
  AssertType(paths, "paths", "table")
  assert(paths ~= nil)
    
  -- Generate a random integer between 1 and 10
  local r = math.random(1, #paths)
  
  local delay = 1
  local epoch = getEpoch()
  if Hotels["last_attempt"] and type(Hotels["last_attempt"]) == "number" then
    if epoch - Hotels["last_attempt"] &lt; 2 then
      delay = 2
    end
  end
  Hotels["last_attempt"] = epoch
  
  tempTimer(delay, function()
    send(paths[r])
  end)
end</script>
						<eventHandlerList />
					</Script>
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>global</name>
					<packageName></packageName>
					<script>MainMap = {}

-- 新手区
MainMap["欢迎来到天龙八部"] = {}
MainMap["食物屋"] = {}


-- 汴梁
MainMap["汴梁城中心"] = {}
MainMap["东安门"] = {}
MainMap["镇西门"] = {}
MainMap["龙门客栈"] = {}
MainMap["富贵钱庄"] = {}
MainMap["聚宝门"] = {}
MainMap["五龙场"] = {}
MainMap["金刀镖局"] = {}
MainMap["金刀镖局大院"] = {}
MainMap["城隍庙"] = {
    ["汴梁东大街-5"] = { "1n", 1 }
}

MainMap["沈记杂货铺"] = {
    ["汴梁南大街-3"] = { "1s2w", 3 }
}

MainMap["汴梁南大街-3"] = {
    ["沈记杂货铺"] = { "2e1n", 3 },
}


-- 洛阳
MainMap["洛阳中心"] = {}

MainMap["洛阳东街1"] = {}
MainMap["洛阳东门"] = {}

MainMap["洛阳南街2"] = {}

MainMap["洛阳西街1"] = {}
MainMap["洛阳西街2"] = {}
MainMap["洛阳西街3"] = {}
MainMap["洛阳西街4"] = {}

MainMap["洛阳北街1"] = {}

MainMap["洛阳西门"] = {}
MainMap["天水关"] = {}
MainMap["古城客栈"] = {}
MainMap["粮店"] = {}
MainMap["洛阳钱庄"] = {}

MainMap["松鹤楼"] = {}
MainMap["松鹤楼二楼"] = {}


-- 大理
MainMap["十字广场"] = {}
MainMap["大理北街１"] = {}
MainMap["大理北街４"] = {}
MainMap["大理东街２"] = {}
MainMap["大理南街２"] = {}
MainMap["大理南街４"] = {}
MainMap["大理西街１"] = {}
MainMap["大理西街３"] = {}
MainMap["精武镖局"] = {
    ["库房-n"] = { "1e1s", 2 },
}
MainMap["库房-n"] = {
    ["精武镖局"] = { "1n1w", 2 }
}
MainMap["大理钱庄"] = {}
MainMap["天龙客栈"] = {}
MainMap["段家当铺"] = {}
MainMap["中药店"] = {}


-- 皇宫
MainMap["皇宫大门"] = {}
MainMap["清和宫"] = {}
MainMap["大殿-皇宫-wd-sd-nd-ed"] = {}

MainMap["杂货铺"] = {}
MainMap["戏院"] = {}

MainMap["江边小路"] = {}
MainMap["善人渡"] = {}


-- 登封
MainMap["登封县中央广场"] = {}
MainMap["登封县东街"] = {}
MainMap["登封县东郊"] = {}
MainMap["登封县北街"] = {}
MainMap["登封县西街一"] = {}
MainMap["登封客栈"] = {}
MainMap["登封钱庄"] = {}


-- 秦家寨
MainMap["山坳"] = {}
MainMap["寨门"] = {}
MainMap["广场"] = {}


-- auxilious room. doesn't exist
MainMap["汴梁东大街-3"] = {}
MainMap["汴梁东大街-5"] = {}

MainMap["汴梁南大街-1"] = {}


MainMap["汴梁南大街-5"] = {}
MainMap["汴梁西大街-3"] = {}
MainMap["库房-金刀镖局-w"] = {
    ["金刀镖局大院"] = { "1w", 1 },
}

MainMap["黄土大道-开封-大理-n-w-sw"] = {}
MainMap["黄土大道-开封-洛阳-登封-s-e-w"] = {}


-- Edges

MainMap["欢迎来到天龙八部"]["龙门客栈"] = { "1d", 1 }
MainMap["欢迎来到天龙八部"]["食物屋"] = { "5s", 5 }
MainMap["食物屋"]["龙门客栈"] = { "6s1d", 7 }


MainMap["汴梁城中心"]["汴梁西大街-3"] = { "3w", 3 }
MainMap["汴梁西大街-3"]["汴梁城中心"] = { "3e", 3 }

MainMap["汴梁西大街-3"]["镇西门"] = { "3w", 3 }
MainMap["镇西门"]["汴梁西大街-3"] = { "3e", 3 }

MainMap["汴梁西大街-3"]["五龙场"] = { "3n", 3 }
MainMap["五龙场"]["汴梁西大街-3"] = { "3s", 3 }

MainMap["五龙场"]["金刀镖局"] = { "1e1n", 2 }
MainMap["金刀镖局"]["五龙场"] = { "1s1w", 2 }

MainMap["金刀镖局"]["金刀镖局大院"] = { "1n", 1 }
MainMap["金刀镖局大院"]["金刀镖局"] = { "1s", 1 }
MainMap["金刀镖局大院"]["库房-金刀镖局-w"] = { "1e", 1 }

MainMap["汴梁城中心"]["汴梁东大街-3"] = { "3e", 3 }
MainMap["汴梁东大街-3"]["汴梁城中心"] = { "3w", 3 }

MainMap["汴梁东大街-3"]["汴梁东大街-5"] = { "2e", 2 }
MainMap["汴梁东大街-5"]["汴梁东大街-3"] = { "2w", 2 }

MainMap["汴梁东大街-5"]["东安门"] = { "1e", 1 }
MainMap["东安门"]["汴梁东大街-5"] = { "1w", 1 }



MainMap["汴梁城中心"]["汴梁南大街-1"] = { "1s", 1 }
MainMap["汴梁南大街-1"]["汴梁城中心"] = { "1n", 1 }

MainMap["汴梁南大街-1"]["富贵钱庄"] = { "1w", 1 }
MainMap["富贵钱庄"]["汴梁南大街-1"] = { "1e", 1 }

MainMap["汴梁南大街-5"]["聚宝门"] = { "1s", 1 }
MainMap["聚宝门"]["汴梁南大街-5"] = { "1n", 1 }

MainMap["汴梁南大街-1"]["汴梁南大街-3"] = { "2s", 2 }
MainMap["汴梁南大街-3"]["汴梁南大街-1"] = { "2n", 2 }

MainMap["汴梁南大街-3"]["汴梁南大街-5"] = { "2s", 2 }
MainMap["汴梁南大街-5"]["汴梁南大街-3"] = { "2n", 2 }

MainMap["龙门客栈"]["汴梁南大街-5"] = { "1w", 1 }
MainMap["汴梁南大街-5"]["龙门客栈"] = { "1e", 1 }

MainMap["聚宝门"]["黄土大道-开封-大理-n-w-sw"] = { "3s", 3 }
MainMap["黄土大道-开封-大理-n-w-sw"]["聚宝门"] = { "3n", 3 }

MainMap["黄土大道-开封-大理-n-w-sw"]["江边小路"] = { "1sw1s1w", 3 }
MainMap["江边小路"]["黄土大道-开封-大理-n-w-sw"] = { "1e1n1ne", 3 }

MainMap["江边小路"]["聚宝门"] = { "1e1n1ne3n", 6 }
MainMap["聚宝门"]["江边小路"] = { "3s1sw1s1w", 6 }

MainMap["江边小路"]["善人渡"] = { "1nd1w", 2 }
MainMap["善人渡"]["江边小路"] = { "1e1su", 2 }


--  大理
MainMap["黄土大道-开封-大理-n-w-sw"]["大理北街４"] = { "1sw5s", 6 }
MainMap["大理北街４"]["黄土大道-开封-大理-n-w-sw"] = { "5n1ne", 6 }

MainMap["十字广场"]["大理北街１"] = { "1n", 1 }
MainMap["大理北街１"]["十字广场"] = { "1s", 1 }

MainMap["大理北街１"]["大理北街４"] = { "3n", 3 }
MainMap["大理北街４"]["大理北街１"] = { "3s", 3 }

MainMap["十字广场"]["大理南街２"] = { "2s", 2 }
MainMap["大理南街２"]["十字广场"] = { "2n", 2 }

MainMap["大理南街２"]["中药店"] = { "1e", 1 }
MainMap["中药店"]["大理南街２"] = { "1w", 1 }

MainMap["大理南街２"]["大理南街４"] = { "2s", 2 }
MainMap["大理南街４"]["大理南街２"] = { "2n", 2 }

MainMap["大理南街４"]["精武镖局"] = { "1e", 1 }
MainMap["精武镖局"]["大理南街４"] = { "1w", 1 }

MainMap["十字广场"]["大理东街２"] = { "2e", 2 }
MainMap["大理东街２"]["十字广场"] = { "2w", 2 }

MainMap["大理东街２"]["大理钱庄"] = { "1n", 1 }
MainMap["大理钱庄"]["大理东街２"] = { "1s", 1 }

MainMap["大理东街２"]["天龙客栈"] = { "1s", 1 }
MainMap["天龙客栈"]["大理东街２"] = { "1n", 1 }

MainMap["十字广场"]["大理西街１"] = { "1w", 1 }
MainMap["大理西街１"]["十字广场"] = { "1e", 1 }

MainMap["段家当铺"]["大理西街１"] = { "1n", 1 }
MainMap["大理西街１"]["段家当铺"] = { "1s", 1 }

MainMap["大理西街１"]["大理西街３"] = { "2w", 2 }
MainMap["大理西街３"]["大理西街１"] = { "2e", 2 }

MainMap["大理西街１"]["戏院"] = { "1n", 1 }
MainMap["戏院"]["大理西街１"] = { "1s", 1 }

MainMap["杂货铺"]["大理西街３"] = { "1n", 1 }
MainMap["大理西街３"]["杂货铺"] = { "1s", 1 }

-- 大理皇宫

MainMap["大理北街１"]["皇宫大门"] = { "3w2n", 5 }
MainMap["皇宫大门"]["大理北街１"] = { "2s3e", 5 }

MainMap["皇宫大门"]["清和宫"] = { "3n1nu", 4 }
MainMap["清和宫"]["皇宫大门"] = { "1sd3s", 4 }

MainMap["大殿-皇宫-wd-sd-nd-ed"]["清和宫"] = { "2sd2su", 4 }
MainMap["清和宫"]["大殿-皇宫-wd-sd-nd-ed"] = { "2nd2nu", 4 }

-- 洛阳地区

MainMap["洛阳东街1"]["洛阳中心"] = { "1w", 1 }
MainMap["洛阳中心"]["洛阳东街1"] = { "1e", 1 }

MainMap["洛阳东街1"]["洛阳钱庄"] = { "1s", 1 }
MainMap["洛阳钱庄"]["洛阳东街1"] = { "1n", 1 }

MainMap["洛阳东街1"]["古城客栈"] = { "1n", 1 }
MainMap["古城客栈"]["洛阳东街1"] = { "1s", 1 }

MainMap["洛阳东门"]["洛阳东街1"] = { "4w", 4 }
MainMap["洛阳东街1"]["洛阳东门"] = { "4e", 4 }


MainMap["洛阳南街2"]["洛阳中心"] = { "2n", 2 }
MainMap["洛阳中心"]["洛阳南街2"] = { "2s", 2 }

MainMap["洛阳南街2"]["粮店"] = { "1e", 1 }
MainMap["粮店"]["洛阳南街2"] = { "1w", 1 }

MainMap["洛阳中心"]["洛阳西街1"] = { "1w", 1 }
MainMap["洛阳西街1"]["洛阳中心"] = { "1e", 1 }

MainMap["洛阳西街1"]["洛阳西街2"] = { "1w", 1 }
MainMap["洛阳西街2"]["洛阳西街1"] = { "1e", 1 }

MainMap["洛阳西街2"]["洛阳西街3"] = { "1w", 1 }
MainMap["洛阳西街3"]["洛阳西街2"] = { "1e", 1 }

MainMap["洛阳西街3"]["洛阳西街4"] = { "1w", 1 }
MainMap["洛阳西街4"]["洛阳西街3"] = { "1e", 1 }

MainMap["洛阳西街4"]["洛阳西门"] = { "1w", 1 }
MainMap["洛阳西门"]["洛阳西街4"] = { "1e", 1 }

MainMap["洛阳西门"]["天水关"] = { "3w", 3 }
MainMap["天水关"]["洛阳西门"] = { "3e", 3 }

MainMap["洛阳中心"]["洛阳北街1"] = { "1n", 1 }
MainMap["洛阳北街1"]["洛阳中心"] = { "1s", 1 }

MainMap["洛阳中心"]["洛阳北街1"] = { "1n", 1 }
MainMap["洛阳北街1"]["洛阳中心"] = { "1s", 1 }

MainMap["洛阳北街1"]["松鹤楼"] = { "1w", 1 }
MainMap["松鹤楼"]["洛阳北街1"] = { "1e", 1 }

MainMap["松鹤楼"]["松鹤楼二楼"] = { "1u", 1 }
MainMap["松鹤楼二楼"]["松鹤楼"] = { "1d", 1 }


--  登封县

MainMap["登封县中央广场"]["黄土大道-开封-大理-n-w-sw"] = { "6e", 6 }
MainMap["黄土大道-开封-大理-n-w-sw"]["登封县中央广场"] = { "6w", 6 }

MainMap["登封县中央广场"]["登封县东街"] = { "1e", 1 }
MainMap["登封县东街"]["登封县中央广场"] = { "1w", 1 }

MainMap["登封县东街"]["登封县东郊"] = { "1e", 1 }
MainMap["登封县东郊"]["登封县东街"] = { "1w", 1 }

MainMap["登封县中央广场"]["登封县北街"] = { "1n", 1 }
MainMap["登封县北街"]["登封县中央广场"] = { "1s", 1 }

MainMap["登封县北街"]["登封客栈"] = { "1e", 1 }
MainMap["登封客栈"]["登封县北街"] = { "1w", 1 }

MainMap["登封县中央广场"]["登封县西街一"] = { "1w", 1 }
MainMap["登封县西街一"]["登封县中央广场"] = { "1e", 1 }

MainMap["登封县西街一"]["登封钱庄"] = { "1n", 1 }
MainMap["登封钱庄"]["登封县西街一"] = { "1s", 1 }


-- 秦家寨
MainMap["天水关"]["山坳"] = { "1n1w1wu1nw", 4 }
MainMap["山坳"]["天水关"] = { "1se1ed1e1s", 4 }

MainMap["山坳"]["寨门"] = { "1pushaside bush2n1e1n2e1n1e3n", 12 }
MainMap["寨门"]["山坳"] = { "3s1w1s1e", 6 }

MainMap["寨门"]["广场"] = { "2n", 2 }
MainMap["广场"]["寨门"] = { "2s", 2 }


-- auxilious nodes
MainMap["黄土大道-开封-洛阳-登封-s-e-w"]["镇西门"] = { "3e", 3 }
MainMap["镇西门"]["黄土大道-开封-洛阳-登封-s-e-w"] = { "3w", 3 }
MainMap["黄土大道-开封-洛阳-登封-s-e-w"]["洛阳东门"] = { "2w", 2 }
MainMap["洛阳东门"]["黄土大道-开封-洛阳-登封-s-e-w"] = { "2e", 2 }
MainMap["黄土大道-开封-洛阳-登封-s-e-w"]["登封县北街"] = { "2s", 2 }
MainMap["登封县北街"]["黄土大道-开封-洛阳-登封-s-e-w"] = { "2n", 2 }


-- 东方
EastMap = {
    -- 蓬莱
    ["都灵子卧室"] = {
        ["「三清观」大殿"] = { "2w1s1e", 4 },
    },
    ["「三清观」大殿"] = {
        ["前庭"] = { "2s", 2 },
        ["都灵子卧室"] = { "1w1n2e", 4 },
    },
    ["前庭"] = {
        ["「三清观」大门"] = { "2s", 2 },
        ["「三清观」大殿"] = { "2n", 2 },
        ["小院-s-n-w"] = { "2e", 2 },
    },
    ["小院-s-n-w"] = {
        ["前庭"] = { "2w", 2 },
        ["帐房"] = { "1n", 1 },
        ["药房"] = { "1s", 1 },
    },
    ["帐房"] = {
        ["小院-s-n-w"] = { "1s", 1 },
    },
    ["药房"] = {
        ["小院-s-n-w"] = { "1n", 1 },
    },
    ["「三清观」大门"] = {
        ["海边小道-n-s-e-w"] = { "2s", 2 },
        ["前庭"] = { "2n", 2 },
    },
    ["海边小道-n-s-e-w"] = {
        ["蓬莱岛码头"] = { "1s", 1 },
        ["不醉无归小客栈"] = { "1w", 1 },
        ["「三清观」大门"] = { "2n", 2 },
    },
    ["不醉无归小客栈"] = {
        ["海边小道-n-s-e-w"] = { "1e", 1 },
    },
    ["蓬莱岛码头"] = {
        ["海边小道-n-s-e-w"] = { "1n", 1 },
        ["黄土大道-开封-泰山-蓬莱-se-w"] = { "1w2sw1w1nw", 5 }
    },
    ["黄土大道-开封-泰山-蓬莱-se-w"] = {
        ["蓬莱岛码头"] = { "1se1e2ne1e", 5 },
    },
}


--  西域
WestMap = {}

-- 天山
WestMap["小山坡"] = {}
WestMap["青海草原-eu-w"] = {}
WestMap["青海草原-n-s-e-w-nw"] = {}

WestMap["虎跳溪"] = {}
WestMap["灵鹫宫宫门"] = {}


-- 一品堂
WestMap["松树林-s-e-w-nu"] = {}
WestMap["走道-n-s-e-w"] = {}
WestMap["一品堂"] = {}
WestMap["点将台"] = {}
WestMap["演武场"] = {}
WestMap["一品堂大厅"] = {}


-- 天山
WestMap["小山坡"]["青海草原-eu-w"] = { "1wd", 1 }
WestMap["青海草原-eu-w"]["小山坡"] = { "1eu", 1 }

WestMap["小山坡"]["松树林-s-e-w-nu"] = { "1sd", 1 }
WestMap["松树林-s-e-w-nu"]["小山坡"] = { "1nu", 1 }

WestMap["松树林-s-e-w-nu"]["一品堂"] = { "1s", 1 }
WestMap["一品堂"]["松树林-s-e-w-nu"] = { "1n", 1 }

WestMap["一品堂"]["走道-n-s-e-w"] = { "1s", 1 }
WestMap["走道-n-s-e-w"]["一品堂"] = { "1n", 1 }

WestMap["走道-n-s-e-w"]["演武场"] = { "1e1s", 2 }
WestMap["演武场"]["走道-n-s-e-w"] = { "1n1w", 2 }

WestMap["走道-n-s-e-w"]["点将台"] = { "1w1s", 2 }
WestMap["点将台"]["走道-n-s-e-w"] = { "1n1e", 2 }

WestMap["走道-n-s-e-w"]["一品堂大厅"] = { "1s", 1 }
WestMap["一品堂大厅"]["走道-n-s-e-w"] = { "1n", 1 }

WestMap["青海草原-eu-w"]["青海草原-n-s-e-w-nw"] = { "2w", 2 }
WestMap["青海草原-n-s-e-w-nw"]["青海草原-eu-w"] = { "2e", 2 }

WestMap["青海草原-n-s-e-w-nw"]["山脚-se-ne-nu"] = { "1nw", 1 }

WestMap["虎跳溪"]["山脚-se-ne-nu"] = { "2nu", 2 }

WestMap["山脚-se-ne-nu"] = {
    ["青海草原-n-s-e-w-nw"] = { "1se", 1 },
    ["山脚-n-e-w-su"] = { "1ne1nu4nd", 6 },
    ["虎跳溪"] = { "2nu", 2 }
}

WestMap["山脚-n-e-w-su"] = {
    ["山脚-se-ne-nu"] = { "4su1sd1sw", 6 },
    ["谷场"] = { "2n", 2 },
    ["林中空地"] = { "3w1nw1sw", 5 },
}

WestMap["谷场"] = {
    ["山脚-n-e-w-su"] = { "2s", 2 }
}

WestMap["林中空地"] = {
    ["山脚-n-e-w-su"] = { "1ne1se3e", 5 },
    ["青草坪"] = { "1nw1sw3e1s2w", 8 },
}

WestMap["青草坪"] = {
    ["林中空地"] = { "3e1n1w1ne1se", 7 },
    ["小木屋"] = { "2n", 2 },
    ["小客栈"] = { "3w", 3 },
}

WestMap["小木屋"] = {
    ["青草坪"] = { "2s", 2 },
}

WestMap["小客栈"] = {
    ["青草坪"] = { "3e", 3 },
}

-- WestMap["灵鹫宫宫门"]["虎跳溪"] = { "6s2sd1wu1sd", 10 }

-- 少林

ShaolinMap = {}
ShaolinMap["少室山山脚"] = {}
ShaolinMap["山间土屋"] = {}
ShaolinMap["石井"] = {}
ShaolinMap["一苇亭"] = {}
ShaolinMap["法如塔"] = {}
ShaolinMap["孟钵峰顶"] = {}
ShaolinMap["二祖庵庵门"] = {}

ShaolinMap["林间小径-e-ne-su"] = {}
ShaolinMap["山道-se-sw-nu"] = {}

-- ShaolinMap[""] = {}
-- ShaolinMap[""] = {}
-- ShaolinMap[""] = {}
-- ShaolinMap[""] = {}
-- ShaolinMap[""] = {}
-- ShaolinMap[""] = {}
-- ShaolinMap[""] = {}
-- ShaolinMap[""] = {}
-- ShaolinMap[""] = {}
-- ShaolinMap[""] = {}
-- ShaolinMap[""] = {}

ShaolinMap["山门"] = {
    ["广场中央"] = { "2n", 2 },
    ["山道-se-sw-nu"] = { "2sd", 2 },
}

ShaolinMap["广场中央"] = {
    ["山门"] = { "2s", 2 },
    ["大雄宝殿"] = { "1n2nu2n2nu", 7 },
}

ShaolinMap["大雄宝殿"] = {
    ["广场中央"] = { "2sd2s2sd1s", 7 },
    ["练武场"] = { "1n", 1 },
}

ShaolinMap["练武场"] = {
    ["大雄宝殿"] = { "1s", 1 },
    ["法堂"] = { "1n", 1 },
}

ShaolinMap["法堂"] = {
    ["练武场"] = { "1s", 1 },
    ["禅房"] = { "1e", 1 }
}

ShaolinMap["禅房"] = {
    ["法堂"] = { "1w", 1 },
    ["回廊-s-n-e-w"] = { "1n", 1 },
}

ShaolinMap["回廊-s-n-e-w"] = {
    ["禅房"] = { "1s", 1 },
    ["回廊-s-n-e"] = { "1n", 1 },
    ["地藏殿"] = { "1w", 1 },
}

ShaolinMap["回廊-s-n-e"] = {
    ["菩提院"] = { "1e1n", 2 },
    ["回廊-s-n-e-w"] = { "1s", 1 },
}

ShaolinMap["地藏殿"] = {
    ["方丈精舍"] = { "2s1open door1s", 4 },
    ["回廊-s-n-e-w"] = { "1e", 1 },
}

ShaolinMap["方丈精舍"] = {
    ["地藏殿"] = { "1open door3n", 4 }
}

ShaolinMap["菩提院"] = {
    ["回廊-s-n-e"] = { "1s1w", 2 },
}

ShaolinMap["少室山山脚"]["山间土屋"] = { "1nw1nu", 2 }
ShaolinMap["山间土屋"]["少室山山脚"] = { "1sd1se", 2 }

ShaolinMap["山间土屋"]["石井"] = { "1e", 1 }
ShaolinMap["石井"]["山间土屋"] = { "1e", 1 }

ShaolinMap["山间土屋"]["一苇亭"] = { "1n1eu", 2 }
ShaolinMap["一苇亭"]["山间土屋"] = { "1wd1s", 2 }

ShaolinMap["一苇亭"]["山道-se-sw-nu"] = { "1n1nw", 2 }
ShaolinMap["山道-se-sw-nu"]["一苇亭"] = { "1se1s", 2 }

ShaolinMap["山道-se-sw-nu"]["林间小径-e-ne-su"] = { "1sw1wu1su1sw", 4 }
ShaolinMap["林间小径-e-ne-su"]["山道-se-sw-nu"] = { "1ne1nd1ed1ne", 4 }

ShaolinMap["山道-se-sw-nu"]["山门"] = { "2nu", 2 }

ShaolinMap["林间小径-e-ne-su"]["法如塔"] = { "1e", 1 }
ShaolinMap["法如塔"]["林间小径-e-ne-su"] = { "1w", 1 }

ShaolinMap["林间小径-e-ne-su"]["孟钵峰顶"] = { "1su", 1 }
ShaolinMap["孟钵峰顶"]["林间小径-e-ne-su"] = { "1nd", 1 }

ShaolinMap["孟钵峰顶"]["二祖庵庵门"] = { "1w", 1 }
ShaolinMap["二祖庵庵门"]["孟钵峰顶"] = { "1e", 1 }

ShaolinMap["二祖庵庵门"]["卓锡泉"] = { "1open door1n", 2 }

ShaolinMap["大殿-s-e-w"] = {
    ["卓锡泉"] = { "1s", 1 },
}

ShaolinMap["卓锡泉"] = {
    ["二祖庵庵门"] = { "1open door1s", 2 },
    ["大殿-s-e-w"] = { "1open door1n", 2 }
}


LingJiuGongMap = {
    ["灵鹫宫药铺"] = {
        ["大厅"] = { "1e", 1 }
    },
    ["大厅"] = {
        ["灵鹫宫药铺"] = { "1w", 1 },
        ["小院-s-n-e-w"] = { "1s", 1 },
    },
    ["小院-s-n-e-w"] = {
        ["大厅"] = { "1n", 1 },
        ["东厢房"] = { "1e", 1 },
    },
    ["东厢房"] = {
        ["小院-s-n-e-w"] = { "1w", 1 },
        ["东客房"] = { "1s", 1 },
    },
    ["东客房"] = {
        ["东厢房"] = { "1n", 1 },
    },
}
</script>
					<eventHandlerList />
					<Script isActive="yes" isFolder="no">
						<name>auxiliary_rooms</name>
						<packageName></packageName>
						<script>AuxiliaryRooms = {
    ["黄土大道"] = {
        ["黄土大道-开封-大理-n-w-sw"] = { "north", "west", "southwest" },
        ["黄土大道-开封-洛阳-登封-s-e-w"] = { "south", "east", "west" },
        ["黄土大道-开封-泰山-蓬莱-se-w"] = { "southeast", "west" },
    },
    ["汴梁南大街"] = {
        ["汴梁南大街-1"] = { "south", "north", "west" },
        ["汴梁南大街-3"] = { "south", "north", "east", "west" },
        ["汴梁南大街-5"] = { "south", "north", "east" },
    },
    ["汴梁西大街"] = {
        ["汴梁西大街-3"] = { "south", "north", "east", "west" },
    },
    ["库房"] = {
        ["库房-金刀镖局-w"] = { "west" },
        ["库房-n"] = { "north" },
    },
    ["青海草原"] = {
        ["青海草原-eu-w"] = { "eastup", "west" },
        ["青海草原-n-s-e-w-nw"] = { "north", "south", "east", "west", "northwest" },
    },
    ["山道"] = {
        ["山道-se-sw-nu"] = { "southeast", "southwest", "northup" }
    },
    ["林间小径"] = {
        ["林间小径-e-ne-su"] = { "east", "northeast", "southup" }
    },
    ["松树林"] = {
        ["松树林-s-e-w-nu"] = { "south", "east", "west", "northup" },
        ["松树林-e-nw-sw"] = { "east", "northwest", "southwest" },
    },
    ["大殿"] = {
        ["大殿-s-e-w"] = { "south", "east", "west" },
        ["大殿-皇宫-wd-sd-nd-ed"] = { "westdown", "southdown", "northdown", "eastdown" }
    },
    ["回廊"] = {
        ["回廊-s-n-e-w"] = { "south", "north", "east", "west" },
        ["回廊-s-n-e"] = { "south", "north", "east" },
    },
    ["山脚"] = {
        ["山脚-se-ne-nu"] = { "southeast", "northeast", "northup" },
        ["山脚-n-e-w-su"] = { "north", "east", "west", "southup" },
    },
    ["海边小道"] = {
        ["海边小道-n-s-e-w"] = { "north", "south", "east", "west" }
    },
    ["小院"] = {
        ["小院-s-n-w"] = { "south", "north", "west" },
        ["小院-s-n-e-w"] = { "south", "north", "east", "west" },
    }
}
</script>
						<eventHandlerList />
					</Script>
					<Script isActive="yes" isFolder="no">
						<name>auxiliary_functions</name>
						<packageName></packageName>
						<script>function AreEqual(arr1, arr2)
  AssertType(arr1, "AreEqual::arr1", "table")
  AssertType(arr2, "AreEqual::arr2", "table")
  if #arr1 ~= #arr2 then
    return false
  end
  
  for i=0, #arr1 do
    if arr1[i] ~= arr2[i] then
      return false
    end
  end
  return true
end

function GetAuxiliaryRoomId(game_name, exits)
    if not AuxiliaryRooms[game_name] then
        -- debugc(string.format("here: ", game_name))
        return nil
    end
    
    local rooms = AuxiliaryRooms[game_name]

    for id, e in pairs(rooms) do
        -- debugc(string.format("GetAuxiliaryRoomId::loop: %s", id))
        -- debugc(string.format("exits: %s", serialize(exits)))
        -- debugc(string.format("e: %s", serialize(e)))
        if AreEqual(e, exits) then
          return id
        end
    end
    return nil
end</script>
						<eventHandlerList />
					</Script>
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>areas</name>
					<packageName></packageName>
					<script>Maps = {
    ["中原"] = MainMap,
    ["东方"] = EastMap,
    ["西方"] = WestMap,
    ["少林"] = ShaolinMap,
    ["灵鹫宫"] = LingJiuGongMap,
}

RoomAreas = {
    ["小山坡"] = "西方",
    ["青海草原-eu-w"] = "西方",
    ["青海草原-n-s-e-w-nw"] = "西方",
    ["山脚-se-ne-nu"] = "西方",
    ["山脚-n-e-w-su"] = "西方",
    ["谷场"] = "西方",


    ["虎跳溪"] = "西方",
    ["灵鹫宫宫门"] = "西方",

    ["松树林-s-e-w-nu"] = "西方",
    ["走道"] = "西方",
    ["一品堂"] = "西方",
    ["点将台"] = "西方",
    ["演武场"] = "西方",
    ["一品堂大厅"] = "西方",
    ["林中空地"] = "西方",
    ["青草坪"] = "西方",
    ["小木屋"] = "西方",
    ["小客栈"] = "西方",

    --
    ["都灵子卧室"] = "东方",
    ["「三清观」大殿"] = "东方",
    ["前庭"] = "东方",
    ["小院-s-n-w"] = "东方",
    ["帐房"] = "东方",
    ["药房"] = "东方",
    ["「三清观」大门"] = "东方",
    ["海边小道-n-s-e-w"] = "东方",
    ["不醉无归小客栈"] = "东方",
    ["蓬莱岛码头"] = "东方",

    ["黄土大道-开封-泰山-蓬莱-se-w"] = "东方",

    --

    ["少室山山脚"] = "少林",
    ["山间土屋"] = "少林",
    ["石井"] = "少林",
    ["一苇亭"] = "少林",
    ["法如塔"] = "少林",
    ["孟钵峰顶"] = "少林",
    ["二祖庵庵门"] = "少林",
    ["大殿-s-e-w"] = "少林",
    ["卓锡泉"] = "少林",
    ["山门"] = "少林",

    ["大雄宝殿"] = "少林",
    ["广场中央"] = "少林",
    ["练武场"] = "少林",
    ["法堂"] = "少林",
    ["菩提院"] = "少林",

    ["禅房"] = "少林",
    ["回廊-s-n-e-w"] = "少林",
    ["回廊-s-n-e"] = "少林",
    ["地藏殿"] = "少林",
    ["方丈精舍"] = "少林",

    ["林间小径-e-ne-su"] = "少林",
    ["山道-se-sw-nu"] = "少林",

    ["灵鹫宫药铺"] = "灵鹫宫",
    ["大厅"] = "灵鹫宫",
    ["小院-s-n-e-w"] = "灵鹫宫",
    ["东厢房"] = "灵鹫宫",
    ["东客房"] = "灵鹫宫",
}
</script>
					<eventHandlerList />
					<Script isActive="yes" isFolder="no">
						<name>area_access_functions</name>
						<packageName></packageName>
						<script>local function assertStartingRoom(expectedRoom)
    local roomId = GetCurrentRoomId()
    debugc("Current Room Id: " .. roomId)
    assert(roomId == expectedRoom, "Invalid starting room. Abort.")
end

function df2sl()
    assertStartingRoom("登封县北街")
    local function _eventHandler(room_name, exits)
        if room_name == "少室山山脚" then
            raiseEvent("TravelFinished")
        elseif room_name ~= "官道" then
            debugc("Unexpected room. Abort.")
            env["onEnterRoomEventHandler"] = nil
            raiseEvent("TravelFinished")
        else
            local d = ""
            for _, dir in ipairs(exits) do
                if string.sub(dir, 1, 5) == "north" then
                    d = dir
                    break
                end
            end
            env["onEnterRoomEventHandler"] = _eventHandler
            send(d)
        end
    end

    env["onEnterRoomEventHandler"] = _eventHandler
    raiseEvent("TravelStarted")
    send("nw")
end

function sl2df()
    assertStartingRoom("少室山山脚")
    local function _eventHandler(room_name, exits)
        if room_name == "登封县北街" then
            raiseEvent("TravelFinished")
        elseif room_name ~= "官道" then
            debugc("Unexpected room. Abort.")
            env["onEnterRoomEventHandler"] = nil
            raiseEvent("TravelFinished")
        else
            local d = ""
            for _, dir in ipairs(exits) do
                if string.sub(dir, 1, 5) == "south" then
                    d = dir
                    break
                end
            end
            env["onEnterRoomEventHandler"] = _eventHandler
            send(d)
        end
    end

    env["onEnterRoomEventHandler"] = _eventHandler
    raiseEvent("TravelStarted")
    send("s")
end

function toEast()
    assertStartingRoom("东安门")
    local function _eventHandler(room_name, exits)
        local rid = GetRoomId(room_name, exits)
        if rid == "黄土大道-开封-泰山-蓬莱-se-w" then
            raiseEvent("TravelFinished")
        elseif room_name ~= "黄土大道" then
            debugc("Unexpected room. Abort.")
            env["onEnterRoomEventHandler"] = nil
            raiseEvent("TravelFinished")
        else
            env["onEnterRoomEventHandler"] = _eventHandler
            send("e")
        end
    end

    env["onEnterRoomEventHandler"] = _eventHandler
    raiseEvent("TravelStarted")
    send("e")
end

function toDongAnMen()
    assertStartingRoom("黄土大道-开封-泰山-蓬莱-se-w")
    local function _eventHandler(room_name, exits)
        if room_name == "东安门" then
            raiseEvent("TravelFinished")
        elseif room_name ~= "黄土大道" then
            debugc("Unexpected room. Abort.")
            env["onEnterRoomEventHandler"] = nil
            raiseEvent("TravelFinished")
        else
            env["onEnterRoomEventHandler"] = _eventHandler
            send("w")
        end
    end

    env["onEnterRoomEventHandler"] = _eventHandler
    raiseEvent("TravelStarted")
    send("w")
end

function toXiaoShanPo()
    assertStartingRoom("天水关")

    local function _eventHandler(room_name, exits)
        if room_name == "小山坡" then
            raiseEvent("TravelFinished")
        elseif room_name ~= "大道" then
            debugc("Unexpected room. Abort.")
            env["onEnterRoomEventHandler"] = nil
            raiseEvent("TravelFinished")
        else
            env["onEnterRoomEventHandler"] = _eventHandler

            for _, dir in ipairs(exits) do
                if dir == "west" or dir == "westup" then
                    send(dir)
                    break
                end
            end
        end
    end
    env["onEnterRoomEventHandler"] = _eventHandler
    raiseEvent("TravelStarted")
    send("w")
end

function toTianShuiGuan()
    assertStartingRoom("小山坡")

    local function _eventHandler(room_name, exits)
        if room_name == "天水关" then
            raiseEvent("TravelFinished")
        elseif room_name ~= "大道" then
            debugc("Unexpected room. Abort.")
            env["onEnterRoomEventHandler"] = nil
            raiseEvent("TravelFinished")
        else
            env["onEnterRoomEventHandler"] = _eventHandler

            for _, dir in ipairs(exits) do
                if dir == "east" then
                    send(dir)
                    break
                end
            end
        end
    end
    env["onEnterRoomEventHandler"] = _eventHandler
    raiseEvent("TravelStarted")
    send("ed")
end


function shangTianShan()
    assertStartingRoom("虎跳溪")
    
    local tid = tempTimer(1, function() send("jump over 小溪") end, true)
            
    tempTrigger("断魂崖 - ", function()
        killTimer(tid)    
        CheckFreeze(function()
            env["onEnterRoomEventHandler"] = function(room_name, exits)
                if room_name == "屏风壁" then
                    send("l 石壁")
                    CheckFreeze(function()
                        send("climb up")
                        CheckFreeze(function()
                            send("n")
                            CheckFreeze(function() 
                                send("l 云雾;;l 云雾;;l 黑影;;run to 主峰")
                                CheckFreeze(function()
                                    send("nu;;e;;nu;;e;;nu;;n;;n;;n;;n")                                    
                                end)
                            end)
                        end)
                    end)
                end      
            end
            send("climb down")
        end)
    end, 1)
end

function xiaTianShan()
  send("s;;w;;s;;s;;s;;s;;s;;s;;sd;;sd;;wu;;sd;;e;;se;;e;;e;;eu")
end</script>
						<eventHandlerList />
					</Script>
					<Script isActive="yes" isFolder="no">
						<name>area_connections</name>
						<packageName></packageName>
						<script>MapConnections = {

    ["中原"] = {
        ["东方"] = {
            room = "东安门",
            func = toEast
        },
        ["西方"] = {
            room = "天水关",
            func = toXiaoShanPo,
        },
        ["少林"] = {
            room = "登封县北街",
            func = df2sl
        }
    },
    ["东方"] = {
        ["中原"] = {
            room = "黄土大道-开封-泰山-蓬莱-se-w",
            func = toDongAnMen,
        },
    },
    ["西方"] = {
        ["中原"] = {
            room = "小山坡",
            func = toTianShuiGuan,
        },
        ["灵鹫宫"] = {
            room = "虎跳溪",
            func = shangTianShan,
        }
    },
    ["少林"] = {
        ["中原"] = {
            room = "少室山山脚",
            func = sl2df,
        },
    },
    ["灵鹫宫"] = {
        ["中原"] = {
            room = "小院-s-n-e-w",
            func = xiaTianShan,
        }
    }
}
</script>
						<eventHandlerList />
					</Script>
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>paths</name>
					<packageName></packageName>
					<script>function xyz2ly()
  send("e;;e;;e;;n;;w;;se;;ne;;se;;ne;;e;;e;;e;;e;;e;;eu;;n;;n;;n;;n;;w;;w;;w;;w;;w;;w;;w;;w;;w")
end

function xyz()
  send("wd;;w;;w;;nw;;ne;;nu;;nd;;nd;;nd;;nd;;w;;w;;w;;nw;;sw;;nw;;sw;;e;;e;;e;;s;;w;;w")
end

function cunmin()
  assert(env["房间"] == "小山坡", "初始地必须是小山坡")
  send("wd;;w;;w;;nw;;ne;;nu;;nd;;nd;;nd;;nd;;nd;;n")
end

function cunmin2ly()
  send("e;;e;;e;;e;;eu;;n;;n;;n;;n;;w;;w;;w;;w;;w;;w;;w;;w;;w")
end</script>
					<eventHandlerList />
				</Script>
			</ScriptGroup>
			<ScriptGroup isActive="yes" isFolder="yes">
				<name>travel</name>
				<packageName></packageName>
				<script></script>
				<eventHandlerList />
				<Script isActive="yes" isFolder="no">
					<name>travel</name>
					<packageName></packageName>
					<script>function To(to)
  local from = GetRoomId(env["房间"], env["出口"])
  
  local area_from = GetRoomArea(from)
  local area_to = GetRoomArea(to)
  AssertType(area_from, "To::area_from", "string")
  AssertType(area_to, "To::area_to", "string")
  
  local map_from = Maps[area_from]
  if area_from == area_to then    
    Travel(map_from, from, to)
    return
  end
  
  if area_from ~= "中原" and area_to ~= "中原" then
    InterAreaTravel(from, to)
  else    
    local conn = MapConnections[area_from][area_to]
    AssertType(conn, "To::conn", "table")
    
    env["onTravelFinishedEventHandler"] = function()
      env["onTravelFinishedEventHandler"] = function()
        local map_to = Maps[area_to]
        debugc(string.format("Leg 3: %s -&gt; %s", area_to, area_from))
        local conn2 = MapConnections[area_to][area_from]
        AssertType(conn2, "To::conn2", "table")        
        Travel(map_to, conn2.room, to)  
      end
      
      conn.func()
    end
    debugc(string.format("Leg 1: %s -&gt; %s", from, conn.room))
    debugc(string.format("Leg 2: %s -&gt; %s", area_from, area_to))
    Travel(map_from, from, conn.room)
  end 
end


function Travel(map, from, to)
    AssertType(map, "Travel::map", "table")
    AssertType(from, "Travel::from", "string")
    AssertType(to, "Travel::to", "string")
    debugc(string.format("from '%s' to '%s'", from, to))
    -- debugc(serialize(map))
    assert(map[from] ~= nil, string.format("Travel::from: Unrecognized room '%s'. Abort.", from))
    assert(map[to] ~= nil, string.format("Travel::to: Unrecognized room '%s'. Abort.", to))    
       
    -- local path, dist = findPath(from, to)
    local path, dist = dijkstra(map, from, to)
    -- debugc(string.format("path: %s, dist: %d", path, dist))
    if not path then
      Alert(string.format("Unrecognized room. Abort path finding."))     
      return
    end
    
    if path == "" then
      Info(string.format("Already in the room. Abort path finding."))
      raiseEvent("TravelFinished")
      
      return
    end
    
    AssertType(path, "path", "string")
    AssertType(dist, "dist", "number")
    
    raiseEvent("TravelStarted")
        
    -- local delay = 0.1
    -- if dist &gt; 40 then
      -- delay = 0.4
    -- elseif dist &gt; 20 then
      -- delay = 0.2
    -- end
    Speedwalk(path, 0.3)   
    env["OnEnterRoomDest"] = to
end


function GetCurrentRoomId()
  return GetRoomId(env["房间"], env["出口"])
end


function GetRoomId(room_name, exits)
  local id = GetAuxiliaryRoomId(room_name, exits)
  if not id then
    return room_name
  end
  return id
end


function GetRoomArea(room_name)
  local area = RoomAreas[room_name]
  if not area then
    return "中原"
  end
  return area
end


function dijkstra(adj, src, dest)
    assert(type(adj) == "table", "Invalid graph.")

    if src == dest then
        return "", 0
    end

    if not adj[src] or not adj[dest] then
        return nil, -1
    end

    if adj[src][dest] and type(adj[src][dest]) == "table" then
        return adj[src][dest][1], adj[src][dest][2]
    end

    local paths = { [src] = "" }
    local dist = {}
    local unvisited = {}

    local prev = {}

    for u, v in pairs(adj) do
        dist[u] = math.huge
        table.insert(unvisited, u)
    end
    dist[src] = 0

    local function nextNode(unvisited)
        local min_dist = math.huge
        local min_index = 0
        for i, node in ipairs(unvisited) do
            if dist[node] &lt; min_dist then
                min_dist = dist[node]
                min_index = i
            end
        end
        return min_index
    end

    local min_index = nextNode(unvisited)

    while min_index &gt; 0 do
        local u = unvisited[min_index]
        table.remove(unvisited, min_index)

        for v, path in pairs(adj[u]) do
            local p, w = path[1], path[2]
            local new_dist = dist[u] + w
            if new_dist &lt; dist[v] then
                dist[v] = new_dist
                paths[v] = paths[u] .. p
                -- prev[v] = u
            end
        end

        min_index = nextNode(unvisited)
    end

    if paths[dest] == nil then
        return nil, math.huge
    end
    adj[src][dest] = { paths[dest], dist[dest] }
    -- return paths[dest], dist[dest], prev
    return paths[dest], dist[dest]
end


function roundToOneDecimalPlace(number)
    return math.floor(number * 10 + 0.5) / 10
end</script>
					<eventHandlerList />
					<Script isActive="yes" isFolder="no">
						<name>dev</name>
						<packageName></packageName>
						<script>function InterAreaTravel(from, to)
  NotImplemented()
end</script>
						<eventHandlerList />
					</Script>
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>speedwalk</name>
					<packageName></packageName>
					<script>-- Implemented a custom speedwalk to support custom directions 
-- such as southup southdown etc

local isWalking = false

local function parseCommands(commandStr)
    debugc(string.format("Speekwalk::parseCommands: %s", commandStr))
    local commands = {}
    
    -- Pattern to match numbers followed by directions/commands
    for count, command in commandStr:gmatch("(%d+)([^%d]+)") do
        count = tonumber(count) -- Convert the count to a number
        for i = 1, count do
            debugc(string.format("count: %d, cmd: %s", count, command))
            table.insert(commands, command) -- Add the command repeated by count times
        end
    end
    
    return commands
end


function Speedwalk(commandStr, delay)
    local commands = parseCommands(commandStr)
    
    -- Function to send each command with a delay
    assert(not isWalking, "Speedwalk: cannot walk while speedwalk is already ongoing.")
    isWalking = true
    raiseEvent("sysSpeedwalkStarted")
    
    local function sendCommands(index)
        if index &lt;= #commands then
            send(commands[index]) -- Send the current command to the game
            registerNamedTimer("travel", "speedwalk", delay, function() sendCommands(index + 1) end, false)
        else
            StopSpeedwalk()
        end
    end
    
    -- Start sending commands from the first one
    sendCommands(1)
end
-- Function to execute the speedwalk commands with a customizable delay

function StopSpeedwalk()
  isWalking = false
  raiseEvent("sysSpeedwalkFinished")
  deleteNamedTimer("travel", "speedwalk")
end</script>
					<eventHandlerList />
				</Script>
			</ScriptGroup>
			<ScriptGroup isActive="yes" isFolder="yes">
				<name>mode</name>
				<packageName></packageName>
				<script></script>
				<eventHandlerList />
				<Script isActive="yes" isFolder="no">
					<name>resume_action</name>
					<packageName></packageName>
					<script>local env = env or {}
env["ResumeAction"] = {
  ["打工"] = StartWork,
  ["战斗"] = StartFight,
  ["学习"] = StartHotelStudy,
  ["包工头"] = StartForeman,
}


function ResumeAction()
  if env["mode"] == nil then
    return
  end
  Info(string.format("Current Mode: %s", env["mode"]))
  DisableAllModeTriggers()
  AssertType(env["mode"], 'env["mode"]', "string")
  AssertType(env["ResumeAction"][env["mode"]], 'env["ResumeAction"][env["mode"]]', "function")
  env["ResumeAction"][env["mode"]]()
end


function DisableAllModeTriggers()
  disableTrigger("打工")
  disableTrigger("学习")
  disableTrigger("战斗")
end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>战斗</name>
					<packageName></packageName>
					<script>function StartFight() 
  env["mode"] = "战斗"
  Fight["地点"] = env["房间"]
  Fight["isOn"] = true
  Fight["init_stats"] = nil
  registerNamedTimer("Fight", "update_vitals", 10, function() send("hp") end, true)
  
  DisableAllModeTriggers()
  enableTrigger("战斗")
  send("set mute 1;;set no_msg 1;;set no_give 1;;remove cloth")
  send("hp")
end


function StopFight()
  env["mode"] = nil
  disableTrigger("战斗")
  env["onTravelFinishedEventHandler"] = nil
  Fight["isOn"] = false
  deleteNamedTimer("Fight", "update_vitals")
end


local function calDelta()  
  local delta = {}
  local vitals = Char["vitals"]
  
  delta["lapse(sec)"] = vitals["last_update"] - Fight["init_stats"]["epoch"]
  delta["潜能"] = vitals["潜能"] - Fight["init_stats"]["潜能"]
  delta["经验"] = vitals["经验"] - Fight["init_stats"]["经验"]  
  delta["潜能/min"] = delta["潜能"] * 60 / delta["lapse(sec)"]
  delta["经验/min"] = delta["经验"] * 60 / delta["lapse(sec)"]
  return delta
end


function VitalsUpdatedEventHandler()
  if env["mode"] == "战斗" then
    local vitals = Char["vitals"]
    if not Fight["init_stats"] then
      Fight["init_stats"] = table.deepcopy(vitals)
      Fight["init_stats"]["epoch"] = getEpoch()
    end
    local json = serialize(calDelta())
    Info(json)
    AssertType(Fight["action"], 'VitalsUpdatedEventHandler::Fight["action"]', "function") 
    Fight["action"]()
  end
end


function FightAction(npcs)

    AssertType(npcs, 'Fight::npcs', "table")
    local vitals = Char["vitals"]
  
    announceNpc(npcs)
  
    if vitals["气血%"] &lt; 50 then
      send("surrender")
      send("surrender")
      send("surrender")
      send("surrender")
      Alert(string.format("危险: 气血最大值不足!!!: %d", vitals["气血%"]))
      Alert(string.format("危险: 气血最大值不足!!!: %d", vitals["气血%"]))
      Alert(string.format("危险: 气血最大值不足!!!: %d", vitals["气血%"]))
      return
    end  
    
    if vitals["气血%"] &lt; 90 then
      send("surrender")
      Warn(string.format("气血最大值不足: %d", vitals["气血%"]))
      return
    end
        
    expandAlias("dt")
    
    local p_hp = vitals["气血"] / vitals["气血_max"]
    
    if p_hp &lt; 0.2 then
      send("surrender")
    end
    
    if p_hp &lt; 0.7 then
      return
    end
    
    for npc_id, indices in pairs(npcs) do
      for _, index in ipairs(indices) do
        local cmd = string.format("fight %s %d", npc_id, index)
        send(cmd)
      end    
    end
end


function announceNpc(npcs)
    local sb = StringBuilder()
    for npc_id, indices in pairs(npcs) do
      sb.append(npc_id)
      sb.append(" ")
      sb.append(table.concat(indices, ",", 1, #indices) )
    end
    send(string.format("say %s", sb.toString()))
end
</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>学习</name>
					<packageName></packageName>
					<script>function StartHotelStudy()
  DisableAllModeTriggers()
  enableTrigger("学习")
  env["mode"] = "学习"
  Study["action"]()
end


function StopHotelStudy()
  disableTrigger("学习")
  env["mode"] = nil
  env["onTravelFinishedEventHandler"] = nil
end


function PayForHotel()
  local hotel_name = Study["hotel"]
  local hotel = Hotels[hotel_name]
  local bank = hotel["bank"]
  local npc = hotel["npc"]
  
  env["onTravelFinishedEventHandler"] = function() 
    send("load 1 silver")    
    env["onTravelFinishedEventHandler"] = function()
      send(string.format("give 1 silver to %s", npc))
      HotelGotoRoom(hotel_name)
    end
    To(hotel_name)
  end  
  To(bank)
end


function PrepaidHotel()
  local hotel = Study["hotel"]
  env["onTravelFinishedEventHandler"] = function()
    HotelGotoRoom(hotel)
  end
  To(hotel)
end


function Dazuo()
  local cmd = string.format("dazuo %d", getQx())
  send(cmd)
end


function Tuna()
  local vitals = Char["vitals"]
  local cmd = string.format("tuna %d", getJs())
  send(cmd)
end


function Dushu()
  
  -- local lit_level = Char["skills"]["literate"]["level"]
  -- local buddhism_level = Char["skills"]["buddhism"]["level"]
  -- local lit_times = Char["vitals"]["精神_max"]

  for i, book in ipairs(Study["book_list"]) do
      Du(book)
  end 
end


function Du(book)
  AssertType(book, "Dushu::book", "string")
  local vitals = Char["vitals"]
  local cmd = string.format("du %s %d", book, getJs())
  send(cmd)
end


function LearnFromMaster(callback)
  env["onTravelFinishedEventHandler"] = function()
    Study["master_func"]()
    send("hp")
    if type(callback) == "function" then
      callback()
    end
  end
  To(Study["master_room"])
end

function getQx()
  local vitals = Char["vitals"]
  if vitals["气血%"] &lt; 100 then
    return vitals["气血_max"] - 1
  end
  return vitals["气血_max"]
end

function getJs()
  local vitals = Char["vitals"]
  if vitals["精神%"] &lt; 100 then
    return vitals["精神_max"] - 1
  end
  return vitals["精神_max"]
end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>包工头</name>
					<packageName></packageName>
					<script>Foreman = Foreman or {}

local stops = {"粮店", "洛阳钱庄", "库房-金刀镖局-w", "富贵钱庄", "库房-n", "大理钱庄"}
local banks = {
  ["洛阳钱庄"] = true,
  ["富贵钱庄"] = true,
  ["大理钱庄"] = true,
}


function StartForeman()
  DisableAllModeTriggers()
  enableTrigger("包工头")
  env["mode"] = "包工头"
  Foreman["next_stop"] = 1
  registerNamedTimer("Foreman", "go_to_next_stop", 300, VisitNextStop, true)
  VisitNextStop()
end


function StopForeman()
  disableTrigger("包工头")
  env["mode"] = nil
  deleteNamedTrigger("Foreman", "go_to_next_stop")
end


function VisitNextStop()
  local i = Foreman["next_stop"]
  local stop = stops[i]
  
  if banks[stop] then    
    env["onTravelFinishedEventHandler"] = function()
      expandAlias("dep")
      if stop == "洛阳钱庄" then
        send("check")
      end      
    end
  end
  
  send("i")
  To(stop)
  
  if i + 1 &gt; #stops then
    Foreman["next_stop"] = 1
  else
    Foreman["next_stop"] = i + 1
  end
  assert(Foreman["next_stop"] &gt;= 1 and Foreman["next_stop"] &lt;= #stops, string.format("Invalid stop index: %d", Foreman["next_stop"]))
end</script>
					<eventHandlerList />
				</Script>
			</ScriptGroup>
			<Script isActive="yes" isFolder="no">
				<name>environment</name>
				<packageName></packageName>
				<script>env = env or {}
-- env["mode"] = env["mode"] or {}

Char = Char or {}

-- mudlet = mudlet or {}; mudlet.mapper_script = true
-- 
-- 
</script>
				<eventHandlerList />
			</Script>
			<ScriptGroup isActive="yes" isFolder="yes">
				<name>deprecate</name>
				<packageName></packageName>
				<script></script>
				<eventHandlerList />
				<Script isActive="yes" isFolder="no">
					<name>状态</name>
					<packageName></packageName>
					<script>function CanDrink()
  local vitals = Char["vitals"]
  return env["speedwalk"] ~= "started" and vitals and vitals["饮水"] and vitals["饮水"] &lt; vitals["饮水_max"]
end

function CanEat()
  local vitals = Char["vitals"]
  return env["speedwalk"] ~= "started" and vitals and vitals["食物"] and vitals["食物"] &lt; vitals["食物_max"]
end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="no" isFolder="no">
					<name>打工</name>
					<packageName></packageName>
					<script>function StartWork()
  local work = Work["工作地点"]
  
  AssertType(work, "work", "string")
  assert(Work[work] ~= nil, string.format("Unrecognized work: %s. Abort", work))
  
  env["mode"] = "打工"
  DisableAllModeTriggers()  
  enableTrigger("打工")
  
  env["onTravelFinishedEventHandler"] = function() 
    registerNamedTimer("打工", "干活", 10, function() send("work") end, true)
    send("work")
  end
  To(work)
end


function StopWork()
  env["mode"] = nil
  env["onTravelFinishedEventHandler"] = nil
  stopNamedTimer("打工", "干活")
  disableTrigger("打工") 
end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="no" isFolder="no">
					<name>room</name>
					<packageName></packageName>
					<script>function InitRooms()
  rooms = {}
  room_names = {}
end


function SaveRooms()
  saveTable(rooms, "rooms.lua")
  saveTable(room_names, "room_names.lua")
end


function LoadRooms()
  rooms = rooms or {}
  room_names = room_names or {}
  if not pcall(loadTable, rooms, "rooms.lua") 
    or not pcall(loadTable, room_names, "room_names.lua") then
    Info("Failed load room data.")
    InitRooms()
  end  
end

function CreateRoom(room_name)
  AssertType(room_name, "room_name", "string")
  if (room_names[room_name] ~= nil) then
    return room_names[room_name]
  end
  room_names = room_names or {}
  rooms = rooms or {}
  local room = {id=createRoomID(),name=room_name,area=1}
  rooms[room.id] = room
  room_names[room_name] = room.id
  addRoom(room.id)
  setRoomArea(room.id, room.area)
  setRoomName(room.id, room.name)
  debugc("Created room: ")
  local room_str = serialize(room)
  debugc(room_str)
  return room
end

function saveTable(table_to_save, file_name)
  
  if not table_to_save or not file_name then
    return
  end
  
  local file = getMudletHomeDir() .. "/" .. file_name
  table.save(file, table_to_save)
  Info(string.format("Table saved in: ''", file))
end


function loadTable(table_to_load, file_name)
  
  table_to_load = table_to_load or {}
  local file = getMudletHomeDir() .. "/" .. file_name  
  table.load(file, table_to_load)
end</script>
					<eventHandlerList />
				</Script>
			</ScriptGroup>
			<ScriptGroup isActive="yes" isFolder="yes">
				<name>game</name>
				<packageName></packageName>
				<script></script>
				<eventHandlerList />
				<Script isActive="yes" isFolder="no">
					<name>social</name>
					<packageName></packageName>
					<script>function GiveAll(character_id)
  local items = Char["items"]
  for i, x in ipairs(items["items"]) do
    local cmd = string.format("give %s %s", character_id, x)
    send(cmd)
  end
end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>shop</name>
					<packageName></packageName>
					<script>function SellAll()
  local items = Char["items"]
  
  if not items or not items["valuables"] then
    return
  end
  
  for id, q in pairs(items["valuables"]) do
    local cmd = string.format("sell %s", id)
    for i=0, q do
      send(cmd)
    end
  end
end</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>valuables</name>
					<packageName></packageName>
					<script>Valuables = {
  {
    ["name"] = "小还丹",
    ["game_id"] = "dan",
    ["room"] = "中药店",
    ["action"] = "get all from box",
  },{
    ["name"] = "甘露",
    ["game_id"] = "dew",
    ["room"] = "荷花塘",
    ["action"] = "get all from 芙蓉",
  },
}</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>works</name>
					<packageName></packageName>
					<script>Work = Work or {}

Work["库房"] = {
  bank="大理钱庄",
  hotel="天龙客栈",
}

Work["粮店"] = {
  bank="洛阳钱庄",
  hotel="古城客栈",
}

Work["金刀镖局-库房"] = {
  bank = "富贵钱庄",
  hotel = "龙门客栈",
}</script>
					<eventHandlerList />
				</Script>
				<Script isActive="yes" isFolder="no">
					<name>utils</name>
					<packageName></packageName>
					<script>function CheckFreeze(callback)
  local registered = registerNamedTimer("game", "CheckFreeze", 1, function() send("dazuo 1") end, true)
  if not registered then
    Warn("Conflicting CheckFreeze. Abort.")
    return
  end
  
  local function helper()
    local deleted = deleteNamedTimer("game", "CheckFreeze")
    debugc("1")
    if type(callback) == "function" then
      debugc("2")
      registerNamedTimer("game", "CheckFreeze", 1, callback, false)
    end
  end
  
  local t1 = tempTrigger("你最少要花 10 点「气」才能练功。", helper, 1)
  
  local t2 = tempTrigger("你必须先用 enable 选择你要用的内功心法。", helper, 1)
end
</script>
					<eventHandlerList />
				</Script>
			</ScriptGroup>
		</ScriptGroup>
		<Script isActive="yes" isFolder="no">
			<name>角色变量</name>
			<packageName></packageName>
			<script>Account = {
  ["id"] = getCharacterName(),
  ["pw"] = "",
}


Study = {
  ["hotel"] = "天龙客栈",
  ["book_list"] = {
    "book",
    "buddhism-book",
    "forcebook",
  },
  ["master_room"] = "清和宫",
  ["master_id"] = "gao",
  ["master_func"] = function()
    send("learn yiyang-force from gao with 1")
  end,
  ["action"] = function()
    Dazuo()
    Tuna()
    CheckFreeze(function() send("up") end)
    -- CheckFreeze(function()
      -- Dushu()
      -- CheckFreeze(PayForHotel)
    -- end)    
    -- CheckFreeze(function()
      -- LearnFromMaster(PayForHotel)
    -- end)
  end
}

local npcs = {
  ["boy"] = { 1, 2 },
}
Fight = {
  ["action"] = function() FightAction(npcs) end,
}


Work = {
  ["工作地点"] = "库房-金刀镖局-w",
}</script>
			<eventHandlerList />
		</Script>
		<ScriptGroup isActive="yes" isFolder="yes">
			<name>experimental</name>
			<packageName></packageName>
			<script></script>
			<eventHandlerList />
			<Script isActive="yes" isFolder="no">
				<name>traverse</name>
				<packageName></packageName>
				<script>function Traverse(map)

  local function helper()
    local next_room = next(map, env["房间"])
    if next_room then
      env["onTravelFinishedEventHandler"] = helper
      To(next_room)
    end
  end
  helper()
end


function StopTraverse()
  env["onTravelFinishedEventHandler"] = nil
  StopSpeedwalk()
end</script>
				<eventHandlerList />
			</Script>
		</ScriptGroup>
	</ScriptPackage>
	<KeyPackage>
		<KeyGroup isActive="yes" isFolder="yes">
			<name>tlbb</name>
			<packageName></packageName>
			<script></script>
			<command></command>
			<keyCode>33554431</keyCode>
			<keyModifier>0</keyModifier>
			<Key isActive="yes" isFolder="no">
				<name>north</name>
				<packageName></packageName>
				<script>env = env or {}
env["last_move"] = "n"</script>
				<command>n</command>
				<keyCode>16777235</keyCode>
				<keyModifier>536870912</keyModifier>
			</Key>
			<Key isActive="yes" isFolder="no">
				<name>south</name>
				<packageName></packageName>
				<script>env = env or {}
env["last_move"] = "s"</script>
				<command>s</command>
				<keyCode>16777237</keyCode>
				<keyModifier>536870912</keyModifier>
			</Key>
			<Key isActive="yes" isFolder="no">
				<name>west</name>
				<packageName></packageName>
				<script>env = env or {}
env["last_move"] = "w"</script>
				<command>w</command>
				<keyCode>16777234</keyCode>
				<keyModifier>536870912</keyModifier>
			</Key>
			<Key isActive="yes" isFolder="no">
				<name>east</name>
				<packageName></packageName>
				<script>env = env or {}
env["last_move"] = "e"</script>
				<command>e</command>
				<keyCode>16777236</keyCode>
				<keyModifier>536870912</keyModifier>
			</Key>
			<Key isActive="yes" isFolder="no">
				<name>northwest</name>
				<packageName></packageName>
				<script>env = env or {}
env["last_move"] = "nw"</script>
				<command>nw</command>
				<keyCode>16777232</keyCode>
				<keyModifier>536870912</keyModifier>
			</Key>
			<Key isActive="yes" isFolder="no">
				<name>northeast</name>
				<packageName></packageName>
				<script>env = env or {}
env["last_move"] = "ne"</script>
				<command>ne</command>
				<keyCode>16777238</keyCode>
				<keyModifier>536870912</keyModifier>
			</Key>
			<Key isActive="yes" isFolder="no">
				<name>southwest</name>
				<packageName></packageName>
				<script>env = env or {}
env["last_move"] = "sw"</script>
				<command>sw</command>
				<keyCode>16777233</keyCode>
				<keyModifier>536870912</keyModifier>
			</Key>
			<Key isActive="yes" isFolder="no">
				<name>southeast</name>
				<packageName></packageName>
				<script>env = env or {}
env["last_move"] = "se"</script>
				<command>se</command>
				<keyCode>16777239</keyCode>
				<keyModifier>536870912</keyModifier>
			</Key>
			<Key isActive="yes" isFolder="no">
				<name>up</name>
				<packageName></packageName>
				<script>env = env or {}
env["last_move"] = "u"</script>
				<command>up</command>
				<keyCode>43</keyCode>
				<keyModifier>536870912</keyModifier>
			</Key>
			<Key isActive="yes" isFolder="no">
				<name>down</name>
				<packageName></packageName>
				<script>env = env or {}
env["last_move"] = "down"</script>
				<command>down</command>
				<keyCode>16777221</keyCode>
				<keyModifier>536870912</keyModifier>
			</Key>
			<Key isActive="yes" isFolder="no">
				<name>look</name>
				<packageName></packageName>
				<script></script>
				<command>look</command>
				<keyCode>16777227</keyCode>
				<keyModifier>536870912</keyModifier>
			</Key>
		</KeyGroup>
	</KeyPackage>
	<VariablePackage>
		<HiddenVariables />
		<VariableGroup>
			<name>env</name>
			<keyType>4</keyType>
			<value></value>
			<valueType>5</valueType>
			<Variable>
				<name>房间</name>
				<keyType>4</keyType>
				<value>欢迎来到天龙八部</value>
				<valueType>4</valueType>
			</Variable>
			<VariableGroup>
				<name>mode</name>
				<keyType>4</keyType>
				<value></value>
				<valueType>5</valueType>
			</VariableGroup>
			<Variable>
				<name>last_move</name>
				<keyType>4</keyType>
				<value>e</value>
				<valueType>4</valueType>
			</Variable>
			<VariableGroup>
				<name>出口</name>
				<keyType>4</keyType>
				<value></value>
				<valueType>5</valueType>
				<Variable>
					<name>1</name>
					<keyType>3</keyType>
					<value>south</value>
					<valueType>4</valueType>
				</Variable>
			</VariableGroup>
		</VariableGroup>
		<VariableGroup>
			<name>Foreman</name>
			<keyType>4</keyType>
			<value></value>
			<valueType>5</valueType>
			<Variable>
				<name>next_stop</name>
				<keyType>4</keyType>
				<value>1</value>
				<valueType>3</valueType>
			</Variable>
		</VariableGroup>
	</VariablePackage>
</MudletPackage>
