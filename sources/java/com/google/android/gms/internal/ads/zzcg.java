package com.google.android.gms.internal.ads;

import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcg implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: c, reason: collision with root package name */
    public final Handler f5122c;
    public final AudioManager.OnAudioFocusChangeListener f;

    public zzcg(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
        this.f = onAudioFocusChangeListener;
        Looper looper = handler.getLooper();
        String str = zzfj.f7405a;
        this.f5122c = new Handler(looper, null);
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(final int i) {
        Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.ads.zzcf
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzcg.this.f.onAudioFocusChange(i);
            }
        };
        String str = zzfj.f7405a;
        Handler handler = this.f5122c;
        Looper looper = handler.getLooper();
        if (!looper.getThread().isAlive()) {
            return;
        }
        if (looper == Looper.myLooper()) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
    }
}
