package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class zzgfo extends zzgfz {
    public static volatile Long f;
    public static final Object g = new Object();

    @Override // com.google.android.gms.internal.ads.zzgfz
    public final void a(Method method, zzavs zzavsVar) {
        if (f == null) {
            synchronized (g) {
                try {
                    if (f == null) {
                        Long l = (Long) method.invoke(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, null);
                        if (l != null) {
                            f = l;
                        } else {
                            throw null;
                        }
                    }
                } finally {
                }
            }
        }
        synchronized (zzavsVar) {
            try {
                if (f != null) {
                    long longValue = f.longValue();
                    zzavsVar.k();
                    ((zzawp) zzavsVar.f).T0(longValue);
                }
            } finally {
            }
        }
    }
}
