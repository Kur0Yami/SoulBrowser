package com.google.android.gms.internal.mlkit_vision_text_common;

import j$.util.Objects;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes3.dex */
final class zzau extends AbstractSet {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzba f11127c;

    public zzau(zzba zzbaVar) {
        this.f11127c = zzbaVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f11127c.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        zzba zzbaVar = this.f11127c;
        Map d = zzbaVar.d();
        if (d != null) {
            return d.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            int h = zzbaVar.h(entry.getKey());
            if (h != -1 && zzw.a(zzbaVar.c()[h], entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzba zzbaVar = this.f11127c;
        Map d = zzbaVar.d();
        if (d != null) {
            return d.entrySet().iterator();
        }
        return new zzas(zzbaVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        zzba zzbaVar = this.f11127c;
        Map d = zzbaVar.d();
        if (d != null) {
            return d.entrySet().remove(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            if (!zzbaVar.f()) {
                int g = zzbaVar.g();
                Object key = entry.getKey();
                Object value = entry.getValue();
                Object obj2 = zzbaVar.f11132c;
                Objects.requireNonNull(obj2);
                int a2 = zzbb.a(key, value, g, obj2, zzbaVar.a(), zzbaVar.b(), zzbaVar.c());
                if (a2 != -1) {
                    zzbaVar.e(a2, g);
                    zzbaVar.j--;
                    zzbaVar.i += 32;
                    return true;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f11127c.size();
    }
}
