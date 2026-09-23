package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class zzijr {

    /* renamed from: a, reason: collision with root package name */
    public final List f9007a;
    public final List b;

    public zzijr(int i, int i2) {
        List arrayList;
        List arrayList2;
        if (i == 0) {
            arrayList = Collections.EMPTY_LIST;
        } else {
            arrayList = new ArrayList(i);
        }
        this.f9007a = arrayList;
        if (i2 == 0) {
            arrayList2 = Collections.EMPTY_LIST;
        } else {
            arrayList2 = new ArrayList(i2);
        }
        this.b = arrayList2;
    }

    public final void a(zzijp zzijpVar) {
        this.f9007a.add(zzijpVar);
    }

    public final void b(zzijp zzijpVar) {
        this.b.add(zzijpVar);
    }

    public final zzijs c() {
        return new zzijs(this.f9007a, this.b);
    }
}
