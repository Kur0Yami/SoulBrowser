package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes.dex */
public final class zzexm implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final zzgyw f7056a;
    public final zzeak b;

    public zzexm(zzgyw zzgywVar, zzeak zzeakVar) {
        this.f7056a = zzgywVar;
        this.b = zzeakVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.f7056a.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzexl
            @Override // java.util.concurrent.Callable
            public final Object call() {
                String str;
                boolean z;
                zzeak zzeakVar = zzexm.this.b;
                synchronized (zzeakVar) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.la)).booleanValue() && zzeakVar.g()) {
                        if (zzeakVar.q < com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis() / 1000) {
                            zzeakVar.o = "{}";
                            zzeakVar.q = LongCompanionObject.MAX_VALUE;
                            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                        } else if (!zzeakVar.o.equals("{}")) {
                            str = zzeakVar.o;
                        }
                    }
                    str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                String str2 = str;
                boolean c2 = zzeakVar.c();
                boolean zzk = com.google.android.gms.ads.internal.zzt.zzo().zzk();
                boolean z2 = false;
                boolean z3 = true;
                if (zzeakVar.p != null) {
                    z = false;
                    z2 = true;
                } else {
                    z = false;
                }
                if (zzeakVar.w >= ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Ga)).longValue()) {
                    z3 = z;
                }
                return new zzexn(str2, c2, zzk, z2, z3);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 23;
    }
}
