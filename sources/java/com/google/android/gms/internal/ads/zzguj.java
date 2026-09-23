package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.Collection;
import java.util.Set;

/* loaded from: classes.dex */
abstract class zzguj extends AbstractMap {

    /* renamed from: c, reason: collision with root package name */
    public transient Set f8260c;
    public transient Set f;
    public transient Collection g;

    public abstract Set a();

    public Set b() {
        return new zzguh(this);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        Set set = this.f8260c;
        if (set == null) {
            Set a2 = a();
            this.f8260c = a2;
            return a2;
        }
        return set;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set keySet() {
        Set set = this.f;
        if (set == null) {
            Set b = b();
            this.f = b;
            return b;
        }
        return set;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        Collection collection = this.g;
        if (collection == null) {
            zzgui zzguiVar = new zzgui(this);
            this.g = zzguiVar;
            return zzguiVar;
        }
        return collection;
    }
}
