package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzbsf {
    public static final com.google.android.gms.ads.internal.util.zzbc b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static final com.google.android.gms.ads.internal.util.zzbc f4868c = new Object();

    /* renamed from: a, reason: collision with root package name */
    public final zzbrr f4869a;

    public zzbsf(Context context, VersionInfoParcel versionInfoParcel, String str, zzfnr zzfnrVar) {
        this.f4869a = new zzbrr(context, versionInfoParcel, str, zzfnrVar);
    }

    public final zzbsj a(String str, zzbry zzbryVar, zzbrx zzbrxVar) {
        return new zzbsj(this.f4869a, str, zzbryVar, zzbrxVar);
    }
}
