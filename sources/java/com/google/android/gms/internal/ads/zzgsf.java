package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.AbstractSet;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgsf extends AbstractSet {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzgsk f8230c;

    public /* synthetic */ zzgsf(zzgsk zzgskVar) {
        this.f8230c = zzgskVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f8230c.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        zzgsk zzgskVar = this.f8230c;
        Map e = zzgskVar.e();
        if (e != null) {
            return e.entrySet().contains(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            int i = zzgskVar.i(entry.getKey());
            if (i != -1 && Objects.equals(zzgskVar.c()[i], entry.getValue())) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        zzgsk zzgskVar = this.f8230c;
        Map e = zzgskVar.e();
        if (e != null) {
            return e.entrySet().iterator();
        }
        return new zzgsd(zzgskVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        zzgsk zzgskVar = this.f8230c;
        Map e = zzgskVar.e();
        if (e != null) {
            return e.entrySet().remove(obj);
        }
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            if (!zzgskVar.d()) {
                int g = zzgskVar.g();
                Object key = entry.getKey();
                Object value = entry.getValue();
                Object obj2 = zzgskVar.f8235c;
                Objects.requireNonNull(obj2);
                int d = zzgsl.d(key, value, g, obj2, zzgskVar.a(), zzgskVar.b(), zzgskVar.c());
                if (d != -1) {
                    zzgskVar.f(d, g);
                    zzgskVar.j--;
                    zzgskVar.i += 32;
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
        return this.f8230c.size();
    }
}
