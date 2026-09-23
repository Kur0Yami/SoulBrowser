package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.appset.AppSetIdClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;

/* loaded from: classes.dex */
public final class zzfjp {

    /* renamed from: a, reason: collision with root package name */
    public static Task f7416a;
    public static com.google.android.gms.internal.appset.zzr b;

    /* renamed from: c, reason: collision with root package name */
    public static final Object f7417c = new Object();

    public static void a(Context context, boolean z) {
        synchronized (f7417c) {
            try {
                if (b == null) {
                    b = new com.google.android.gms.internal.appset.zzr(context);
                }
                Task task = f7416a;
                if (task == null || ((task.o() && !f7416a.p()) || (z && f7416a.o()))) {
                    try {
                        f7416a = ((AppSetIdClient) Preconditions.checkNotNull(b, "the appSetIdClient shouldn't be null")).b();
                    } catch (ArrayIndexOutOfBoundsException e) {
                        String message = e.getMessage();
                        StringBuilder sb = new StringBuilder(String.valueOf(message).length() + 31);
                        sb.append("Failed to get app set ID info: ");
                        sb.append(message);
                        com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
                        f7416a = Tasks.d(e);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
