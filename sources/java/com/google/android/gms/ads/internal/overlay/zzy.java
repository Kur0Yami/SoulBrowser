package com.google.android.gms.ads.internal.overlay;

import com.google.android.gms.internal.ads.zzcir;
import java.util.HashMap;

/* loaded from: classes.dex */
final /* synthetic */ class zzy implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzz f3068c;
    public final /* synthetic */ String f;
    public final /* synthetic */ HashMap g;

    public /* synthetic */ zzy(zzz zzzVar, String str, HashMap hashMap) {
        this.f3068c = zzzVar;
        this.f = str;
        this.g = hashMap;
    }

    @Override // java.lang.Runnable
    public final /* synthetic */ void run() {
        zzcir zzcirVar = this.f3068c.f3070c;
        if (zzcirVar != null) {
            zzcirVar.S(this.f, this.g);
        }
    }
}
