package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Map;

/* loaded from: classes.dex */
public class zzgtl<K, V> extends zzgrx<K, V> implements Serializable {
    public final transient zzgtg h;
    public final transient int i;

    public zzgtl(zzgtg zzgtgVar, int i) {
        this.h = zzgtgVar;
        this.i = i;
    }

    @Override // com.google.android.gms.internal.ads.zzgrw
    public final Map a() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.android.gms.internal.ads.zzgrw
    public final boolean b(Object obj) {
        if (obj != null && super.b(obj)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgrw, com.google.android.gms.internal.ads.zzgul
    public /* synthetic */ Map zzu() {
        return this.h;
    }
}
