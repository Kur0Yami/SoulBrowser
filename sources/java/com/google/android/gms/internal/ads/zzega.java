package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.util.IOUtils;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes.dex */
public final class zzega implements zzflu {

    /* renamed from: a, reason: collision with root package name */
    public final Context f6469a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f6470c;

    public zzega(Context context, String str, String str2) {
        this.f6469a = context;
        this.b = str;
        this.f6470c = str2;
    }

    /* JADX WARN: Type inference failed for: r5v0, types: [com.google.android.gms.internal.ads.zzefz, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzflu
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public final zzefz zza(zzefy zzefyVar) {
        zzefz zzefzVar;
        long j;
        String str;
        int responseCode;
        InputStreamReader inputStreamReader;
        BufferedOutputStream bufferedOutputStream;
        zzega zzegaVar = this;
        String str2 = zzefyVar.f6463a;
        int i = zzefyVar.b;
        HashMap hashMap = zzefyVar.f6464c;
        byte[] bArr = zzefyVar.d;
        String str3 = zzefyVar.e;
        long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime();
        String str4 = "Received error HTTP response code: ";
        try {
            ?? obj = new Object();
            obj.f6465a = 0;
            obj.b = new HashMap();
            obj.f6466c = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            obj.d = -1L;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.X2)).booleanValue() && com.google.android.gms.ads.internal.client.zzbb.zze()) {
                obj.f6465a = 410;
                return obj;
            }
            zzefz zzefzVar2 = obj;
            String str5 = zzegaVar.b;
            StringBuilder sb = new StringBuilder(String.valueOf(str5).length() + 13);
            sb.append("SDK version: ");
            sb.append(str5);
            String sb2 = sb.toString();
            int i2 = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzh(sb2);
            StringBuilder sb3 = new StringBuilder(String.valueOf(str2).length() + 39);
            sb3.append("AdRequestServiceImpl: Sending request: ");
            sb3.append(str2);
            com.google.android.gms.ads.internal.util.client.zzo.zzd(sb3.toString());
            URL url = new URL(str2);
            HashMap hashMap2 = new HashMap();
            int i3 = 0;
            while (true) {
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                String str6 = zzegaVar.f6470c;
                if (str6 != null) {
                    httpURLConnection.setRequestMethod(str6);
                }
                zzefz zzefzVar3 = zzefzVar2;
                try {
                    try {
                        str = str4;
                        HashMap hashMap3 = hashMap;
                        zzefzVar = zzefzVar3;
                        j = elapsedRealtime;
                        try {
                            com.google.android.gms.ads.internal.zzt.zzc().zzb(zzegaVar.f6469a, str5, false, httpURLConnection, false, i);
                            for (Map.Entry entry : hashMap3.entrySet()) {
                                httpURLConnection.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                            }
                            if (!TextUtils.isEmpty(str3)) {
                                httpURLConnection.setRequestProperty(HttpConnection.CONTENT_TYPE, str3);
                            }
                            BufferedOutputStream bufferedOutputStream2 = null;
                            com.google.android.gms.ads.internal.util.client.zzl zzlVar = new com.google.android.gms.ads.internal.util.client.zzl(null);
                            try {
                                zzlVar.zza(httpURLConnection, bArr);
                            } catch (Throwable th) {
                                com.google.android.gms.ads.internal.util.client.zzo.zzg("Network request logging failed.", th);
                                com.google.android.gms.ads.internal.zzt.zzh().g("HttpRequestFunction.logAdRequest", th);
                            }
                            int length = bArr.length;
                            int i4 = 1;
                            if (length > 0) {
                                httpURLConnection.setDoOutput(true);
                                httpURLConnection.setFixedLengthStreamingMode(length);
                                try {
                                    bufferedOutputStream = new BufferedOutputStream(httpURLConnection.getOutputStream());
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                                try {
                                    bufferedOutputStream.write(bArr);
                                    IOUtils.closeQuietly(bufferedOutputStream);
                                } catch (Throwable th3) {
                                    th = th3;
                                    bufferedOutputStream2 = bufferedOutputStream;
                                    IOUtils.closeQuietly(bufferedOutputStream2);
                                    throw th;
                                }
                            }
                            responseCode = httpURLConnection.getResponseCode();
                            for (Map.Entry<String, List<String>> entry2 : httpURLConnection.getHeaderFields().entrySet()) {
                                String key = entry2.getKey();
                                List<String> value = entry2.getValue();
                                if (hashMap2.containsKey(key)) {
                                    ((List) hashMap2.get(key)).addAll(value);
                                } else {
                                    hashMap2.put(key, new ArrayList(value));
                                    i4 = i4;
                                }
                            }
                            int i5 = i4;
                            zzlVar.zzc(httpURLConnection, responseCode);
                            zzefzVar.f6465a = responseCode;
                            zzefzVar.b = hashMap2;
                            zzefzVar.f6466c = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                            if (responseCode >= 200 && responseCode < 300) {
                                try {
                                    InputStreamReader inputStreamReader2 = new InputStreamReader(httpURLConnection.getInputStream());
                                    try {
                                        com.google.android.gms.ads.internal.zzt.zzc();
                                        StringBuilder sb4 = new StringBuilder(8192);
                                        char[] cArr = new char[2048];
                                        while (true) {
                                            int read = inputStreamReader2.read(cArr);
                                            if (read == -1) {
                                                break;
                                            }
                                            sb4.append(cArr, 0, read);
                                        }
                                        String sb5 = sb4.toString();
                                        IOUtils.closeQuietly(inputStreamReader2);
                                        zzlVar.zze(sb5);
                                        zzefzVar.f6466c = sb5;
                                        if (TextUtils.isEmpty(sb5)) {
                                            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.u6)).booleanValue()) {
                                                throw new zzebr(3);
                                            }
                                        }
                                        zzefzVar.d = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - j;
                                    } catch (Throwable th4) {
                                        th = th4;
                                        inputStreamReader = inputStreamReader2;
                                        IOUtils.closeQuietly(inputStreamReader);
                                        throw th;
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    inputStreamReader = null;
                                }
                            } else {
                                if (responseCode < 300 || responseCode >= 400) {
                                    break;
                                }
                                String headerField = httpURLConnection.getHeaderField("Location");
                                if (!TextUtils.isEmpty(headerField)) {
                                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.V8)).booleanValue()) {
                                        try {
                                            url = new URI(headerField).toURL();
                                        } catch (URISyntaxException e) {
                                            throw new zzebr(e.getMessage(), e);
                                        }
                                    } else {
                                        url = new URL(headerField);
                                    }
                                    int i6 = i3 + 1;
                                    if (i6 <= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.d6)).intValue()) {
                                        httpURLConnection.disconnect();
                                        str4 = str;
                                        i3 = i6;
                                        zzefzVar2 = zzefzVar;
                                        hashMap = hashMap3;
                                        elapsedRealtime = j;
                                        zzegaVar = this;
                                    } else {
                                        com.google.android.gms.ads.internal.util.client.zzo.zzi("Too many redirects.");
                                        throw new zzebr(i5, "Too many redirects");
                                    }
                                } else {
                                    com.google.android.gms.ads.internal.util.client.zzo.zzi("No location header to follow redirect.");
                                    throw new zzebr(1, "No location header to follow redirect");
                                }
                            }
                        } catch (zzebr e2) {
                            e = e2;
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z9)).booleanValue()) {
                                zzefzVar.d = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - j;
                                httpURLConnection.disconnect();
                                return zzefzVar;
                            }
                            throw e;
                        }
                    } catch (zzebr e3) {
                        e = e3;
                        zzefzVar = zzefzVar3;
                        j = elapsedRealtime;
                    }
                } finally {
                    httpURLConnection.disconnect();
                }
            }
            StringBuilder sb6 = new StringBuilder(String.valueOf(responseCode).length() + 35);
            sb6.append(str);
            sb6.append(responseCode);
            com.google.android.gms.ads.internal.util.client.zzo.zzi(sb6.toString());
            StringBuilder sb7 = new StringBuilder(String.valueOf(responseCode).length() + 35);
            sb7.append(str);
            sb7.append(responseCode);
            throw new zzebr(1, sb7.toString());
        } catch (IOException e4) {
            String valueOf = String.valueOf(e4.getMessage());
            int i7 = com.google.android.gms.ads.internal.util.zze.zza;
            String concat = "Error while connecting to ad server: ".concat(valueOf);
            com.google.android.gms.ads.internal.util.client.zzo.zzi(concat);
            throw new zzebr(concat, e4);
        }
    }
}
