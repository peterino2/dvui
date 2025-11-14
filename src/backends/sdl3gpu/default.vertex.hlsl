#include "shared.hlsl"

struct Input
{
    float4 position : TEXCOORD0;
    float4 color : TEXCOORD1;
    float2 texcoord : TEXCOORD2;
    uint Instance : SV_InstanceID;
};

PSInput main(Input i)
{
    PSInput result;

    result.position = i.position;
    result.color = i.color;
    result.texcoord = i.texcoord;

    return result;
}
