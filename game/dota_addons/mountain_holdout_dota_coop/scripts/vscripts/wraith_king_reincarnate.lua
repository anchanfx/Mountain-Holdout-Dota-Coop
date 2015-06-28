--[[-------------------------------------------------------------------------
	Wraith King Reincarnate bookkeeping
-----------------------------------------------------------------------------]]
function WraithKingReincarnateBegin( keys )
	CHoldoutGameRound.nExecutingRespawns = CHoldoutGameRound.nExecutingRespawns + 1
end

function WraithKingReincarnateEnd( keys )
	CHoldoutGameRound.nExecutingRespawns = CHoldoutGameRound.nExecutingRespawns - 1

	CHoldoutGameRound.nExecutedRespawns = CHoldoutGameRound.nExecutedRespawns + 1
	CHoldoutGameRound.bQuestTextDirty = true

	keys.caster:AddNoDraw()
	keys.target_entities[1]:SetForwardVector( keys.caster:GetForwardVector() )
end