package com.google.android.gms.internal.ads;

import android.util.SparseBooleanArray;

/* loaded from: classes.dex */
public final class zzr {

    /* renamed from: a, reason: collision with root package name */
    public final SparseBooleanArray f9207a = new SparseBooleanArray();
    public boolean b;

    public final void a(int i) {
        zzgqa.f(!this.b);
        this.f9207a.append(i, true);
    }

    public final zzs b() {
        zzgqa.f(!this.b);
        this.b = true;
        return new zzs(this.f9207a);
    }
}
