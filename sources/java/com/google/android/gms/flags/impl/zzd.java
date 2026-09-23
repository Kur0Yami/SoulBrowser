package com.google.android.gms.flags.impl;

import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class zzd implements Callable<String> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f3825a;
    public final /* synthetic */ String b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f3826c;

    public zzd(SharedPreferences sharedPreferences, String str, String str2) {
        this.f3825a = sharedPreferences;
        this.b = str;
        this.f3826c = str2;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ String call() {
        return this.f3825a.getString(this.b, this.f3826c);
    }
}
