package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;
import java.lang.reflect.Method;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
final class zzgfg extends zzgfz {
    public final Map f;
    public final Context g;
    public final zzgba h;
    public final long i;
    public final long j;

    public zzgfg(zzavs zzavsVar, zzgev zzgevVar, Map map, Context context, zzgba zzgbaVar, zzgad zzgadVar, zzgnc zzgncVar) {
        super("psdxhJQzj8JPGxUndFNRSuISrw/zf4LHyLEfW3r2aQ42o49HP5NqkxdFySNU3Xfl", "izTl1LmxrTMVVIqTN/Y0k7CnXfH3YKnExw0TgvQ6jLg=", zzavsVar, zzgevVar, zzgncVar.a(113));
        this.g = context;
        this.f = map;
        this.h = zzgbaVar;
        this.i = zzgadVar.Q();
        this.j = zzgadVar.R();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzgfz
    public final void a(Method method, zzavs zzavsVar) {
        zzawp zzawpVar;
        int i = 2;
        Object[] objArr = (Object[]) method.invoke(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, this.g, Integer.valueOf(this.h.ordinal()));
        objArr.getClass();
        String str = "E";
        try {
            ListenableFuture listenableFuture = (ListenableFuture) this.f.get("gs");
            if (listenableFuture != null && ((Build.VERSION.SDK_INT < 31 || listenableFuture.isDone()) && (zzawpVar = (zzawp) listenableFuture.get(this.i, TimeUnit.MILLISECONDS)) != null && zzawpVar.y0().length() > 1)) {
                str = zzawpVar.y0();
            }
        } catch (ClassCastException | InterruptedException | ExecutionException | TimeoutException unused) {
        }
        if (str.equals("E")) {
            try {
                ListenableFuture listenableFuture2 = (ListenableFuture) this.f.get("ai");
                if (listenableFuture2 != null) {
                    String str2 = (String) listenableFuture2.get(this.j, TimeUnit.MILLISECONDS);
                    if (!zzgpz.a(str2)) {
                        str = str2;
                    }
                }
            } catch (ClassCastException | InterruptedException | ExecutionException | TimeoutException unused2) {
            }
        }
        Boolean bool = (Boolean) objArr[5];
        synchronized (zzavsVar) {
            try {
                long longValue = ((Long) objArr[0]).longValue();
                zzavsVar.k();
                ((zzawp) zzavsVar.f).I(longValue);
                String str3 = (String) objArr[1];
                zzavsVar.k();
                ((zzawp) zzavsVar.f).H(str3);
                String str4 = (String) objArr[2];
                zzavsVar.k();
                ((zzawp) zzavsVar.f).R(str4);
                String str5 = (String) objArr[3];
                zzavsVar.k();
                ((zzawp) zzavsVar.f).S(str5);
                zzgvy f = zzgvy.f8269c.f();
                byte[] bArr = (byte[]) objArr[4];
                String g = f.g(bArr, bArr.length);
                zzavsVar.k();
                ((zzawp) zzavsVar.f).D(g);
                zzavsVar.k();
                ((zzawp) zzavsVar.f).V0(str);
                if (bool != null) {
                    if (true != bool.booleanValue()) {
                        i = 1;
                    }
                    zzavsVar.k();
                    ((zzawp) zzavsVar.f).w0(i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
