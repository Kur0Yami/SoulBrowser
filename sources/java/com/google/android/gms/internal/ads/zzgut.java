package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.Set;
import java.util.SortedMap;

/* loaded from: classes.dex */
final class zzgut extends zzgrc {
    public final transient zzgqs j;

    public zzgut(Map map, zzgqs zzgqsVar) {
        super(map);
        this.j = zzgqsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgrt, com.google.android.gms.internal.ads.zzgrw
    public final Map a() {
        Map map = this.h;
        if (map instanceof NavigableMap) {
            return new zzgrk(this, (NavigableMap) map);
        }
        if (map instanceof SortedMap) {
            return new zzgrn(this, (SortedMap) map);
        }
        return new zzgrg(this, map);
    }

    @Override // com.google.android.gms.internal.ads.zzgrc, com.google.android.gms.internal.ads.zzgrt
    public final /* bridge */ /* synthetic */ Collection e() {
        return (List) ((zzguo) this.j).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzgrt
    public final Set g() {
        Map map = this.h;
        if (map instanceof NavigableMap) {
            return new zzgrl(this, (NavigableMap) map);
        }
        if (map instanceof SortedMap) {
            return new zzgro(this, (SortedMap) map);
        }
        return new zzgrj(this, map);
    }
}
