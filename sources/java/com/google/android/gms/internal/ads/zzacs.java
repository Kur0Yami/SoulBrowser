package com.google.android.gms.internal.ads;

import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.view.Choreographer;
import android.view.Choreographer$VsyncCallback;
import androidx.annotation.RequiresApi;

/* JADX INFO: Access modifiers changed from: package-private */
@RequiresApi
/* loaded from: classes.dex */
public final class zzacs extends zzacp implements Choreographer$VsyncCallback {
    public final Handler e;

    public /* synthetic */ zzacs(Choreographer choreographer, DisplayManager displayManager) {
        super(choreographer, displayManager);
        this.e = zzfj.n();
    }

    @Override // com.google.android.gms.internal.ads.zzacp
    public final void a() {
        super.a();
        this.f3905a.postVsyncCallback(this);
    }

    @Override // com.google.android.gms.internal.ads.zzacp
    public final void b() {
        this.b.unregisterDisplayListener(this);
        this.e.removeCallbacksAndMessages(null);
        this.f3905a.removeVsyncCallback(this);
        this.f3906c = -9223372036854775807L;
        this.d = -9223372036854775807L;
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i) {
        if (i == 0) {
            this.f3905a.postVsyncCallback(this);
        }
    }

    public final void onVsync(Choreographer.FrameData frameData) {
        this.f3906c = frameData.getFrameTimeNanos();
        Choreographer.FrameTimeline[] frameTimelines = frameData.getFrameTimelines();
        long j = -9223372036854775807L;
        if (frameTimelines.length >= 2) {
            long expectedPresentationTimeNanos = frameTimelines[1].getExpectedPresentationTimeNanos() - frameTimelines[0].getExpectedPresentationTimeNanos();
            if (expectedPresentationTimeNanos != 0) {
                j = expectedPresentationTimeNanos;
            }
            this.d = j;
        } else {
            this.d = -9223372036854775807L;
        }
        this.e.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzacr
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzacs zzacsVar = zzacs.this;
                zzacsVar.f3905a.postVsyncCallback(zzacsVar);
            }
        }, 500L);
    }
}
