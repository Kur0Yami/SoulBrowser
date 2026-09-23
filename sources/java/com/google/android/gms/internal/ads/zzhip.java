package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzhip {
    public static final zzhip b = new zzhip(DesugarCollections.unmodifiableMap(new HashMap()));

    /* renamed from: a, reason: collision with root package name */
    public final Map f8578a;

    public /* synthetic */ zzhip(Map map) {
        this.f8578a = map;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzhip)) {
            return false;
        }
        return this.f8578a.equals(((zzhip) obj).f8578a);
    }

    public final int hashCode() {
        return this.f8578a.hashCode();
    }

    public final String toString() {
        return this.f8578a.toString();
    }
}
