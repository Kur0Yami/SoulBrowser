package com.google.android.gms.ads.nonagon.signalgeneration;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.query.QueryInfo;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzq {

    /* renamed from: a, reason: collision with root package name */
    public final QueryInfo f3292a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final long f3293c;
    public final int d;
    public final AtomicBoolean e = new AtomicBoolean(false);

    public zzq(@Nullable QueryInfo queryInfo, String str, long j, int i) {
        this.f3292a = queryInfo;
        this.b = str;
        this.f3293c = j;
        this.d = i;
    }

    @Nullable
    public final QueryInfo zza() {
        return this.f3292a;
    }

    public final String zzb() {
        return this.b;
    }

    public final boolean zzc() {
        if (this.f3293c <= com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis()) {
            return true;
        }
        return false;
    }

    public final int zzd() {
        return this.d;
    }

    public final boolean zze() {
        return this.e.get();
    }

    public final void zzf() {
        this.e.set(true);
    }
}
