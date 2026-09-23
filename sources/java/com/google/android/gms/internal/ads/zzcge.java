package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.Collections;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;

/* loaded from: classes.dex */
public final class zzcge implements zzhb {

    /* renamed from: a, reason: collision with root package name */
    public final Context f5125a;
    public final zzhm b;

    /* renamed from: c, reason: collision with root package name */
    public final String f5126c;
    public final int d;
    public final boolean e;
    public InputStream f;
    public boolean g;
    public Uri h;
    public volatile zzbev i;
    public boolean j = false;
    public boolean k = false;
    public zzhf l;

    public zzcge(Context context, zzhm zzhmVar, String str, int i) {
        this.f5125a = context;
        this.b = zzhmVar;
        this.f5126c = str;
        this.d = i;
        new AtomicLong(-1L);
        this.e = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.u2)).booleanValue();
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final long a(zzhf zzhfVar) {
        Long l;
        if (!this.g) {
            this.g = true;
            Uri uri = zzhfVar.f8483a;
            this.h = uri;
            this.l = zzhfVar;
            this.i = zzbev.F(uri);
            boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h5)).booleanValue();
            zzbes zzbesVar = null;
            String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            if (booleanValue) {
                if (this.i != null) {
                    this.i.l = zzhfVar.f8484c;
                    zzbev zzbevVar = this.i;
                    String str2 = this.f5126c;
                    if (str2 != null) {
                        str = str2;
                    }
                    zzbevVar.m = str;
                    this.i.n = this.d;
                    if (this.i.k) {
                        l = (Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.j5);
                    } else {
                        l = (Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.i5);
                    }
                    long longValue = l.longValue();
                    com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime();
                    com.google.android.gms.ads.internal.zzt.zzz();
                    Future a2 = zzbfg.a(this.f5125a, this.i);
                    try {
                        try {
                            zzbfh zzbfhVar = (zzbfh) ((zzcdt) a2).f5072c.get(longValue, TimeUnit.MILLISECONDS);
                            zzbfhVar.getClass();
                            this.j = zzbfhVar.f4611c;
                            this.k = zzbfhVar.e;
                            if (!d()) {
                                this.f = zzbfhVar.f4610a;
                            }
                        } catch (InterruptedException unused) {
                            ((zzbez) a2).cancel(false);
                            Thread.currentThread().interrupt();
                        } catch (ExecutionException | TimeoutException unused2) {
                            ((zzbez) a2).cancel(false);
                        }
                    } catch (Throwable unused3) {
                    }
                    com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime();
                    throw null;
                }
            } else {
                if (this.i != null) {
                    this.i.l = zzhfVar.f8484c;
                    zzbev zzbevVar2 = this.i;
                    String str3 = this.f5126c;
                    if (str3 != null) {
                        str = str3;
                    }
                    zzbevVar2.m = str;
                    this.i.n = this.d;
                    zzbesVar = com.google.android.gms.ads.internal.zzt.zzj().b(this.i);
                }
                if (zzbesVar != null && zzbesVar.zza()) {
                    this.j = zzbesVar.k0();
                    this.k = zzbesVar.G();
                    if (!d()) {
                        this.f = zzbesVar.F();
                        return -1L;
                    }
                }
            }
            if (this.i != null) {
                zzhe zzheVar = new zzhe(zzhfVar);
                zzheVar.f8449a = Uri.parse(this.i.f4600c);
                this.l = zzheVar.a();
            }
            return this.b.a(this.l);
        }
        throw new IOException("Attempt to open an already open CacheDataSource.");
    }

    @Override // com.google.android.gms.internal.ads.zzj
    public final int b(byte[] bArr, int i, int i2) {
        if (this.g) {
            InputStream inputStream = this.f;
            if (inputStream != null) {
                return inputStream.read(bArr, i, i2);
            }
            return this.b.b(bArr, i, i2);
        }
        throw new IOException("Attempt to read closed CacheDataSource.");
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void c(zzhz zzhzVar) {
    }

    public final boolean d() {
        if (!this.e) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.k5)).booleanValue() && !this.j) {
            return true;
        }
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.l5)).booleanValue() || this.k) {
            return false;
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final Uri zzc() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zzd() {
        if (this.g) {
            this.g = false;
            this.h = null;
            InputStream inputStream = this.f;
            if (inputStream != null) {
                IOUtils.closeQuietly(inputStream);
                this.f = null;
                return;
            } else {
                this.b.zzd();
                return;
            }
        }
        throw new IOException("Attempt to close an already closed CacheDataSource.");
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final Map zzj() {
        return Collections.EMPTY_MAP;
    }
}
