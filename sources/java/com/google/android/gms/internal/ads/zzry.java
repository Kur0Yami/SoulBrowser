package com.google.android.gms.internal.ads;

import android.media.AudioTrack$StreamEventCallback;
import android.os.Handler;
import androidx.annotation.RequiresApi;
import java.util.concurrent.Executor;

@RequiresApi
/* loaded from: classes.dex */
final class zzry {

    /* renamed from: a, reason: collision with root package name */
    public final Handler f9231a;
    public final AudioTrack$StreamEventCallback b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzrz f9232c;

    public /* synthetic */ zzry(zzrz zzrzVar) {
        this.f9232c = zzrzVar;
        final Handler n = zzfj.n();
        this.f9231a = n;
        zzrw zzrwVar = new zzrw(this);
        this.b = zzrwVar;
        zzrzVar.f9233a.registerStreamEventCallback(new Executor() { // from class: com.google.android.gms.internal.ads.zzrx
            @Override // java.util.concurrent.Executor
            public final /* synthetic */ void execute(Runnable runnable) {
                n.post(runnable);
            }
        }, zzrwVar);
    }

    public final /* synthetic */ void a() {
        this.f9232c.f9233a.unregisterStreamEventCallback(this.b);
        this.f9231a.removeCallbacksAndMessages(null);
    }
}
