package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;

/* loaded from: classes.dex */
public final class zzf {

    /* renamed from: a, reason: collision with root package name */
    public static SharedPreferences f3828a;

    public static SharedPreferences a(Context context) {
        SharedPreferences sharedPreferences;
        synchronized (SharedPreferences.class) {
            try {
                if (f3828a == null) {
                    f3828a = (SharedPreferences) com.google.android.gms.internal.flags.zzd.a(new zze(context));
                }
                sharedPreferences = f3828a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return sharedPreferences;
    }
}
