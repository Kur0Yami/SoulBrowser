package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.HttpURLConnection;
import java.util.HashSet;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import java.util.regex.Pattern;
import javax.net.ssl.SSLSocketFactory;
import kotlin.io.ConstantsKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzchi extends zzgt implements zzhu {
    public static final Pattern t = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    public static final AtomicReference u = new AtomicReference();
    public final SSLSocketFactory e;
    public final int f;
    public final int g;
    public final String h;
    public final zzht i;
    public HttpURLConnection j;
    public InputStream k;
    public boolean l;
    public int m;
    public long n;
    public long o;
    public long p;
    public long q;
    public int r;
    public final HashSet s;

    public zzchi(String str, zzchz zzchzVar, int i, int i2, int i3) {
        super(true);
        this.e = new zzchh(this);
        this.s = new HashSet();
        zzgqa.a(true ^ TextUtils.isEmpty(str));
        this.h = str;
        this.i = new zzht();
        this.f = i;
        this.g = i2;
        this.r = i3;
        if (zzchzVar != null) {
            c(zzchzVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x028f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:63:0x016f  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0230  */
    /* JADX WARN: Removed duplicated region for block: B:88:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0261 A[Catch: IOException -> 0x003d, TryCatch #3 {IOException -> 0x003d, blocks: (B:3:0x000c, B:4:0x001e, B:6:0x0026, B:8:0x0034, B:9:0x0040, B:10:0x0058, B:12:0x005e, B:19:0x0088, B:21:0x00ab, B:22:0x00d1, B:23:0x00d6, B:37:0x010c, B:93:0x0254, B:95:0x0261, B:97:0x0272, B:103:0x027b, B:104:0x0288, B:107:0x028f, B:108:0x0296, B:113:0x0297, B:114:0x02b4), top: B:2:0x000c }] */
    @Override // com.google.android.gms.internal.ads.zzhb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(com.google.android.gms.internal.ads.zzhf r25) {
        /*
            Method dump skipped, instructions count: 716
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzchi.a(com.google.android.gms.internal.ads.zzhf):long");
    }

    @Override // com.google.android.gms.internal.ads.zzj
    public final int b(byte[] bArr, int i, int i2) {
        try {
            if (this.p != this.n) {
                AtomicReference atomicReference = u;
                byte[] bArr2 = (byte[]) atomicReference.getAndSet(null);
                if (bArr2 == null) {
                    bArr2 = new byte[ConstantsKt.DEFAULT_BLOCK_SIZE];
                }
                while (true) {
                    long j = this.p;
                    long j2 = this.n;
                    if (j != j2) {
                        int read = this.k.read(bArr2, 0, (int) Math.min(j2 - j, bArr2.length));
                        if (!Thread.interrupted()) {
                            if (read != -1) {
                                this.p += read;
                                f(read);
                            } else {
                                throw new EOFException();
                            }
                        } else {
                            throw new InterruptedIOException();
                        }
                    } else {
                        atomicReference.set(bArr2);
                        break;
                    }
                }
            }
            if (i2 == 0) {
                return 0;
            }
            long j3 = this.o;
            if (j3 != -1) {
                long j4 = j3 - this.q;
                if (j4 == 0) {
                    return -1;
                }
                i2 = (int) Math.min(i2, j4);
            }
            int read2 = this.k.read(bArr, i, i2);
            if (read2 == -1) {
                if (this.o != -1) {
                    throw new EOFException();
                }
                return -1;
            }
            this.q += read2;
            f(read2);
            return read2;
        } catch (IOException e) {
            throw new zzhq(e, 2000, 2);
        }
    }

    public final void n() {
        HttpURLConnection httpURLConnection = this.j;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unexpected error while disconnecting", e);
            }
            this.j = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.j;
        if (httpURLConnection == null) {
            return null;
        }
        return Uri.parse(httpURLConnection.getURL().toString());
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zzd() {
        HashSet hashSet = this.s;
        try {
            InputStream inputStream = this.k;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    throw new zzhq(e, 2000, 3);
                }
            }
        } finally {
            this.k = null;
            n();
            if (this.l) {
                this.l = false;
                g();
            }
            hashSet.clear();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgt, com.google.android.gms.internal.ads.zzhb
    public final Map zzj() {
        HttpURLConnection httpURLConnection = this.j;
        if (httpURLConnection == null) {
            return null;
        }
        return httpURLConnection.getHeaderFields();
    }
}
