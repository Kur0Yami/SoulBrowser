package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Map;

/* loaded from: classes.dex */
final class zzgsi extends zzgru {

    /* renamed from: c, reason: collision with root package name */
    public final Object f8233c;
    public int f;
    public final /* synthetic */ zzgsk g;

    public zzgsi(zzgsk zzgskVar, int i) {
        Objects.requireNonNull(zzgskVar);
        this.g = zzgskVar;
        this.f8233c = zzgskVar.b()[i];
        this.f = i;
    }

    public final void a() {
        int i = this.f;
        Object obj = this.f8233c;
        zzgsk zzgskVar = this.g;
        if (i != -1 && i < zzgskVar.size()) {
            if (Objects.equals(obj, zzgskVar.b()[this.f])) {
                return;
            }
        }
        this.f = zzgskVar.i(obj);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f8233c;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        zzgsk zzgskVar = this.g;
        Map e = zzgskVar.e();
        if (e != null) {
            return e.get(this.f8233c);
        }
        a();
        int i = this.f;
        if (i == -1) {
            return null;
        }
        return zzgskVar.c()[i];
    }

    @Override // com.google.android.gms.internal.ads.zzgru, java.util.Map.Entry
    public final Object setValue(Object obj) {
        zzgsk zzgskVar = this.g;
        Map e = zzgskVar.e();
        Object obj2 = this.f8233c;
        if (e != null) {
            return e.put(obj2, obj);
        }
        a();
        int i = this.f;
        if (i == -1) {
            zzgskVar.put(obj2, obj);
            return null;
        }
        Object obj3 = zzgskVar.c()[i];
        zzgskVar.c()[this.f] = obj;
        return obj3;
    }
}
