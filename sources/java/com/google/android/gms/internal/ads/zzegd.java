package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.google.android.gms.ads.RequestConfiguration;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes.dex */
public final class zzegd implements zzflu {
    public static final Pattern d = Pattern.compile("([^;]+=[^;]+)(;\\s|$)", 2);

    /* renamed from: a, reason: collision with root package name */
    public final String f6472a;
    public final zzfne b;

    /* renamed from: c, reason: collision with root package name */
    public final zzfno f6473c;

    public zzegd(String str, zzfno zzfnoVar, zzfne zzfneVar) {
        this.f6472a = str;
        this.f6473c = zzfnoVar;
        this.b = zzfneVar;
    }

    @Override // com.google.android.gms.internal.ads.zzflu
    public final Object zza(Object obj) {
        zzebr zzebrVar;
        String str;
        JSONObject jSONObject;
        String str2;
        zzegc zzegcVar = (zzegc) obj;
        int optInt = zzegcVar.f6471a.optInt("http_timeout_millis", 60000);
        zzbzc zzbzcVar = zzegcVar.b;
        int i = zzbzcVar.g;
        String str3 = zzbzcVar.m;
        String str4 = zzbzcVar.f4981c;
        zzfne zzfneVar = this.b;
        zzfno zzfnoVar = this.f6473c;
        int i2 = 1;
        String str5 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (i == -2) {
            HashMap hashMap = new HashMap();
            if (zzbzcVar.e) {
                String str6 = this.f6472a;
                if (!TextUtils.isEmpty(str6)) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.t1)).booleanValue()) {
                        if (TextUtils.isEmpty(str6)) {
                            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                        } else {
                            Matcher matcher = d.matcher(str6);
                            str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                            while (matcher.find()) {
                                String group = matcher.group(i2);
                                if (group != null) {
                                    Locale locale = Locale.ROOT;
                                    if (group.toLowerCase(locale).startsWith("id=") || group.toLowerCase(locale).startsWith("ide=")) {
                                        if (!TextUtils.isEmpty(str2)) {
                                            str2 = str2.concat("; ");
                                        }
                                        str2 = str2.concat(group);
                                    }
                                }
                                i2 = 1;
                            }
                        }
                        if (!TextUtils.isEmpty(str2)) {
                            hashMap.put("Cookie", str2);
                        }
                    } else {
                        hashMap.put("Cookie", str6);
                    }
                }
            }
            if (zzbzcVar.d && (jSONObject = zzegcVar.f6471a) != null) {
                JSONObject optJSONObject = jSONObject.optJSONObject("pii");
                if (optJSONObject != null) {
                    if (!TextUtils.isEmpty(optJSONObject.optString("doritos", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED))) {
                        hashMap.put("x-afma-drt-cookie", optJSONObject.optString("doritos", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
                    }
                    if (!TextUtils.isEmpty(optJSONObject.optString("doritos_v2", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED))) {
                        hashMap.put("x-afma-drt-v2-cookie", optJSONObject.optString("doritos_v2", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
                    }
                } else {
                    com.google.android.gms.ads.internal.util.zze.zza("DSID signal does not exist.");
                }
            }
            byte[] bArr = new byte[0];
            if (!TextUtils.isEmpty(str4)) {
                byte[] bytes = str4.getBytes(StandardCharsets.UTF_8);
                if (zzbzcVar.l) {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                        try {
                            gZIPOutputStream.write(bytes);
                            gZIPOutputStream.finish();
                            bArr = byteArrayOutputStream.toByteArray();
                            gZIPOutputStream.close();
                        } finally {
                        }
                    } catch (IOException e) {
                        com.google.android.gms.ads.internal.util.zze.zzb("gzip compression failed, sending uncompressed.", e);
                        com.google.android.gms.ads.internal.zzt.zzh().f("PrepareRequestFunction.apply", e);
                        bArr = null;
                    }
                    if (bArr != null) {
                        hashMap.put(HttpConnection.CONTENT_ENCODING, "gzip");
                    }
                }
                bArr = bytes;
            }
            if (!TextUtils.isEmpty(str3)) {
                str = str3;
            } else {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            zzfneVar.zzd(true);
            zzfnoVar.a(zzfneVar);
            return new zzefy(zzbzcVar.f, optInt, hashMap, bArr, str);
        }
        if (i == 1) {
            List list = zzbzcVar.f4980a;
            if (list != null) {
                str5 = TextUtils.join(", ", list);
                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzf(str5);
            }
            zzebrVar = new zzebr(2, "Error building request URL: ".concat(String.valueOf(str5)));
        } else {
            zzebrVar = new zzebr(1);
        }
        zzfneVar.a(zzebrVar);
        zzfneVar.zzd(false);
        zzfnoVar.a(zzfneVar);
        throw zzebrVar;
    }
}
