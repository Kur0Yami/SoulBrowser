package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzbnl implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzbnl f4780a = new Object();

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final /* synthetic */ void a(Map map, Object obj) {
        String str;
        zzckd zzckdVar = (zzckd) obj;
        zzbnn zzbnnVar = zzbnm.f4781a;
        String str2 = (String) map.get("urls");
        if (TextUtils.isEmpty(str2)) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("URLs missing in canOpenURLs GMSG.");
            return;
        }
        String[] split2 = str2.split(",");
        HashMap hashMap = new HashMap();
        PackageManager packageManager = zzckdVar.getContext().getPackageManager();
        for (String str3 : split2) {
            String[] split3 = str3.split(";", 2);
            String trim = split3[0].trim();
            boolean z = true;
            if (split3.length > 1) {
                str = split3[1].trim();
            } else {
                str = "android.intent.action.VIEW";
            }
            if (packageManager.resolveActivity(new Intent(str, Uri.parse(trim)), 65536) == null) {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            hashMap.put(str3, valueOf);
            StringBuilder sb = new StringBuilder(str3.length() + 14 + valueOf.toString().length());
            sb.append("/canOpenURLs;");
            sb.append(str3);
            sb.append(";");
            sb.append(valueOf);
            com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
        }
        ((zzbqj) zzckdVar).S("openableURLs", hashMap);
    }
}
