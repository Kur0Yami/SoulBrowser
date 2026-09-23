package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
final class zzgfu extends zzgfz {
    public final Context f;
    public final Map g;

    public zzgfu(zzavs zzavsVar, zzgev zzgevVar, Map map, Context context, zzgnc zzgncVar) {
        super("7lU8u/acj3glwX97dsCp50xaNaDZf5AvZZ8CZCZNZxVmN9GtRvkGNhtjwrrwJvh7", "R2aDW6OJL1JMomVNIKoK9g6amqmi0+KEXVHpRQdnX+U=", zzavsVar, zzgevVar, zzgncVar.a(120));
        this.f = context;
        this.g = map;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzgfz
    public final void a(Method method, zzavs zzavsVar) {
        Long l = -1L;
        try {
            if (Build.VERSION.SDK_INT >= 30) {
                Long l2 = (Long) method.invoke(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, this.f);
                if (l2 != null) {
                    l = l2;
                } else {
                    throw null;
                }
            } else {
                ListenableFuture listenableFuture = (ListenableFuture) this.g.get("gs");
                if (listenableFuture != null && listenableFuture.isDone()) {
                    l = Long.valueOf(((zzawp) listenableFuture.get()).B0());
                }
            }
        } catch (InterruptedException | ExecutionException unused) {
        }
        synchronized (zzavsVar) {
            long longValue = l.longValue();
            zzavsVar.k();
            ((zzawp) zzavsVar.f).f0(longValue);
        }
    }
}
