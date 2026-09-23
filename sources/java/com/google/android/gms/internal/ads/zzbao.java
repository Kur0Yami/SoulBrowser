package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbao extends zzbbh {
    public final Map h;
    public final View i;
    public final Context j;

    public zzbao(zzazt zzaztVar, zzavs zzavsVar, int i, HashMap hashMap, View view, Context context) {
        super(zzaztVar, "ykIQv59ak7YBU+e791IU15tGonhZPUUBXST76bDGm7zXSjUSNn9qtHdf61t20THy", "l48tDWlMY/G/BSkitRUvd80RiFbNrk8nR5qlkOsZWs8=", zzavsVar, i, 85);
        this.h = hashMap;
        this.i = view;
        this.j = context;
    }

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        long j;
        Map map = this.h;
        long j2 = Long.MIN_VALUE;
        if (map.containsKey(1)) {
            j = ((Long) map.get(1)).longValue();
        } else {
            j = Long.MIN_VALUE;
        }
        Map map2 = this.h;
        if (map2.containsKey(2)) {
            j2 = ((Long) map2.get(2)).longValue();
        }
        long[] jArr = {j, j2};
        Context context = this.j;
        if (context == null) {
            context = this.f4531a.f4510a;
        }
        long[] jArr2 = (long[]) this.e.invoke(null, jArr, context, this.i);
        long j3 = jArr2[0];
        Map map3 = this.h;
        map3.put(1, Long.valueOf(jArr2[1]));
        long j4 = jArr2[2];
        map3.put(2, Long.valueOf(jArr2[3]));
        zzavs zzavsVar = this.d;
        synchronized (zzavsVar) {
            zzavsVar.k();
            ((zzawp) zzavsVar.f).m0(j3);
            zzavsVar.k();
            ((zzawp) zzavsVar.f).n0(j4);
        }
    }
}
