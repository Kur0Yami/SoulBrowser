package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzbnc implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzbnc f4771a = new Object();

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final /* synthetic */ void a(Map map, Object obj) {
        boolean z;
        zzckd zzckdVar = (zzckd) obj;
        zzbnn zzbnnVar = zzbnm.f4781a;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.v9)).booleanValue()) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("canOpenAppGmsgHandler disabled.");
            return;
        }
        String str = (String) map.get("package_name");
        if (TextUtils.isEmpty(str)) {
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("Package name missing in canOpenApp GMSG.");
            return;
        }
        HashMap hashMap = new HashMap();
        if (zzckdVar.getContext().getPackageManager().getLaunchIntentForPackage(str) != null) {
            z = true;
        } else {
            z = false;
        }
        Boolean valueOf = Boolean.valueOf(z);
        hashMap.put(str, valueOf);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13 + valueOf.toString().length());
        sb.append("/canOpenApp;");
        sb.append(str);
        sb.append(";");
        sb.append(valueOf);
        com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
        ((zzbqj) zzckdVar).S("openableApp", hashMap);
    }
}
