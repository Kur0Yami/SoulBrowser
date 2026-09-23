package com.google.android.gms.ads.internal.util.client;

import android.content.Context;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbxv;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

/* loaded from: classes.dex */
public final class zzu implements zze {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3089a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public String f3090c;

    public zzu(Context context, @Nullable String str) {
        this.f3089a = context;
        this.b = str;
    }

    public final URL a(String str) {
        URL url = null;
        try {
            url = new URI(str).toURL();
        } catch (IllegalArgumentException e) {
            e = e;
            b(e, str);
        } catch (MalformedURLException e2) {
            e = e2;
            b(e, str);
        } catch (URISyntaxException e3) {
            b(e3, str);
            if (((Boolean) zzbd.zzc().a(zzbgk.f)).booleanValue()) {
                try {
                    zzo.zzd("Attempting to parse components, encode, and reconstruct URI.");
                    URL url2 = new URL(str);
                    URI uri = new URI(url2.getProtocol(), url2.getUserInfo(), url2.getHost(), url2.getPort(), url2.getPath(), url2.getQuery(), url2.getRef());
                    url = uri.toURL();
                    String obj = uri.toString();
                    StringBuilder sb = new StringBuilder(str.length() + 114 + obj.length());
                    sb.append("Successfully constructed URL after component encoding via new URI(parts).toURL() for original: \"");
                    sb.append(str);
                    sb.append("\" -> encoded URI: ");
                    sb.append(obj);
                    zzo.zzd(sb.toString());
                } catch (IllegalArgumentException | MalformedURLException | URISyntaxException e4) {
                    b(e4, str);
                }
            }
        }
        if (url == null) {
            StringBuilder sb2 = new StringBuilder(str.length() + 47);
            sb2.append("Falling back to direct new URL(\"");
            sb2.append(str);
            sb2.append("\") constructor.");
            zzo.zzd(sb2.toString());
            return new URL(str);
        }
        return url;
    }

    public final void b(Exception exc, String str) {
        String message = exc.getMessage();
        StringBuilder sb = new StringBuilder(str.length() + 32 + String.valueOf(message).length());
        sb.append("Error while parsing ping URL: ");
        sb.append(str);
        sb.append(". ");
        sb.append(message);
        zzo.zzi(sb.toString());
        zzbxv.c(this.f3089a).b(exc, "HttpUrlPinger.pingUrl", ((Integer) zzbd.zzc().a(zzbgk.de)).intValue() / 100.0f);
    }

    @Override // com.google.android.gms.ads.internal.util.client.zze
    @WorkerThread
    public final zzt zza(String str) {
        return zzc(str, null);
    }

    @Nullable
    public final String zzb() {
        return this.f3090c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:60:0x0163, code lost:
    
        if (com.google.android.gms.common.util.ClientLibraryUtils.isPackageSide() != false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x016d, code lost:
    
        if (com.google.android.gms.common.util.ClientLibraryUtils.isPackageSide() != false) goto L63;
     */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0129 A[RETURN] */
    @androidx.annotation.WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.ads.internal.util.client.zzt zzc(java.lang.String r10, @androidx.annotation.Nullable java.util.Map r11) {
        /*
            Method dump skipped, instructions count: 382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.client.zzu.zzc(java.lang.String, java.util.Map):com.google.android.gms.ads.internal.util.client.zzt");
    }
}
