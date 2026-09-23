package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzijk extends zzijc {
    public static final /* synthetic */ int b = 0;

    static {
        zzijh.a(Collections.EMPTY_MAP);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzijb, com.google.android.gms.internal.ads.zzijj] */
    public static zzijj a(int i) {
        return new zzijb(i);
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Map zzb() {
        int i;
        Map map = this.f9002a;
        int size = map.size();
        if (size < 3) {
            i = size + 1;
        } else if (size < 1073741824) {
            i = (int) ((size / 0.75f) + 1.0f);
        } else {
            i = Integer.MAX_VALUE;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(i);
        for (Map.Entry entry : map.entrySet()) {
            linkedHashMap.put(entry.getKey(), ((zzijp) entry.getValue()).zzb());
        }
        return DesugarCollections.unmodifiableMap(linkedHashMap);
    }
}
