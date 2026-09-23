package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzfam implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f7163a;
    public final Context b;

    public zzfam(Context context, zzgyw zzgywVar) {
        this.f7163a = zzgywVar;
        this.b = context;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.f7163a.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzfal
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                boolean z;
                int i;
                Context context = zzfam.this.b;
                TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
                String networkOperator = telephonyManager.getNetworkOperator();
                int phoneType = telephonyManager.getPhoneType();
                com.google.android.gms.ads.internal.zzt.zzc();
                int i2 = -1;
                if (com.google.android.gms.ads.internal.util.zzs.zzF(context, "android.permission.ACCESS_NETWORK_STATE")) {
                    ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                    NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                    if (activeNetworkInfo != null) {
                        int type = activeNetworkInfo.getType();
                        int ordinal = activeNetworkInfo.getDetailedState().ordinal();
                        i = type;
                        i2 = ordinal;
                    } else {
                        i = -1;
                    }
                    z = connectivityManager.isActiveNetworkMetered();
                } else {
                    z = false;
                    i = -2;
                }
                return new zzfak(i, com.google.android.gms.ads.internal.zzt.zzf().zzm(context), phoneType, i2, networkOperator, z);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 39;
    }
}
