package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class zzaed {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f3947a = new LinkedHashMap();

    public final void a(zzaec zzaecVar) {
        long[] jArr = zzaecVar.e;
        if (jArr.length > 0) {
            Long valueOf = Long.valueOf(jArr[0]);
            LinkedHashMap linkedHashMap = this.f3947a;
            if (!linkedHashMap.containsKey(valueOf)) {
                linkedHashMap.put(Long.valueOf(jArr[0]), zzaecVar);
            }
        }
    }
}
