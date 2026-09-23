package com.google.android.gms.internal.ads;

import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public class zzijb {

    /* renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f9001a;

    public zzijb(int i) {
        int i2;
        if (i < 3) {
            i2 = i + 1;
        } else if (i < 1073741824) {
            i2 = (int) ((i / 0.75f) + 1.0f);
        } else {
            i2 = Integer.MAX_VALUE;
        }
        this.f9001a = new LinkedHashMap(i2);
    }

    public final void a(Object obj, zzijp zzijpVar) {
        if (zzijpVar != null) {
            this.f9001a.put(obj, zzijpVar);
            return;
        }
        throw new NullPointerException("provider");
    }

    public void b(String str, zzijp zzijpVar) {
        a(str, zzijpVar);
    }
}
