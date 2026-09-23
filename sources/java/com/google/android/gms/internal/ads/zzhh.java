package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzhh implements zzhb {

    /* renamed from: a, reason: collision with root package name */
    public final Context f8541a;
    public final ArrayList b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final zzhm f8542c;
    public zzho d;
    public zzgs e;
    public zzgy f;
    public zzhb g;
    public zzib h;
    public zzgz i;
    public zzhx j;
    public zzhb k;

    public zzhh(Context context, zzhm zzhmVar) {
        this.f8541a = context.getApplicationContext();
        this.f8542c = zzhmVar;
    }

    public static final void e(zzhb zzhbVar, zzhz zzhzVar) {
        if (zzhbVar != null) {
            zzhbVar.c(zzhzVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [com.google.android.gms.internal.ads.zzgt, com.google.android.gms.internal.ads.zzhb, com.google.android.gms.internal.ads.zzgz] */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.zzgt, com.google.android.gms.internal.ads.zzhb, com.google.android.gms.internal.ads.zzho] */
    @Override // com.google.android.gms.internal.ads.zzhb
    public final long a(zzhf zzhfVar) {
        boolean z;
        if (this.k == null) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.f(z);
        Uri uri = zzhfVar.f8483a;
        String scheme = uri.getScheme();
        String str = zzfj.f7405a;
        String scheme2 = uri.getScheme();
        boolean isEmpty = TextUtils.isEmpty(scheme2);
        Context context = this.f8541a;
        if (!isEmpty && !Objects.equals(scheme2, "file")) {
            if ("asset".equals(scheme)) {
                if (this.e == null) {
                    zzgs zzgsVar = new zzgs(context);
                    this.e = zzgsVar;
                    d(zzgsVar);
                }
                this.k = this.e;
            } else if ("content".equals(scheme)) {
                if (this.f == null) {
                    zzgy zzgyVar = new zzgy(context);
                    this.f = zzgyVar;
                    d(zzgyVar);
                }
                this.k = this.f;
            } else {
                boolean equals = "rtmp".equals(scheme);
                zzhm zzhmVar = this.f8542c;
                if (equals) {
                    if (this.g == null) {
                        try {
                            zzhb zzhbVar = (zzhb) Class.forName("androidx.media3.datasource.rtmp.RtmpDataSource").getConstructor(null).newInstance(null);
                            this.g = zzhbVar;
                            d(zzhbVar);
                        } catch (ClassNotFoundException unused) {
                            zzee.c("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
                        } catch (Exception e) {
                            throw new RuntimeException("Error instantiating RTMP extension", e);
                        }
                        if (this.g == null) {
                            this.g = zzhmVar;
                        }
                    }
                    this.k = this.g;
                } else if ("udp".equals(scheme)) {
                    if (this.h == null) {
                        zzib zzibVar = new zzib();
                        this.h = zzibVar;
                        d(zzibVar);
                    }
                    this.k = this.h;
                } else if ("data".equals(scheme)) {
                    if (this.i == null) {
                        ?? zzgtVar = new zzgt(false);
                        this.i = zzgtVar;
                        d(zzgtVar);
                    }
                    this.k = this.i;
                } else if (!"rawresource".equals(scheme) && !"android.resource".equals(scheme)) {
                    this.k = zzhmVar;
                } else {
                    if (this.j == null) {
                        zzhx zzhxVar = new zzhx(context);
                        this.j = zzhxVar;
                        d(zzhxVar);
                    }
                    this.k = this.j;
                }
            }
        } else {
            String path = uri.getPath();
            if (path != null && path.startsWith("/android_asset/")) {
                if (this.e == null) {
                    zzgs zzgsVar2 = new zzgs(context);
                    this.e = zzgsVar2;
                    d(zzgsVar2);
                }
                this.k = this.e;
            } else {
                if (this.d == null) {
                    ?? zzgtVar2 = new zzgt(false);
                    this.d = zzgtVar2;
                    d(zzgtVar2);
                }
                this.k = this.d;
            }
        }
        return this.k.a(zzhfVar);
    }

    @Override // com.google.android.gms.internal.ads.zzj
    public final int b(byte[] bArr, int i, int i2) {
        zzhb zzhbVar = this.k;
        zzhbVar.getClass();
        return zzhbVar.b(bArr, i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void c(zzhz zzhzVar) {
        zzhzVar.getClass();
        this.f8542c.c(zzhzVar);
        this.b.add(zzhzVar);
        e(this.d, zzhzVar);
        e(this.e, zzhzVar);
        e(this.f, zzhzVar);
        e(this.g, zzhzVar);
        e(this.h, zzhzVar);
        e(this.i, zzhzVar);
        e(this.j, zzhzVar);
    }

    public final void d(zzhb zzhbVar) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.b;
            if (i < arrayList.size()) {
                zzhbVar.c((zzhz) arrayList.get(i));
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final Uri zzc() {
        zzhb zzhbVar = this.k;
        if (zzhbVar == null) {
            return null;
        }
        return zzhbVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zzd() {
        zzhb zzhbVar = this.k;
        if (zzhbVar != null) {
            try {
                zzhbVar.zzd();
            } finally {
                this.k = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final Map zzj() {
        zzhb zzhbVar = this.k;
        if (zzhbVar == null) {
            return Collections.EMPTY_MAP;
        }
        return zzhbVar.zzj();
    }
}
