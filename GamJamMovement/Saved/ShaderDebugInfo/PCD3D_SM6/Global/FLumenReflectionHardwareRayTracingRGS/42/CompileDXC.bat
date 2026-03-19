@ECHO OFF
SET DXC="C:\Program Files\Epic Games\UE_5.1\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "C:\Program Files\Epic Games\UE_5.1\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -HV 2021 /auto-binding-space 1 /exports LumenReflectionHardwareRayTracingRGS /Zpr /O3 /enable-16bit-types -Wno-parentheses-equality /T lib_6_6 /Fc LumenReflectionHardwareRayTracing.d3dasm /Fo LumenReflectionHardwareRayTracing.dxil LumenReflectionHardwareRayTracing.usf
:END
PAUSE
