package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
final class zzhxz implements Map.Entry {

    /* renamed from: c, reason: collision with root package name */
    public zzhxz f8877c;
    public zzhxz f;
    public zzhxz g;
    public zzhxz h;
    public zzhxz i;
    public final Object j;
    public Object k;
    public int l;

    public zzhxz() {
        this.j = null;
        this.i = this;
        this.h = this;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = this.j;
            if (obj2 != null ? obj2.equals(entry.getKey()) : entry.getKey() == null) {
                Object obj3 = this.k;
                if (obj3 == null) {
                    if (entry.getValue() == null) {
                        return true;
                    }
                } else if (obj3.equals(entry.getValue())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.j;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.k;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        int hashCode;
        int i = 0;
        Object obj = this.j;
        if (obj == null) {
            hashCode = 0;
        } else {
            hashCode = obj.hashCode();
        }
        Object obj2 = this.k;
        if (obj2 != null) {
            i = obj2.hashCode();
        }
        return i ^ hashCode;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj != null) {
            Object obj2 = this.k;
            this.k = obj;
            return obj2;
        }
        throw new NullPointerException("value == null");
    }

    public final String toString() {
        String valueOf = String.valueOf(this.j);
        String valueOf2 = String.valueOf(this.k);
        return android.support.v4.media.a.q(new StringBuilder(valueOf.length() + 1 + valueOf2.length()), valueOf, "=", valueOf2);
    }

    public zzhxz(zzhxz zzhxzVar, Object obj, zzhxz zzhxzVar2, zzhxz zzhxzVar3) {
        this.f8877c = zzhxzVar;
        this.j = obj;
        this.l = 1;
        this.h = zzhxzVar2;
        this.i = zzhxzVar3;
        zzhxzVar3.h = this;
        zzhxzVar2.i = this;
    }
}
