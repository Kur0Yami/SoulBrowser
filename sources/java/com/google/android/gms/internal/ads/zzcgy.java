package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
public final class zzcgy implements zzbnn {
    public static final Integer b(String str, Map map) {
        if (!map.containsKey(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Integer.parseInt((String) map.get(str)));
        } catch (NumberFormatException unused) {
            String str2 = (String) map.get(str);
            String r = android.support.v4.media.a.r(new StringBuilder(str.length() + 39 + String.valueOf(str2).length()), "Precache invalid numeric parameter '", str, "': ", str2);
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi(r);
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:77:0x01b4, code lost:
    
        if (r3.setExecutable(true, false) == false) goto L74;
     */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00de  */
    /* JADX WARN: Type inference failed for: r0v12, types: [com.google.android.gms.internal.ads.zzcgx, com.google.android.gms.internal.ads.zzcha] */
    /* JADX WARN: Type inference failed for: r0v23, types: [com.google.android.gms.internal.ads.zzchg, com.google.android.gms.internal.ads.zzcgx, com.google.android.gms.internal.ads.zzcfa] */
    @Override // com.google.android.gms.internal.ads.zzbnn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.util.Map r14, java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 560
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcgy.a(java.util.Map, java.lang.Object):void");
    }
}
