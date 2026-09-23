package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Range;

/* loaded from: classes.dex */
public final class zzaca {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3889a;
    public final zzacm b;

    /* renamed from: c, reason: collision with root package name */
    public zzbs f3890c;
    public boolean d;
    public zzdn e;
    public boolean f;
    public long g = 15000;
    public final zzacn h;

    /* JADX WARN: Type inference failed for: r4v3, types: [java.lang.Object, com.google.android.gms.internal.ads.zzacn] */
    public zzaca(Context context, zzacm zzacmVar) {
        this.f3889a = context.getApplicationContext();
        this.b = zzacmVar;
        ?? obj = new Object();
        Range range = new Range(Double.valueOf(0.0d), Double.valueOf(1.0d));
        obj.d = range;
        obj.f3904c = ((Double) range.getUpper()).doubleValue();
        obj.f3903a = -9223372036854775807L;
        obj.b = -9223372036854775807L;
        this.h = obj;
        this.e = zzdn.f5927a;
    }
}
