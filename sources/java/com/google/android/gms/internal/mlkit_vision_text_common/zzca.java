package com.google.android.gms.internal.mlkit_vision_text_common;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Set;

/* loaded from: classes3.dex */
abstract class zzca extends AbstractMap {

    /* renamed from: c, reason: collision with root package name */
    public transient Set f11142c;
    public transient Set f;
    public transient Collection g;

    public abstract Set a();

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        Set set = this.f11142c;
        if (set == null) {
            Set a2 = a();
            this.f11142c = a2;
            return a2;
        }
        return set;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set keySet() {
        Set set = this.f;
        if (set == null) {
            zzby zzbyVar = new zzby(this);
            this.f = zzbyVar;
            return zzbyVar;
        }
        return set;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        Collection collection = this.g;
        if (collection == null) {
            zzbz zzbzVar = new zzbz(this);
            this.g = zzbzVar;
            return zzbzVar;
        }
        return collection;
    }
}
