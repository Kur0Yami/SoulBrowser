package com.google.android.gms.internal.ads;

import android.content.pm.ApkChecksum;
import android.content.pm.PackageManager$OnChecksumsReadyListener;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.List;

/* loaded from: classes.dex */
public final class zzaxl implements PackageManager$OnChecksumsReadyListener {

    /* renamed from: a, reason: collision with root package name */
    public final zzgzf f4451a = new Object();

    public final void onChecksumsReady(List list) {
        if (list == null) {
            this.f4451a.c(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            return;
        }
        try {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                ApkChecksum c2 = androidx.privacysandbox.ads.adservices.topics.a.c(list.get(i));
                if (c2.getType() == 8) {
                    zzgzf zzgzfVar = this.f4451a;
                    zzgvy f = zzgvy.f8269c.f();
                    byte[] value = c2.getValue();
                    zzgzfVar.c(f.g(value, value.length));
                    return;
                }
            }
        } catch (Throwable unused) {
        }
        this.f4451a.c(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }
}
