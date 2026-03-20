@ECHO OFF
SET DXC="C:\Program Files\Epic Games\UE_5.1\Engine\Binaries\ThirdParty\ShaderConductor\Win64\dxc.exe"
IF NOT EXIST %DXC% (
	ECHO Couldn't find dxc.exe under "C:\Program Files\Epic Games\UE_5.1\Engine\Binaries\ThirdParty\ShaderConductor\Win64"
	GOTO :END
)
%DXC% -HV 2021 /auto-binding-space 0 /Zpr /O1 -Wno-parentheses-equality /T ps_6_6 /E ReflectionEnvironmentSkyLighting /Fc ReflectionEnvironmentPixelShader.d3dasm /Fo ReflectionEnvironmentPixelShader.dxil ReflectionEnvironmentPixelShader.usf
:END
PAUSE
