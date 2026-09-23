package com.google.android.gms.internal.ads;

import android.content.pm.PackageInfo;
import android.os.Bundle;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzexy implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final zzfik f7069a;
    public final PackageInfo b;

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.util.zzg f7070c;

    public zzexy(zzfik zzfikVar, PackageInfo packageInfo, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.f7069a = zzfikVar;
        this.b = packageInfo;
        this.f7070c = zzgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final void a(Object obj) {
        int i;
        zzfik zzfikVar = this.f7069a;
        ArrayList arrayList = zzfikVar.h;
        zzczm zzczmVar = (zzczm) obj;
        if (arrayList != null && !arrayList.isEmpty()) {
            Bundle bundle = zzczmVar.b;
            zzbjn zzbjnVar = zzfikVar.j;
            if (zzbjnVar != null && (i = zzbjnVar.m) != 0) {
                bundle.putBoolean("sccg_tap", zzbjnVar.n);
                bundle.putInt("sccg_dir", i);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:66:0x00f0, code lost:
    
        if (r0 == 3) goto L74;
     */
    @Override // com.google.android.gms.internal.ads.zzezv
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.Object r13) {
        /*
            Method dump skipped, instructions count: 372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzexy.zza(java.lang.Object):void");
    }
}
