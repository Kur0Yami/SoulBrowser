package com.google.android.gms.ads.query;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.ads.internal.client.zzek;
import com.google.android.gms.ads.internal.client.zzfa;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbii;
import com.google.android.gms.internal.ads.zzbxp;

/* loaded from: classes.dex */
public class QueryInfo {

    /* renamed from: a, reason: collision with root package name */
    public final zzfa f3316a;

    public QueryInfo(zzfa zzfaVar) {
        this.f3316a = zzfaVar;
    }

    public static void a(final Context context, final AdFormat adFormat, final AdRequest adRequest, final String str, final QueryInfoGenerationCallback queryInfoGenerationCallback) {
        zzek zza;
        zzbgk.a(context);
        if (((Boolean) zzbii.j.c()).booleanValue()) {
            if (((Boolean) zzbd.zzc().a(zzbgk.Ac)).booleanValue()) {
                zzb.zzb.execute(new Runnable() { // from class: com.google.android.gms.ads.query.zza
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzek zza2;
                        AdRequest adRequest2 = adRequest;
                        if (adRequest2 == null) {
                            zza2 = null;
                        } else {
                            zza2 = adRequest2.zza();
                        }
                        new zzbxp(context, adFormat, zza2, str).b(queryInfoGenerationCallback);
                    }
                });
                return;
            }
        }
        if (adRequest == null) {
            zza = null;
        } else {
            zza = adRequest.zza();
        }
        new zzbxp(context, adFormat, zza, str).b(queryInfoGenerationCallback);
    }

    public static void generate(@NonNull Context context, @NonNull AdFormat adFormat, @Nullable AdRequest adRequest, @NonNull QueryInfoGenerationCallback queryInfoGenerationCallback) {
        a(context, adFormat, adRequest, null, queryInfoGenerationCallback);
    }

    @NonNull
    public String getQuery() {
        return this.f3316a.zza();
    }

    @NonNull
    @KeepForSdk
    public Bundle getQueryBundle() {
        return this.f3316a.zzc();
    }

    @NonNull
    @KeepForSdk
    public String getRequestId() {
        return this.f3316a.zzb();
    }

    public static void generate(@NonNull Context context, @NonNull AdFormat adFormat, @Nullable AdRequest adRequest, @NonNull String str, @NonNull QueryInfoGenerationCallback queryInfoGenerationCallback) {
        Preconditions.checkNotNull(str, "AdUnitId cannot be null.");
        a(context, adFormat, adRequest, str, queryInfoGenerationCallback);
    }
}
