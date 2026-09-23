package com.google.android.gms.internal.ads;

import android.view.Choreographer;

/* loaded from: classes.dex */
final class zzacq extends zzacp implements Choreographer.FrameCallback {
    @Override // com.google.android.gms.internal.ads.zzacp
    public final void a() {
        long j;
        super.a();
        this.f3905a.postFrameCallback(this);
        if (this.b.getDisplay(0) != null) {
            j = (long) (1.0E9d / r0.getRefreshRate());
        } else {
            zzee.c("VideoFrameReleaseHelper", "Unable to query display refresh rate");
            j = -9223372036854775807L;
        }
        this.d = j;
    }

    @Override // com.google.android.gms.internal.ads.zzacp
    public final void b() {
        this.b.unregisterDisplayListener(this);
        this.f3905a.removeFrameCallback(this);
        this.f3906c = -9223372036854775807L;
        this.d = -9223372036854775807L;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        this.f3906c = j;
        this.f3905a.postFrameCallbackDelayed(this, 500L);
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i) {
        long j;
        if (i == 0) {
            this.f3905a.postFrameCallback(this);
            if (this.b.getDisplay(0) != null) {
                j = (long) (1.0E9d / r5.getRefreshRate());
            } else {
                zzee.c("VideoFrameReleaseHelper", "Unable to query display refresh rate");
                j = -9223372036854775807L;
            }
            this.d = j;
        }
    }
}
