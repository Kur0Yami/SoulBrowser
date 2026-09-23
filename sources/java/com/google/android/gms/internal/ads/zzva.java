package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes.dex */
final /* synthetic */ class zzva implements zzvb {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzv f9310a;

    public /* synthetic */ zzva(zzv zzvVar) {
        this.f9310a = zzvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzvb
    public final int zza(Object obj) {
        zzuj zzujVar = (zzuj) obj;
        HashMap hashMap = zzvc.f9311a;
        String str = zzujVar.b;
        zzv zzvVar = this.f9310a;
        if ((!str.equals(zzvVar.m) && !str.equals(zzvc.d(zzvVar))) || !zzujVar.f(zzvVar, false) || !zzujVar.g(zzvVar)) {
            return 0;
        }
        return 1;
    }
}
