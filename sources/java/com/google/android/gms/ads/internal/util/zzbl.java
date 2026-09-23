package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.ClientLibraryUtils;
import com.google.android.gms.internal.ads.zzaqs;
import com.google.android.gms.internal.ads.zzarn;
import com.google.android.gms.internal.ads.zzasp;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzcdt;
import com.google.api.client.http.HttpMethods;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzbl {

    /* renamed from: a, reason: collision with root package name */
    public static zzarn f3127a;
    public static final Object b = new Object();

    public zzbl(Context context) {
        zzarn a2;
        context = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        synchronized (b) {
            try {
                if (f3127a == null) {
                    zzbgk.a(context);
                    if (!ClientLibraryUtils.isPackageSide()) {
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.n5)).booleanValue()) {
                            a2 = zzay.zzb(context);
                            f3127a = a2;
                        }
                    }
                    a2 = zzasp.a(context);
                    f3127a = a2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final ListenableFuture zza(String str) {
        zzcdt zzcdtVar = new zzcdt();
        f3127a.b(new zzbk(str, null, zzcdtVar));
        return zzcdtVar;
    }

    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.gms.internal.ads.zzarp, com.google.common.util.concurrent.ListenableFuture, com.google.android.gms.internal.ads.zzcdt, com.google.android.gms.ads.internal.util.zzbi] */
    public final ListenableFuture zzb(int i, String str, @Nullable Map map, @Nullable byte[] bArr) {
        byte[] bArr2;
        ?? zzcdtVar = new zzcdt();
        zzbg zzbgVar = new zzbg(this, str, zzcdtVar);
        com.google.android.gms.ads.internal.util.client.zzl zzlVar = new com.google.android.gms.ads.internal.util.client.zzl(null);
        zzbh zzbhVar = new zzbh(this, i, str, zzcdtVar, zzbgVar, bArr, map, zzlVar);
        if (com.google.android.gms.ads.internal.util.client.zzl.zzj()) {
            try {
                Map zzm = zzbhVar.zzm();
                if (bArr == null) {
                    bArr2 = null;
                } else {
                    bArr2 = bArr;
                }
                zzlVar.zzb(str, HttpMethods.GET, zzm, bArr2);
            } catch (zzaqs e) {
                String message = e.getMessage();
                int i2 = zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzi(message);
            }
        }
        f3127a.b(zzbhVar);
        return zzcdtVar;
    }
}
