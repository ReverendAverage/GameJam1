@ECHO OFF
SET DXC="C:\Program Files\Epic Games\UE_5.1\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "C:\Program Files\Epic Games\UE_5.1\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -HV 2021 /auto-binding-space 1 /exports LumenRadiosityHardwareRayTracingRGS /Zpr /O3 /enable-16bit-types -Wno-parentheses-equality /T lib_6_6 /Fc LumenRadiosityHardwareRayTracing.d3dasm /Fo LumenRadiosityHardwareRayTracing.dxil LumenRadiosityHardwareRayTracing.usf
:END
PAUSE
