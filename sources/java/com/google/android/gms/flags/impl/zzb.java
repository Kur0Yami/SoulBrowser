package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class zzb implements Callable<Integer> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f3821a;
    public final /* synthetic */ String b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Integer f3822c;

    public zzb(SharedPreferences sharedPreferences, String str, Integer num) {
        this.f3821a = sharedPreferences;
        this.b = str;
        this.f3822c = num;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Integer call() {
        return Integer.valueOf(this.f3821a.getInt(this.b, this.f3822c.intValue()));
    }
}
