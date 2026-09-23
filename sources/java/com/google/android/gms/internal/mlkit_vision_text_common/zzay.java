package com.google.android.gms.internal.mlkit_vision_text_common;

import java.util.Map;

/* loaded from: classes3.dex */
final class zzay extends zzam {

    /* renamed from: c, reason: collision with root package name */
    public final Object f11130c;
    public int f;
    public final /* synthetic */ zzba g;

    public zzay(zzba zzbaVar, int i) {
        this.g = zzbaVar;
        Object obj = zzba.n;
        this.f11130c = zzbaVar.b()[i];
        this.f = i;
    }

    public final void a() {
        int i = this.f;
        Object obj = this.f11130c;
        zzba zzbaVar = this.g;
        if (i != -1 && i < zzbaVar.size()) {
            if (zzw.a(obj, zzbaVar.b()[this.f])) {
                return;
            }
        }
        Object obj2 = zzba.n;
        this.f = zzbaVar.h(obj);
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.f11130c;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        zzba zzbaVar = this.g;
        Map d = zzbaVar.d();
        if (d != null) {
            return d.get(this.f11130c);
        }
        a();
        int i = this.f;
        if (i == -1) {
            return null;
        }
        return zzbaVar.c()[i];
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzam, java.util.Map.Entry
    public final Object setValue(Object obj) {
        zzba zzbaVar = this.g;
        Map d = zzbaVar.d();
        Object obj2 = this.f11130c;
        if (d != null) {
            return d.put(obj2, obj);
        }
        a();
        int i = this.f;
        if (i == -1) {
            zzbaVar.put(obj2, obj);
            return null;
        }
        Object obj3 = zzbaVar.c()[i];
        zzbaVar.c()[this.f] = obj;
        return obj3;
    }
}
