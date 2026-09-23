package com.google.android.gms.internal.play_billing;

import android.support.v4.media.a;
import java.util.Map;

/* loaded from: classes3.dex */
final class zzhq implements Map.Entry, Comparable {

    /* renamed from: c, reason: collision with root package name */
    public final Comparable f11532c;
    public Object f;
    public final /* synthetic */ zzhu g;

    public zzhq(zzhu zzhuVar, Comparable comparable, Object obj) {
        this.g = zzhuVar;
        this.f11532c = comparable;
        this.f = obj;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.f11532c.compareTo(((zzhq) obj).f11532c);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        boolean equals;
        boolean equals2;
        if (obj != this) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Comparable comparable = this.f11532c;
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
        return this.f11532c;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        int hashCode;
        int i = 0;
        Comparable comparable = this.f11532c;
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
        int i = zzhu.k;
        this.g.h();
        Object obj2 = this.f;
        this.f = obj;
        return obj2;
    }

    public final String toString() {
        return a.D(String.valueOf(this.f11532c), "=", String.valueOf(this.f));
    }
}
