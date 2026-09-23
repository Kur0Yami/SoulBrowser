package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzhja {
    public static final zzhja b = new zzhja();

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8587a = new HashMap();

    public final synchronized void a(String str, zzhan zzhanVar) {
        try {
            HashMap hashMap = this.f8587a;
            if (hashMap.containsKey(str)) {
                if (((zzhan) hashMap.get(str)).equals(zzhanVar)) {
                    return;
                }
                String valueOf = String.valueOf(hashMap.get(str));
                String valueOf2 = String.valueOf(zzhanVar);
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 45 + valueOf.length() + 17 + valueOf2.length());
                sb.append("Parameters object with name ");
                sb.append(str);
                sb.append(" already exists (");
                sb.append(valueOf);
                sb.append("), cannot insert ");
                sb.append(valueOf2);
                throw new GeneralSecurityException(sb.toString());
            }
            hashMap.put(str, zzhanVar);
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void b(Map map) {
        for (Map.Entry entry : map.entrySet()) {
            a((String) entry.getKey(), (zzhan) entry.getValue());
        }
    }
}
