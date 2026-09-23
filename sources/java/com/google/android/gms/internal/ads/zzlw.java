package com.google.android.gms.internal.ads;

import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzlw implements zzlo {

    /* renamed from: a, reason: collision with root package name */
    public final zzwb f9104a;
    public int d;
    public boolean e;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f9105c = new ArrayList();
    public final Object b = new Object();

    public zzlw(zzwi zzwiVar, boolean z) {
        this.f9104a = new zzwb(zzwiVar, z);
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public final Object zza() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.ads.zzlo
    public final zzbf zzb() {
        return this.f9104a.o;
    }
}
