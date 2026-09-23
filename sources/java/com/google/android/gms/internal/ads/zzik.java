package com.google.android.gms.internal.ads;

import java.util.Locale;

/* loaded from: classes.dex */
public final class zzik {

    /* renamed from: a, reason: collision with root package name */
    public int f9013a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f9014c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public long k;
    public int l;

    public final synchronized void a() {
    }

    public final String toString() {
        int i = this.f9013a;
        int i2 = this.b;
        int i3 = this.f9014c;
        int i4 = this.d;
        int i5 = this.e;
        int i6 = this.f;
        int i7 = this.g;
        int i8 = this.h;
        int i9 = this.i;
        int i10 = this.j;
        long j = this.k;
        int i11 = this.l;
        String str = zzfj.f7405a;
        Locale locale = Locale.US;
        StringBuilder u = android.support.v4.media.a.u("DecoderCounters {\n decoderInits=", i, i2, ",\n decoderReleases=", "\n queuedInputBuffers=");
        u.append(i3);
        u.append("\n skippedInputBuffers=");
        u.append(i4);
        u.append("\n renderedOutputBuffers=");
        u.append(i5);
        u.append("\n skippedOutputBuffers=");
        u.append(i6);
        u.append("\n droppedBuffers=");
        u.append(i7);
        u.append("\n droppedInputBuffers=");
        u.append(i8);
        u.append("\n maxConsecutiveDroppedBuffers=");
        u.append(i9);
        u.append("\n droppedToKeyframeEvents=");
        u.append(i10);
        u.append("\n totalVideoFrameProcessingOffsetUs=");
        u.append(j);
        u.append("\n videoFrameProcessingOffsetCount=");
        u.append(i11);
        u.append("\n}");
        return u.toString();
    }
}
