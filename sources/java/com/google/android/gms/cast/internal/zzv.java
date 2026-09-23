package com.google.android.gms.cast.internal;

import com.google.android.gms.cast.Cast;

/* loaded from: classes.dex */
final class zzv implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzx f3633c;
    public final /* synthetic */ String f;
    public final /* synthetic */ String g;

    public zzv(zzw zzwVar, zzx zzxVar, String str, String str2) {
        this.f3633c = zzxVar;
        this.f = str;
        this.g = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Cast.MessageReceivedCallback messageReceivedCallback;
        zzx zzxVar = this.f3633c;
        synchronized (zzxVar.h) {
            messageReceivedCallback = (Cast.MessageReceivedCallback) zzxVar.h.get(this.f);
        }
        if (messageReceivedCallback != null) {
            messageReceivedCallback.a(this.g);
        } else {
            zzx.B.b("Discarded message for unknown namespace '%s'", this.f);
        }
    }
}
