package com.google.android.gms.internal.appset;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.appset.AppSetIdInfo;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class zzl implements AppSetIdClient {
    public static zzl d;

    /* renamed from: a, reason: collision with root package name */
    public final Context f9433a;
    public final ScheduledExecutorService b;

    /* renamed from: c, reason: collision with root package name */
    public final ExecutorService f9434c;

    public zzl(Context context) {
        ScheduledExecutorService newSingleThreadScheduledExecutor = Executors.newSingleThreadScheduledExecutor();
        this.b = newSingleThreadScheduledExecutor;
        this.f9434c = Executors.newSingleThreadExecutor();
        this.f9433a = context;
        newSingleThreadScheduledExecutor.scheduleAtFixedRate(new zzj(this), 0L, 86400L, TimeUnit.SECONDS);
    }

    public static final SharedPreferences a(Context context) {
        return context.getSharedPreferences("app_set_id_storage", 0);
    }

    public static final void c(Context context) {
        String str;
        SharedPreferences a2 = a(context);
        if (!a2.edit().putLong("app_set_id_last_used_time", DefaultClock.getInstance().currentTimeMillis()).commit()) {
            String valueOf = String.valueOf(context.getPackageName());
            if (valueOf.length() != 0) {
                str = "Failed to store app set ID last used time for App ".concat(valueOf);
            } else {
                str = new String("Failed to store app set ID last used time for App ");
            }
            Log.e("AppSet", str);
            throw new Exception("Failed to store the app set ID last used time.");
        }
    }

    @Override // com.google.android.gms.appset.AppSetIdClient
    public final Task b() {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.f9434c.execute(new Runnable() { // from class: com.google.android.gms.internal.appset.zzh
            @Override // java.lang.Runnable
            public final void run() {
                String str;
                String str2;
                Context context = zzl.this.f9433a;
                String string = zzl.a(context).getString("app_set_id", null);
                long j = -1;
                long j2 = zzl.a(context).getLong("app_set_id_last_used_time", -1L);
                if (j2 != -1) {
                    j = 33696000000L + j2;
                }
                TaskCompletionSource taskCompletionSource2 = taskCompletionSource;
                if (string != null && DefaultClock.getInstance().currentTimeMillis() <= j) {
                    try {
                        zzl.c(context);
                    } catch (zzk e) {
                        taskCompletionSource2.a(e);
                        return;
                    }
                } else {
                    string = UUID.randomUUID().toString();
                    try {
                        if (!context.getSharedPreferences("app_set_id_storage", 0).edit().putString("app_set_id", string).commit()) {
                            String valueOf = String.valueOf(context.getPackageName());
                            if (valueOf.length() != 0) {
                                str2 = "Failed to store app set ID generated for App ".concat(valueOf);
                            } else {
                                str2 = new String("Failed to store app set ID generated for App ");
                            }
                            Log.e("AppSet", str2);
                            throw new Exception("Failed to store the app set ID.");
                        }
                        zzl.c(context);
                        SharedPreferences sharedPreferences = context.getSharedPreferences("app_set_id_storage", 0);
                        if (!sharedPreferences.edit().putLong("app_set_id_creation_time", DefaultClock.getInstance().currentTimeMillis()).commit()) {
                            String valueOf2 = String.valueOf(context.getPackageName());
                            if (valueOf2.length() != 0) {
                                str = "Failed to store app set ID creation time for App ".concat(valueOf2);
                            } else {
                                str = new String("Failed to store app set ID creation time for App ");
                            }
                            Log.e("AppSet", str);
                            throw new Exception("Failed to store the app set ID creation time.");
                        }
                    } catch (zzk e2) {
                        taskCompletionSource2.a(e2);
                        return;
                    }
                }
                taskCompletionSource2.b(new AppSetIdInfo(string, 1));
            }
        });
        return taskCompletionSource.f11605a;
    }
}
