package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.os.Bundle;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
final /* synthetic */ class zzexp implements Callable {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzexp f7060a = new Object();

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Bundle bundle = new Bundle();
        Runtime runtime = Runtime.getRuntime();
        bundle.putLong("runtime_free", runtime.freeMemory());
        bundle.putLong("runtime_max", runtime.maxMemory());
        bundle.putLong("runtime_total", runtime.totalMemory());
        bundle.putInt("web_view_count", com.google.android.gms.ads.internal.zzt.zzh().k.get());
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Kf)).booleanValue()) {
            ActivityManager.MemoryInfo zze = com.google.android.gms.ads.internal.util.client.zzf.zze(com.google.android.gms.ads.internal.zzt.zzh().e);
            if (zze != null) {
                if (PlatformVersion.isAtLeastU()) {
                    bundle.putLong("a_ad_mem", zze.advertisedMem);
                }
                bundle.putLong("a_total", zze.totalMem);
                bundle.putLong("a_avai", zze.availMem);
                bundle.putLong("a_threshold", zze.threshold);
                bundle.putBoolean("a_is_low_mem", zze.lowMemory);
            }
            bundle.putLong("runtime_avai_processors", runtime.availableProcessors());
        }
        return new zzexr(bundle);
    }
}
