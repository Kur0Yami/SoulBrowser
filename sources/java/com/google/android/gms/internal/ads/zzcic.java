package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.text.TextUtils;
import com.google.api.client.http.HttpMethods;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.SequenceInputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayDeque;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
final class zzcic extends zzgt implements zzhu {
    public static final Pattern v = Pattern.compile("^bytes (\\d+)-(\\d+)/(\\d+)$");
    public final int e;
    public final int f;
    public final String g;
    public final zzht h;
    public zzhf i;
    public HttpURLConnection j;
    public final ArrayDeque k;
    public InputStream l;
    public boolean m;
    public int n;
    public long o;
    public long p;
    public long q;
    public long r;
    public long s;
    public final long t;
    public final long u;

    public zzcic(String str, zzchz zzchzVar, int i, int i2, long j, long j2) {
        super(true);
        zzgqa.a(true ^ TextUtils.isEmpty(str));
        this.g = str;
        this.h = new zzht();
        this.e = i;
        this.f = i2;
        this.k = new ArrayDeque();
        this.t = j;
        this.u = j2;
        if (zzchzVar != null) {
            c(zzchzVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhb
    public final long a(zzhf zzhfVar) {
        this.i = zzhfVar;
        this.p = 0L;
        long j = zzhfVar.f8484c;
        long j2 = zzhfVar.d;
        long j3 = this.t;
        if (j2 != -1) {
            j3 = Math.min(j3, j2);
        }
        this.q = j;
        HttpURLConnection n = n(j, (j3 + j) - 1, 1);
        this.j = n;
        String headerField = n.getHeaderField("Content-Range");
        if (!TextUtils.isEmpty(headerField)) {
            Matcher matcher = v.matcher(headerField);
            if (matcher.find()) {
                try {
                    Long.parseLong(matcher.group(1));
                    long parseLong = Long.parseLong(matcher.group(2));
                    long parseLong2 = Long.parseLong(matcher.group(3));
                    if (j2 != -1) {
                        this.o = j2;
                        this.r = Math.max(parseLong, (this.q + j2) - 1);
                    } else {
                        this.o = parseLong2 - this.q;
                        this.r = parseLong2 - 1;
                    }
                    this.s = parseLong;
                    this.m = true;
                    e(zzhfVar);
                    return this.o;
                } catch (NumberFormatException unused) {
                    String q = android.support.v4.media.a.q(new StringBuilder(String.valueOf(headerField).length() + 27), "Unexpected Content-Range [", headerField, "]");
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzf(q);
                }
            }
        }
        throw new zzhq("Invalid content range: ".concat(String.valueOf(headerField)), 2000, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzj
    public final int b(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        try {
            long j = this.o;
            long j2 = this.p;
            if (j - j2 == 0) {
                return -1;
            }
            long j3 = this.q + j2;
            long j4 = i2;
            long j5 = j3 + j4 + this.u;
            long j6 = this.s;
            long j7 = j6 + 1;
            if (j5 > j7) {
                long j8 = this.r;
                if (j6 < j8) {
                    long min = Math.min(j8, Math.max(((this.t + j7) - r4) - 1, (j7 + j4) - 1));
                    n(j7, min, 2);
                    this.s = min;
                    j6 = min;
                }
            }
            int read = this.l.read(bArr, i, (int) Math.min(j4, ((j6 + 1) - this.q) - this.p));
            if (read != -1) {
                this.p += read;
                f(read);
                return read;
            }
            throw new EOFException();
        } catch (IOException e) {
            throw new zzhq(e, 2000, 2);
        }
    }

    public final HttpURLConnection n(long j, long j2, int i) {
        String uri = this.i.f8483a.toString();
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri).openConnection();
            httpURLConnection.setConnectTimeout(this.e);
            httpURLConnection.setReadTimeout(this.f);
            for (Map.Entry entry : this.h.a().entrySet()) {
                httpURLConnection.setRequestProperty((String) entry.getKey(), (String) entry.getValue());
            }
            StringBuilder sb = new StringBuilder(String.valueOf(j).length() + 7 + String.valueOf(j2).length());
            sb.append("bytes=");
            sb.append(j);
            sb.append("-");
            sb.append(j2);
            httpURLConnection.setRequestProperty("Range", sb.toString());
            httpURLConnection.setRequestProperty("User-Agent", this.g);
            httpURLConnection.setRequestProperty("Accept-Encoding", "identity");
            httpURLConnection.setRequestMethod(HttpMethods.GET);
            httpURLConnection.connect();
            this.k.add(httpURLConnection);
            String uri2 = this.i.f8483a.toString();
            try {
                int responseCode = httpURLConnection.getResponseCode();
                this.n = responseCode;
                if (responseCode >= 200 && responseCode <= 299) {
                    try {
                        InputStream inputStream = httpURLConnection.getInputStream();
                        if (this.l != null) {
                            inputStream = new SequenceInputStream(this.l, inputStream);
                        }
                        this.l = inputStream;
                        return httpURLConnection;
                    } catch (IOException e) {
                        o();
                        throw new zzhq(e, 2000, i);
                    }
                }
                httpURLConnection.getHeaderFields();
                o();
                int i2 = this.n;
                throw new zzhq(androidx.work.impl.workers.a.r(i2, "Response code: ", new StringBuilder(String.valueOf(i2).length() + 15)), 2000, i);
            } catch (IOException e2) {
                o();
                throw new zzhq("Unable to connect to ".concat(String.valueOf(uri2)), e2, 2000, i);
            }
        } catch (IOException e3) {
            throw new zzhq("Unable to connect to ".concat(String.valueOf(uri)), e3, 2000, i);
        }
    }

    public final void o() {
        while (true) {
            ArrayDeque arrayDeque = this.k;
            if (!arrayDeque.isEmpty()) {
                try {
                    ((HttpURLConnection) arrayDeque.remove()).disconnect();
                } catch (Exception e) {
                    int i = com.google.android.gms.ads.internal.util.zze.zza;
                    com.google.android.gms.ads.internal.util.client.zzo.zzg("Unexpected error while disconnecting", e);
                }
            } else {
                this.j = null;
                return;
            }
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
        try {
            InputStream inputStream = this.l;
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    throw new zzhq(e, 2000, 3);
                }
            }
        } finally {
            this.l = null;
            o();
            if (this.m) {
                this.m = false;
                g();
            }
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
