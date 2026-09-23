package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzbb;
import com.google.android.gms.ads.internal.client.zzck;
import com.google.android.gms.internal.ads.zzbsv;

/* loaded from: classes.dex */
public final class zzb {

    /* renamed from: a, reason: collision with root package name */
    public static volatile zzck f3325a;

    public static zzck zza(Context context) {
        if (f3325a == null) {
            synchronized (zzb.class) {
                try {
                    if (f3325a == null) {
                        f3325a = zzbb.zzb().zzd(context, new zzbsv());
                    }
                } finally {
                }
            }
        }
        return f3325a;
    }
}
