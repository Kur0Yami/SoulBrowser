package com.google.android.gms.internal.ads;

import java.util.Comparator;
import java.util.HashMap;

/* loaded from: classes.dex */
final /* synthetic */ class zzuz implements Comparator {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzvb f9307c;

    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        HashMap hashMap = zzvc.f9311a;
        zzvb zzvbVar = this.f9307c;
        return zzvbVar.zza(obj2) - zzvbVar.zza(obj);
    }
}
