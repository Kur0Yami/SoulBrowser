package com.google.android.gms.internal.ads;

import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
public final class zzbbg {

    /* renamed from: a, reason: collision with root package name */
    public final zzazt f4529a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4530c;
    public final Class[] e;
    public volatile Method d = null;
    public final CountDownLatch f = new CountDownLatch(1);

    public zzbbg(zzazt zzaztVar, String str, String str2, Class... clsArr) {
        this.f4529a = zzaztVar;
        this.b = str;
        this.f4530c = str2;
        this.e = clsArr;
        zzaztVar.b.submit(new zzbbf(this));
    }
}
