package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final class zze implements Callable<SharedPreferences> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f3827a;

    public zze(Context context) {
        this.f3827a = context;
    }

    @Override // java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ SharedPreferences call() {
        return this.f3827a.getSharedPreferences("google_sdk_flags", 0);
    }
}
