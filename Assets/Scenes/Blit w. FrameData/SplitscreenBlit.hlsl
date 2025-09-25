#ifndef SPLITSCREEN_BLIT
#define SPLITSCREEN_BLIT

void SplitscreenBlit_float(float2 uv, float4 source, float4 tinted, out float4 outSsB)
{
#ifdef SHADERGRAPH_PREVIEW
    float4 color = float4(1,1,1,1);
#else
	// Read previous subpass result directly from the framebuffer.
    float4 color = (uv.x>0.5) ? tinted : source;
#endif

    outSsB = color;
}

#endif