--custom opponent note skin <3 V2.2
--credit to vCherry.kAI.16 <3 if you remove this text then you're not allowed to use this

  --Handy little guide!
-- "Strums_Texture" must exactly match the .png and .xml file you want to use for *THE OPPONENT'S* strums(located in images)
-- "Notes_Texture" must exactly match the .png and .xml file you want to use for *THE OPPONENT'S* notes(located in images)
-- Please put the texture names within the empty apostrophes(aka the '')!
-- If you want to add a custom note type to the list, go to Line 16 and add " or '(note_type)'" after 'GF Sing'

  --REPLACE THESE!!!
  local Strums_Texture = 'polynote'
  local Notes_Texture = 'polynote'
  
  function onUpdatePost()
	for i = 0, getProperty('opponentStrums.length')-1 do
  
	  setPropertyFromGroup('opponentStrums', i, 'texture', Strums_Texture);
  
	  if not getPropertyFromGroup('notes', i, 'mustPress') and getPropertyFromGroup('notes', i, 'noteType') == ('' or 'Hey!' or 'No Animation' or 'GF Sing') then
		setPropertyFromGroup('notes', i, 'texture', Notes_Texture);
	  end
  
	end
  end
  