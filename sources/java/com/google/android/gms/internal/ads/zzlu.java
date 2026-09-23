package com.google.android.gms.internal.ads;

import android.util.Pair;
import java.io.IOException;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzlu implements zzwr, zztg {

    /* renamed from: a, reason: collision with root package name */
    public final zzlw f9101a;
    public final /* synthetic */ zzlz b;

    public zzlu(zzlz zzlzVar, zzlw zzlwVar) {
        this.b = zzlzVar;
        this.f9101a = zzlwVar;
    }

    public final Pair a(zzwg zzwgVar) {
        zzwg zzwgVar2;
        zzlw zzlwVar = this.f9101a;
        zzwg zzwgVar3 = null;
        if (zzwgVar != null) {
            int i = 0;
            while (true) {
                ArrayList arrayList = zzlwVar.f9105c;
                if (i < arrayList.size()) {
                    if (((zzwg) arrayList.get(i)).d == zzwgVar.d) {
                        Object obj = zzwgVar.f9337a;
                        Object obj2 = zzlwVar.b;
                        int i2 = zzmg.k;
                        zzwgVar2 = zzwgVar.a(Pair.create(obj2, obj));
                        break;
                    }
                    i++;
                } else {
                    zzwgVar2 = null;
                    break;
                }
            }
            if (zzwgVar2 == null) {
                return null;
            }
            zzwgVar3 = zzwgVar2;
        }
        return Pair.create(Integer.valueOf(zzlwVar.d), zzwgVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final void g(int i, zzwg zzwgVar, final zzvx zzvxVar, final zzwc zzwcVar) {
        final Pair a2 = a(zzwgVar);
        if (a2 != null) {
            this.b.i.g(new Runnable() { // from class: com.google.android.gms.internal.ads.zzlq
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    Pair pair = a2;
                    zzlu.this.b.h.g(((Integer) pair.first).intValue(), (zzwg) pair.second, zzvxVar, zzwcVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final void h(int i, zzwg zzwgVar, final zzvx zzvxVar, final zzwc zzwcVar, final int i2) {
        final Pair a2 = a(zzwgVar);
        if (a2 != null) {
            this.b.i.g(new Runnable() { // from class: com.google.android.gms.internal.ads.zzlt
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    Pair pair = a2;
                    int intValue = ((Integer) pair.first).intValue();
                    zzwg zzwgVar2 = (zzwg) pair.second;
                    zzlu.this.b.h.h(intValue, zzwgVar2, zzvxVar, zzwcVar, i2);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final void i(int i, zzwg zzwgVar, final zzwc zzwcVar) {
        final Pair a2 = a(zzwgVar);
        if (a2 != null) {
            this.b.i.g(new Runnable() { // from class: com.google.android.gms.internal.ads.zzls
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    Pair pair = a2;
                    zzlu.this.b.h.i(((Integer) pair.first).intValue(), (zzwg) pair.second, zzwcVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final void j(int i, zzwg zzwgVar, final zzvx zzvxVar, final zzwc zzwcVar) {
        final Pair a2 = a(zzwgVar);
        if (a2 != null) {
            this.b.i.g(new Runnable() { // from class: com.google.android.gms.internal.ads.zzlp
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    Pair pair = a2;
                    zzlu.this.b.h.j(((Integer) pair.first).intValue(), (zzwg) pair.second, zzvxVar, zzwcVar);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwr
    public final void l(int i, zzwg zzwgVar, final zzvx zzvxVar, final zzwc zzwcVar, final IOException iOException, final boolean z) {
        final Pair a2 = a(zzwgVar);
        if (a2 != null) {
            this.b.i.g(new Runnable() { // from class: com.google.android.gms.internal.ads.zzlr
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    Pair pair = a2;
                    int intValue = ((Integer) pair.first).intValue();
                    zzwg zzwgVar2 = (zzwg) pair.second;
                    zzlu.this.b.h.l(intValue, zzwgVar2, zzvxVar, zzwcVar, iOException, z);
                }
            });
        }
    }
}
