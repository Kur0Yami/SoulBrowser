package com.google.android.gms.internal.appset;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.common.util.DefaultClock;

/* loaded from: classes.dex */
final class zzj implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzl f9432c;

    @Override // java.lang.Runnable
    public final void run() {
        long j;
        String str;
        String str2;
        Context context = this.f9432c.f9433a;
        long j2 = zzl.a(context).getLong("app_set_id_last_used_time", -1L);
        if (j2 != -1) {
            j = j2 + 33696000000L;
        } else {
            j = -1;
        }
        if (j != -1 && DefaultClock.getInstance().currentTimeMillis() > j) {
            if (!zzl.a(context).edit().remove("app_set_id").commit()) {
                String valueOf = String.valueOf(context.getPackageName());
                if (valueOf.length() != 0) {
                    str2 = "Failed to clear app set ID generated for App ".concat(valueOf);
                } else {
                    str2 = new String("Failed to clear app set ID generated for App ");
                }
                Log.e("AppSet", str2);
            }
            if (!context.getSharedPreferences("app_set_id_storage", 0).edit().remove("app_set_id_last_used_time").commit()) {
                String valueOf2 = String.valueOf(context.getPackageName());
                if (valueOf2.length() != 0) {
                    str = "Failed to clear app set ID last used time for App ".concat(valueOf2);
                } else {
                    str = new String("Failed to clear app set ID last used time for App ");
                }
                Log.e("AppSet", str);
            }
        }
    }
}
