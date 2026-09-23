package com.google.android.gms.ads.internal.util;

import android.support.v4.media.a;
import com.google.android.gms.internal.ads.zzaro;
import com.google.android.gms.internal.ads.zzart;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbg implements zzaro {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f3125a;
    public final /* synthetic */ zzbi b;

    public zzbg(zzbl zzblVar, String str, zzbi zzbiVar) {
        this.f3125a = str;
        this.b = zzbiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void a(zzart zzartVar) {
        String obj = zzartVar.toString();
        String str = this.f3125a;
        String r = a.r(new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(obj).length()), "Failed to load URL: ", str, "\n", obj);
        int i = zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzi(r);
        this.b.a(null);
    }
}
