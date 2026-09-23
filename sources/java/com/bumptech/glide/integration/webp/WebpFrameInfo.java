package com.bumptech.glide.integration.webp;

/* loaded from: classes.dex */
public class WebpFrameInfo {

    /* renamed from: a, reason: collision with root package name */
    public final int f2115a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2116c;
    public final int d;
    public final int e;
    public final int f;
    public final boolean g;
    public final boolean h;

    public WebpFrameInfo(int i, WebpFrame webpFrame) {
        this.f2115a = i;
        this.b = webpFrame.getXOffest();
        this.f2116c = webpFrame.getYOffest();
        this.d = webpFrame.getWidth();
        this.e = webpFrame.getHeight();
        this.f = webpFrame.getDurationMs();
        this.g = webpFrame.isBlendWithPreviousFrame();
        this.h = webpFrame.shouldDisposeToBackgroundColor();
    }

    public final String toString() {
        return "frameNumber=" + this.f2115a + ", xOffset=" + this.b + ", yOffset=" + this.f2116c + ", width=" + this.d + ", height=" + this.e + ", duration=" + this.f + ", blendPreviousFrame=" + this.g + ", disposeBackgroundColor=" + this.h;
    }
}
