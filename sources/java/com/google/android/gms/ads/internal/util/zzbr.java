package com.google.android.gms.ads.internal.util;

import android.graphics.Bitmap;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class zzbr {

    /* renamed from: a, reason: collision with root package name */
    public final ConcurrentHashMap f3130a = new ConcurrentHashMap();

    public zzbr() {
        new AtomicInteger(0);
    }

    public final Bitmap zza(Integer num) {
        return (Bitmap) this.f3130a.get(num);
    }
}
