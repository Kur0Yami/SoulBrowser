package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import java.io.IOException;

/* loaded from: classes.dex */
final class zzfzh {

    /* renamed from: c, reason: collision with root package name */
    public static zzfzh f7745c;

    /* renamed from: a, reason: collision with root package name */
    public final String f7746a;
    public final SharedPreferences b;

    public zzfzh(Context context) {
        this.f7746a = context.getPackageName();
        this.b = context.getSharedPreferences("paid_storage_sp", 0);
    }

    public final void a(Object obj, String str) {
        boolean commit;
        boolean z = obj instanceof String;
        String str2 = this.f7746a;
        SharedPreferences sharedPreferences = this.b;
        if (z) {
            commit = sharedPreferences.edit().putString(str, (String) obj).commit();
        } else if (obj instanceof Long) {
            commit = sharedPreferences.edit().putLong(str, ((Long) obj).longValue()).commit();
        } else if (obj instanceof Boolean) {
            commit = sharedPreferences.edit().putBoolean(str, ((Boolean) obj).booleanValue()).commit();
        } else if (obj instanceof Integer) {
            commit = sharedPreferences.edit().putInt(str, ((Integer) obj).intValue()).commit();
        } else {
            String valueOf = String.valueOf(obj.getClass());
            Log.e("GpidLifecycleSPHandler", android.support.v4.media.a.r(new StringBuilder(valueOf.length() + 33 + String.valueOf(str2).length()), "Unexpected object class ", valueOf, " for app ", str2));
            throw new IOException(android.support.v4.media.a.r(new StringBuilder(str.length() + 25 + String.valueOf(str2).length()), "Failed to store ", str, " for app ", str2));
        }
        if (commit) {
            return;
        }
        throw new IOException(android.support.v4.media.a.r(new StringBuilder(str.length() + 25 + String.valueOf(str2).length()), "Failed to store ", str, " for app ", str2));
    }

    public final void b(String str) {
        if (this.b.edit().remove(str).commit()) {
            return;
        }
        int length = str.length();
        String str2 = this.f7746a;
        throw new IOException(android.support.v4.media.a.r(new StringBuilder(length + 26 + String.valueOf(str2).length()), "Failed to remove ", str, " for app ", str2));
    }
}
