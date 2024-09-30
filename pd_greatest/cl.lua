RegisterNetEvent('GreatestHuuleen_Client')
AddEventHandler('GreatestHuuleen_Client', function()
    if lib.progressCircle({
        duration = 2300,
        position = 'bottom',
        label = 'Laitetaan Greatest huuleen...',
        useWhileDead = false,
        canCancel = false,
        disable = {
            car = true,
            move = true,
            sprint = true,
        },
        anim = {
            dict = 'mp_suicide',
            clip = 'pill_fp'
        },
    }) then VITTUKUSATII() end
end)

function VITTUKUSATII()
    SetPedToRagdoll(GetPlayerPed(-1), 8000, 8000, 0, 0, 0, 0)
	lib.notify({title = 'Greatest', description = 'Greatest vei sinulta tajun!', showDuration = true, type = 'info'})
    SetTimecycleModifier("REDMIST_blend")
    ShakeGameplayCam("FAMILY5_DRUG_TRIP_SHAKE", 1.0)
    Wait(5000)
	SetTimecycleModifier("hud_def_desat_Trevor")
	Wait(2500)
    SetTimecycleModifier("")
	SetTransitionTimecycleModifier("")
	StopGameplayCamShaking()
end