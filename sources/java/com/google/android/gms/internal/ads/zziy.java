package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashMap;

/* loaded from: classes.dex */
final /* synthetic */ class zziy implements zzgqs {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Context f9031c;

    public /* synthetic */ zziy(Context context) {
        this.f9031c = context;
    }

    @Override // com.google.android.gms.internal.ads.zzgqs
    public final Object zza() {
        zzaap zzaapVar;
        Context applicationContext;
        Context context = this.f9031c;
        zzgtd zzgtdVar = zzaap.r;
        synchronized (zzaap.class) {
            try {
                if (zzaap.x == null) {
                    if (context == null) {
                        applicationContext = null;
                    } else {
                        applicationContext = context.getApplicationContext();
                    }
                    HashMap hashMap = new HashMap(8);
                    hashMap.put(0, 1000000L);
                    hashMap.put(2, -9223372036854775807L);
                    hashMap.put(3, -9223372036854775807L);
                    hashMap.put(4, -9223372036854775807L);
                    hashMap.put(5, -9223372036854775807L);
                    hashMap.put(10, -9223372036854775807L);
                    hashMap.put(9, -9223372036854775807L);
                    hashMap.put(7, -9223372036854775807L);
                    zzaap.x = new zzaap(applicationContext, hashMap);
                }
                zzaapVar = zzaap.x;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzaapVar;
    }
}
