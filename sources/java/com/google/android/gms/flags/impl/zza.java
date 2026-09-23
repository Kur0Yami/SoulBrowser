package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class zza implements Callable<Boolean> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f3819a;
    public final /* synthetic */ String b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Boolean f3820c;

    public zza(SharedPreferences sharedPreferences, String str, Boolean bool) {
        this.f3819a = sharedPreferences;
        this.b = str;
        this.f3820c = bool;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Boolean call() {
        return Boolean.valueOf(this.f3819a.getBoolean(this.b, this.f3820c.booleanValue()));
    }
}
