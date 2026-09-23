package com.google.android.gms.cast;

import java.util.HashMap;

/* loaded from: classes.dex */
final class zzbu {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f3668a = new HashMap();
    public final HashMap b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f3669c = new HashMap();

    public final void a(int i, String str, String str2) {
        this.f3668a.put(str, str2);
        this.b.put(str2, str);
        this.f3669c.put(str, Integer.valueOf(i));
    }
}
