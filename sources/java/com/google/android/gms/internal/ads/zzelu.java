package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzelu implements zzejm {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6653a;
    public final zzdlv b;

    /* renamed from: c, reason: collision with root package name */
    public final Executor f6654c;

    public zzelu(Context context, zzdlv zzdlvVar, Executor executor) {
        this.f6653a = context;
        this.b = zzdlvVar;
        this.f6654c = executor;
    }

    public static final boolean c(zzfic zzficVar, int i) {
        return zzficVar.f7383a.f7378a.h.contains(Integer.toString(i));
    }

    @Override // com.google.android.gms.internal.ads.zzejm
    public final void a(zzfic zzficVar, zzfhr zzfhrVar, zzejj zzejjVar) {
        zzfji zzfjiVar = (zzfji) zzejjVar.b;
        zzfik zzfikVar = zzficVar.f7383a.f7378a;
        String jSONObject = zzfhrVar.v.toString();
        String zzm = com.google.android.gms.ads.internal.util.zzbp.zzm(zzfhrVar.s);
        Context context = this.f6653a;
        zzbtf zzbtfVar = (zzbtf) zzejjVar.f6560c;
        zzbjn zzbjnVar = zzfikVar.j;
        ArrayList arrayList = zzfikVar.h;
        try {
            zzfjiVar.f7412a.C1(new ObjectWrapper(context), zzfikVar.d, jSONObject, zzm, zzbtfVar, zzbjnVar, arrayList);
        } catch (Throwable th) {
            throw new Exception(th);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0528  */
    @Override // com.google.android.gms.internal.ads.zzejm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(com.google.android.gms.internal.ads.zzfic r48, com.google.android.gms.internal.ads.zzfhr r49, com.google.android.gms.internal.ads.zzejj r50) {
        /*
            Method dump skipped, instructions count: 1458
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzelu.b(com.google.android.gms.internal.ads.zzfic, com.google.android.gms.internal.ads.zzfhr, com.google.android.gms.internal.ads.zzejj):java.lang.Object");
    }
}
