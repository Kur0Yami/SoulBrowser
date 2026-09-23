package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Set;

/* loaded from: classes.dex */
public class zzctj {

    /* renamed from: a, reason: collision with root package name */
    public final zzcvi f5454a;
    public final View b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfhs f5455c;
    public final zzcir d;

    public zzctj(View view, zzcir zzcirVar, zzcvi zzcviVar, zzfhs zzfhsVar) {
        this.b = view;
        this.d = zzcirVar;
        this.f5454a = zzcviVar;
        this.f5455c = zzfhsVar;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzdgi, com.google.android.gms.internal.ads.zzdbw] */
    public zzdbw a(Set set) {
        return new zzdgi(set);
    }
}
