package com.google.android.gms.ads.internal.util;

import com.google.android.gms.internal.ads.zzarg;
import com.google.android.gms.internal.ads.zzark;
import com.google.android.gms.internal.ads.zzarq;
import com.google.android.gms.internal.ads.zzash;
import com.google.android.gms.internal.ads.zzcdt;
import com.google.api.client.http.HttpMethods;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzbk extends zzark {
    public final zzcdt q;
    public final com.google.android.gms.ads.internal.util.client.zzl r;

    public zzbk(String str, Map map, zzcdt zzcdtVar) {
        super(0, str, new zzbj(zzcdtVar));
        this.q = zzcdtVar;
        com.google.android.gms.ads.internal.util.client.zzl zzlVar = new com.google.android.gms.ads.internal.util.client.zzl(null);
        this.r = zzlVar;
        zzlVar.zzb(str, HttpMethods.GET, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzark
    public final zzarq c(zzarg zzargVar) {
        return new zzarq(zzargVar, zzash.a(zzargVar));
    }

    @Override // com.google.android.gms.internal.ads.zzark
    public final /* bridge */ /* synthetic */ void d(Object obj) {
        zzarg zzargVar = (zzarg) obj;
        Map map = zzargVar.f4365c;
        int i = zzargVar.f4364a;
        com.google.android.gms.ads.internal.util.client.zzl zzlVar = this.r;
        zzlVar.zzd(map, i);
        byte[] bArr = zzargVar.b;
        if (com.google.android.gms.ads.internal.util.client.zzl.zzj() && bArr != null) {
            zzlVar.zzf(bArr);
        }
        this.q.a(zzargVar);
    }
}
