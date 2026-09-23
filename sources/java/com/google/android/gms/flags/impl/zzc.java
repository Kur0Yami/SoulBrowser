package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class zzc implements Callable<Long> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f3823a;
    public final /* synthetic */ String b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Long f3824c;

    public zzc(SharedPreferences sharedPreferences, String str, Long l) {
        this.f3823a = sharedPreferences;
        this.b = str;
        this.f3824c = l;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Long call() {
        return Long.valueOf(this.f3823a.getLong(this.b, this.f3824c.longValue()));
    }
}
