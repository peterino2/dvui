#include "shared.hlsl"


struct PixelOutput {
    float4 Color : SV_Target0;
};

Texture2D<float4> Texture0 : register(t0, space2);
SamplerState Sampler0 : register(s0, space2);

PixelOutput main(PSInput input)
{
    if(input.texcoord.x < 0 || input.texcoord.x > 1 || input.texcoord.y < 0 || input.texcoord.y > 1) return input.color;
    float4 sampled = Texture0.Sample(Sampler0, input.texcoord);
    return sampled * input.color;
}
