package com.google.android.gms.internal.cast;

import java.util.Map;

/* loaded from: classes.dex */
final class zzzw implements Map.Entry, Comparable {

    /* renamed from: c, reason: collision with root package name */
    public final Comparable f9904c;
    public Object f;
    public final /* synthetic */ zzzz g;

    public zzzw(zzzz zzzzVar, Comparable comparable, Object obj) {
        this.g = zzzzVar;
        this.f9904c = comparable;
        this.f = obj;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.f9904c.compareTo(((zzzw) obj).f9904c);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        boolean equals;
        boolean equals2;
        if (obj != this) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Comparable comparable = this.f9904c;
                if (comparable == null) {
                    if (key != null) {
                        equals = false;
                    } else {
                        equals = true;
                    }
                } else {
                    equals = comparable.equals(key);
                }
                if (equals) {
                    Object obj2 = this.f;
                    Object value = entry.getValue();
                    if (obj2 == null) {
                        if (value != null) {
                            equals2 = false;
                        } else {
                            equals2 = true;
                        }
                    } else {
                        equals2 = obj2.equals(value);
                    }
                    if (equals2) {
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f9904c;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        int hashCode;
        int i = 0;
        Comparable comparable = this.f9904c;
        if (comparable == null) {
            hashCode = 0;
        } else {
            hashCode = comparable.hashCode();
        }
        Object obj = this.f;
        if (obj != null) {
            i = obj.hashCode();
        }
        return i ^ hashCode;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        this.g.g();
        Object obj2 = this.f;
        this.f = obj;
        return obj2;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f9904c);
        String valueOf2 = String.valueOf(this.f);
        return android.support.v4.media.a.q(new StringBuilder(valueOf.length() + 1 + valueOf2.length()), valueOf, "=", valueOf2);
    }
}
