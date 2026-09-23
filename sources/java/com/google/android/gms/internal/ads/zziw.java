package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
final /* synthetic */ class zziw implements zzgqs {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f9029c;

    public /* synthetic */ zziw(Context context) {
        this.f9029c = context;
    }

    @Override // com.google.android.gms.internal.ads.zzgqs
    public final Object zza() {
        new zzaek();
        zzhg zzhgVar = new zzhg(this.f9029c);
        Object obj = new Object();
        zzvs zzvsVar = new zzvs();
        if (zzhgVar != zzvsVar.f9329c) {
            zzvsVar.f9329c = zzhgVar;
            zzvsVar.f9328a.clear();
            zzvsVar.b.clear();
        }
        return obj;
    }
}
