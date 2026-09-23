package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzevc implements zzijg {
    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* synthetic */ Object zzb() {
        Object arrayList = new ArrayList();
        zzbgb zzbgbVar = zzbgk.dd;
        if (!((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).isEmpty()) {
            arrayList = Arrays.asList(((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).split(","));
        }
        zzijo.a(arrayList);
        return arrayList;
    }
}
