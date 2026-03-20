@ECHO OFF
SET DXC="C:\Program Files\Epic Games\UE_5.1\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "C:\Program Files\Epic Games\UE_5.1\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% /auto-binding-space 0 /exports MaterialCHS /Zpr /O3 /enable-16bit-types -Wno-parentheses-equality /T lib_6_6 /Fc RayTracingMaterialHitShaders.d3dasm /Fo RayTracingMaterialHitShaders.dxil RayTracingMaterialHitShaders.usf
:END
PAUSE
