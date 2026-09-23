package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Preconditions;
import java.util.Map;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes.dex */
public final class zzboi implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final zzeak f4803a;

    public zzboi(zzeak zzeakVar) {
        Preconditions.checkNotNull(zzeakVar, "The Inspector Manager must not be null");
        this.f4803a = zzeakVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        if (map != null && map.containsKey("extras")) {
            boolean containsKey = map.containsKey("expires");
            long j = LongCompanionObject.MAX_VALUE;
            if (containsKey) {
                try {
                    j = Long.parseLong((String) map.get("expires"));
                } catch (NumberFormatException unused) {
                }
            }
            zzeak zzeakVar = this.f4803a;
            String str = (String) map.get("extras");
            synchronized (zzeakVar) {
                zzeakVar.o = str;
                zzeakVar.q = j;
                zzeakVar.n();
            }
        }
    }
}
