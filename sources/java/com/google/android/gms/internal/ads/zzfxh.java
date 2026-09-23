package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzfxh extends zzfwv {

    /* renamed from: c, reason: collision with root package name */
    public zzgqs f7710c;
    public zzgqs f;
    public zzfwx g;
    public HttpURLConnection h;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzgqs, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.ads.zzgqs, java.lang.Object] */
    public final HttpURLConnection a(zzfwx zzfwxVar) {
        this.f7710c = new Object();
        this.f = new Object();
        this.g = zzfwxVar;
        ((Integer) this.f.zza()).getClass();
        zzfwx zzfwxVar2 = this.g;
        zzfwxVar2.getClass();
        Set set = zzcha.j;
        com.google.android.gms.ads.internal.zzt.zzq();
        int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h0)).intValue();
        URL url = new URL(((zzcgz) zzfwxVar2).f5143a);
        int i = 0;
        while (true) {
            i++;
            if (i <= 20) {
                URLConnection openConnection = url.openConnection();
                openConnection.setConnectTimeout(intValue);
                openConnection.setReadTimeout(intValue);
                if (openConnection instanceof HttpURLConnection) {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
                    com.google.android.gms.ads.internal.util.client.zzl zzlVar = new com.google.android.gms.ads.internal.util.client.zzl(null);
                    zzlVar.zza(httpURLConnection, null);
                    httpURLConnection.setInstanceFollowRedirects(false);
                    int responseCode = httpURLConnection.getResponseCode();
                    zzlVar.zzc(httpURLConnection, responseCode);
                    if (responseCode / 100 == 3) {
                        String headerField = httpURLConnection.getHeaderField("Location");
                        if (headerField != null) {
                            URL url2 = new URL(url, headerField);
                            String protocol = url2.getProtocol();
                            if (protocol != null) {
                                if (!protocol.equals("http") && !protocol.equals("https")) {
                                    throw new IOException("Unsupported scheme: ".concat(protocol));
                                }
                                String concat = "Redirecting to ".concat(headerField);
                                int i2 = com.google.android.gms.ads.internal.util.zze.zza;
                                com.google.android.gms.ads.internal.util.client.zzo.zzd(concat);
                                httpURLConnection.disconnect();
                                url = url2;
                            } else {
                                throw new IOException("Protocol is null");
                            }
                        } else {
                            throw new IOException("Missing Location header in redirect");
                        }
                    } else {
                        this.h = httpURLConnection;
                        return httpURLConnection;
                    }
                } else {
                    throw new IOException("Invalid protocol.");
                }
            } else {
                throw new IOException("Too many redirects (20)");
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        HttpURLConnection httpURLConnection = this.h;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }
}
