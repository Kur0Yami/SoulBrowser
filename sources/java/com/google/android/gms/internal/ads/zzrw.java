package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.media.AudioTrack$StreamEventCallback;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzrw extends AudioTrack$StreamEventCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzry f9229a;

    public zzrw(zzry zzryVar) {
        this.f9229a = zzryVar;
    }

    public final void onDataRequest(AudioTrack audioTrack, int i) {
        zzed zzedVar = this.f9229a.f9232c.h;
        zzedVar.c(-1, zzrv.f9228a);
        zzedVar.d();
    }

    public final void onPresentationEnded(AudioTrack audioTrack) {
        zzed zzedVar = this.f9229a.f9232c.h;
        zzedVar.c(-1, zzrt.f9226a);
        zzedVar.d();
    }

    public final void onTearDown(AudioTrack audioTrack) {
        zzed zzedVar = this.f9229a.f9232c.h;
        zzedVar.c(-1, zzru.f9227a);
        zzedVar.d();
    }
}
