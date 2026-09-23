package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class zzcqm implements zzcpq {

    /* renamed from: a, reason: collision with root package name */
    public final CookieManager f5375a;

    public zzcqm(Context context) {
        this.f5375a = com.google.android.gms.ads.internal.zzt.zzf().zza(context);
    }

    @Override // com.google.android.gms.internal.ads.zzcpq
    public final void a(HashMap hashMap) {
        CookieManager cookieManager = this.f5375a;
        if (cookieManager != null) {
            if (((String) hashMap.get("clear")) != null) {
                String str = (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.s1);
                String cookie = cookieManager.getCookie(str);
                if (cookie != null) {
                    List d = zzgqp.a(new zzgpl(';')).d(cookie);
                    for (int i = 0; i < d.size(); i++) {
                        Iterator it = ((zzgqj) zzgqp.a(new zzgpl('=')).c((String) d.get(i))).iterator();
                        if (it.hasNext()) {
                            cookieManager.setCookie(str, String.valueOf((String) it.next()).concat(String.valueOf((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.e1))));
                        } else {
                            StringBuilder sb = new StringBuilder(String.valueOf(0).length() + 70);
                            sb.append("position (0) must be less than the number of elements that remained (0)");
                            throw new IndexOutOfBoundsException(sb.toString());
                        }
                    }
                    return;
                }
                return;
            }
            String str2 = (String) hashMap.get("cookie");
            if (TextUtils.isEmpty(str2)) {
                return;
            }
            cookieManager.setCookie((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.s1), str2);
        }
    }
}
