package com.google.android.gms.internal.ads;

import android.media.AudioManager;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfsa implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfsb f7612c;

    public zzfsa(zzfsb zzfsbVar) {
        this.f7612c = zzfsbVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfsb zzfsbVar = this.f7612c;
        AtomicBoolean atomicBoolean = zzfsbVar.e;
        AudioManager audioManager = zzfsbVar.f7614c;
        int streamVolume = audioManager.getStreamVolume(3);
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        float f = 0.0f;
        if (streamMaxVolume > 0 && streamVolume > 0) {
            f = streamVolume / streamMaxVolume;
            if (f > 1.0f) {
                f = 1.0f;
            }
        }
        atomicBoolean.set(false);
        if (((Float) zzfsbVar.d.getAndSet(Float.valueOf(f))).floatValue() != f) {
            zzfsbVar.f7613a.post(new zzfrz(this, f));
        }
    }
}
