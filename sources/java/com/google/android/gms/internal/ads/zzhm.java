package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzhm extends zzgt implements zzhu {
    public final boolean e;
    public final int f;
    public final int g;
    public final String h;
    public final zzht i;
    public final zzht j;
    public zzhf k;
    public HttpURLConnection l;
    public InputStream m;
    public boolean n;
    public int o;
    public long p;
    public long q;

    public /* synthetic */ zzhm(String str, int i, int i2, boolean z, zzht zzhtVar) {
        super(true);
        this.h = str;
        this.f = i;
        this.g = i2;
        this.e = z;
        this.i = zzhtVar;
        this.j = new zzht();
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x0270  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x01c6 A[Catch: IOException -> 0x01d1, TRY_LEAVE, TryCatch #3 {IOException -> 0x01d1, blocks: (B:24:0x01be, B:26:0x01c6), top: B:23:0x01be }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01b3  */
    @Override // com.google.android.gms.internal.ads.zzhb
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long a(com.google.android.gms.internal.ads.zzhf r27) {
        /*
            Method dump skipped, instructions count: 742
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhm.a(com.google.android.gms.internal.ads.zzhf):long");
    }

    @Override // com.google.android.gms.internal.ads.zzj
    public final int b(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        try {
            long j = this.p;
            if (j != -1) {
                long j2 = j - this.q;
                if (j2 == 0) {
                    return -1;
                }
                i2 = (int) Math.min(i2, j2);
            }
            InputStream inputStream = this.m;
            String str = zzfj.f7405a;
            int read = inputStream.read(bArr, i, i2);
            if (read != -1) {
                this.q += read;
                f(read);
                return read;
            }
            return -1;
        } catch (IOException e) {
            String str2 = zzfj.f7405a;
            throw zzhq.a(e, 2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.net.HttpURLConnection n(java.net.URL r5, long r6, long r8, boolean r10, boolean r11, java.util.Map r12) {
        /*
            r4 = this;
            java.net.URLConnection r5 = r5.openConnection()
            java.net.HttpURLConnection r5 = (java.net.HttpURLConnection) r5
            int r0 = r4.f
            r5.setConnectTimeout(r0)
            int r0 = r4.g
            r5.setReadTimeout(r0)
            java.util.HashMap r0 = new java.util.HashMap
            r0.<init>()
            com.google.android.gms.internal.ads.zzht r1 = r4.i
            java.util.Map r1 = r1.a()
            r0.putAll(r1)
            com.google.android.gms.internal.ads.zzht r1 = r4.j
            java.util.Map r1 = r1.a()
            r0.putAll(r1)
            r0.putAll(r12)
            java.util.Set r12 = r0.entrySet()
            java.util.Iterator r12 = r12.iterator()
        L32:
            boolean r0 = r12.hasNext()
            if (r0 == 0) goto L4e
            java.lang.Object r0 = r12.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            java.lang.Object r1 = r0.getKey()
            java.lang.String r1 = (java.lang.String) r1
            java.lang.Object r0 = r0.getValue()
            java.lang.String r0 = (java.lang.String) r0
            r5.setRequestProperty(r1, r0)
            goto L32
        L4e:
            r0 = 0
            int r12 = (r6 > r0 ? 1 : (r6 == r0 ? 0 : -1))
            r2 = -1
            if (r12 != 0) goto L5d
            int r6 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r6 != 0) goto L5c
            r6 = 0
            goto L79
        L5c:
            r6 = r0
        L5d:
            java.lang.StringBuilder r12 = new java.lang.StringBuilder
            java.lang.String r0 = "bytes="
            r12.<init>(r0)
            r12.append(r6)
            java.lang.String r0 = "-"
            r12.append(r0)
            int r0 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r0 == 0) goto L75
            long r6 = r6 + r8
            long r6 = r6 + r2
            r12.append(r6)
        L75:
            java.lang.String r6 = r12.toString()
        L79:
            if (r6 == 0) goto L80
            java.lang.String r7 = "Range"
            r5.setRequestProperty(r7, r6)
        L80:
            java.lang.String r6 = r4.h
            if (r6 == 0) goto L89
            java.lang.String r7 = "User-Agent"
            r5.setRequestProperty(r7, r6)
        L89:
            r6 = 1
            if (r6 == r10) goto L8f
            java.lang.String r6 = "identity"
            goto L91
        L8f:
            java.lang.String r6 = "gzip"
        L91:
            java.lang.String r7 = "Accept-Encoding"
            r5.setRequestProperty(r7, r6)
            r5.setInstanceFollowRedirects(r11)
            r6 = 0
            r5.setDoOutput(r6)
            int r6 = com.google.android.gms.internal.ads.zzhf.f
            java.lang.String r6 = "GET"
            r5.setRequestMethod(r6)
            r5.connect()
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhm.n(java.net.URL, long, long, boolean, boolean, java.util.Map):java.net.HttpURLConnection");
    }

    public final URL o(URL url, String str) {
        if (str != null) {
            try {
                URL url2 = new URL(url, str);
                String protocol = url2.getProtocol();
                if (!"https".equals(protocol) && !"http".equals(protocol)) {
                    throw new zzhq("Unsupported protocol redirect: ".concat(String.valueOf(protocol)), 2001, 1);
                }
                if (!this.e && !protocol.equals(url.getProtocol())) {
                    String protocol2 = url.getProtocol();
                    StringBuilder sb = new StringBuilder(androidx.work.impl.workers.a.d(androidx.work.impl.workers.a.e(40, protocol2), 1, protocol));
                    sb.append("Disallowed cross-protocol redirect (");
                    sb.append(protocol2);
                    sb.append(" to ");
                    sb.append(protocol);
                    sb.append(")");
                    throw new zzhq(sb.toString(), 2001, 1);
                }
                return url2;
            } catch (MalformedURLException e) {
                throw new zzhq(e, 2001, 1);
            }
        }
        throw new zzhq("Null location redirect", 2001, 1);
    }

    public final void p() {
        HttpURLConnection httpURLConnection = this.l;
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
                zzee.f("DefaultHttpDataSource", "Unexpected error while disconnecting", e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final Uri zzc() {
        HttpURLConnection httpURLConnection = this.l;
        if (httpURLConnection != null) {
            return Uri.parse(httpURLConnection.getURL().toString());
        }
        zzhf zzhfVar = this.k;
        if (zzhfVar != null) {
            return zzhfVar.f8483a;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzhb
    public final void zzd() {
        try {
            InputStream inputStream = this.m;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    String str = zzfj.f7405a;
                    throw new zzhq(e, 2000, 3);
                }
            }
        } finally {
            this.m = null;
            p();
            if (this.n) {
                this.n = false;
                g();
            }
            this.l = null;
            this.k = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgt, com.google.android.gms.internal.ads.zzhb
    public final Map zzj() {
        HttpURLConnection httpURLConnection = this.l;
        if (httpURLConnection == null) {
            return zzgvd.k;
        }
        return new zzhl(httpURLConnection.getHeaderFields());
    }
}
