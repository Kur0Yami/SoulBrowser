package com.google.android.gms.ads.internal.util.client;

import android.util.JsonWriter;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.api.client.http.HttpMethods;
import java.io.IOException;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes.dex */
public final class zzl {

    /* renamed from: c, reason: collision with root package name */
    public static boolean f3081c = false;
    public static boolean d = false;
    public static final /* synthetic */ int zza = 0;

    /* renamed from: a, reason: collision with root package name */
    public final List f3082a;
    public static final Object b = new Object();
    public static final Clock e = DefaultClock.getInstance();
    public static final HashSet f = new HashSet(Arrays.asList(new String[0]));

    public zzl() {
        throw null;
    }

    public static void a(JsonWriter jsonWriter, Map map) {
        if (map == null) {
            return;
        }
        jsonWriter.name("headers").beginArray();
        Iterator it = map.entrySet().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            String str = (String) entry.getKey();
            if (!f.contains(str)) {
                if (entry.getValue() instanceof List) {
                    for (String str2 : (List) entry.getValue()) {
                        jsonWriter.beginObject();
                        jsonWriter.name("name").value(str);
                        jsonWriter.name("value").value(str2);
                        jsonWriter.endObject();
                    }
                } else if (entry.getValue() instanceof String) {
                    jsonWriter.beginObject();
                    jsonWriter.name("name").value(str);
                    jsonWriter.name("value").value((String) entry.getValue());
                    jsonWriter.endObject();
                } else {
                    zzo.zzf("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                    break;
                }
            }
        }
        jsonWriter.endArray();
    }

    public static void zzg() {
        synchronized (b) {
            f3081c = false;
            d = false;
            zzo.zzi("Ad debug logging enablement is out of date.");
        }
    }

    public static void zzh(boolean z) {
        synchronized (b) {
            f3081c = true;
            d = z;
        }
    }

    public static boolean zzi() {
        boolean z;
        synchronized (b) {
            z = f3081c;
        }
        return z;
    }

    public static boolean zzj() {
        boolean z;
        synchronized (b) {
            try {
                z = false;
                if (f3081c && d) {
                    z = true;
                }
            } finally {
            }
        }
        return z;
    }

    public final void b(String str, zzk zzkVar) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(e.currentTimeMillis());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            Iterator it = this.f3082a.iterator();
            while (it.hasNext()) {
                jsonWriter.value((String) it.next());
            }
            jsonWriter.endArray();
            zzkVar.a(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e2) {
            zzo.zzg("unable to log", e2);
        }
        String stringWriter2 = stringWriter.toString();
        synchronized (zzl.class) {
            try {
                zzo.zzh("GMA Debug BEGIN");
                int i = 0;
                while (i < stringWriter2.length()) {
                    int i2 = i + 4000;
                    zzo.zzh("GMA Debug CONTENT ".concat(String.valueOf(stringWriter2.substring(i, Math.min(i2, stringWriter2.length())))));
                    i = i2;
                }
                zzo.zzh("GMA Debug FINISH");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void zza(HttpURLConnection httpURLConnection, @Nullable byte[] bArr) {
        HashMap hashMap;
        if (!zzj()) {
            return;
        }
        if (httpURLConnection.getRequestProperties() == null) {
            hashMap = null;
        } else {
            hashMap = new HashMap(httpURLConnection.getRequestProperties());
        }
        b("onNetworkRequest", new zzj(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), hashMap, bArr));
    }

    public final void zzb(String str, String str2, @Nullable Map map, @Nullable byte[] bArr) {
        if (!zzj()) {
            return;
        }
        b("onNetworkRequest", new zzj(str, HttpMethods.GET, map, bArr));
    }

    public final void zzc(HttpURLConnection httpURLConnection, int i) {
        HashMap hashMap;
        if (zzj()) {
            String str = null;
            if (httpURLConnection.getHeaderFields() == null) {
                hashMap = null;
            } else {
                hashMap = new HashMap(httpURLConnection.getHeaderFields());
            }
            b("onNetworkResponse", new zzg(i, hashMap));
            if (i >= 200 && i < 300) {
                return;
            }
            try {
                str = httpURLConnection.getResponseMessage();
            } catch (IOException e2) {
                zzo.zzi("Can not get error message from error HttpURLConnection\n".concat(String.valueOf(e2.getMessage())));
            }
            b("onNetworkRequestError", new zzi(str));
        }
    }

    public final void zzd(@Nullable Map map, int i) {
        if (zzj()) {
            b("onNetworkResponse", new zzg(i, map));
            if (i >= 200 && i < 300) {
                return;
            }
            b("onNetworkRequestError", new zzi(null));
        }
    }

    public final void zze(@Nullable String str) {
        if (zzj() && str != null) {
            zzf(str.getBytes());
        }
    }

    public final void zzf(final byte[] bArr) {
        b("onNetworkResponseBody", new zzk() { // from class: com.google.android.gms.ads.internal.util.client.zzh
            @Override // com.google.android.gms.ads.internal.util.client.zzk
            public final /* synthetic */ void a(JsonWriter jsonWriter) {
                Object obj = zzl.b;
                jsonWriter.name("params").beginObject();
                byte[] bArr2 = bArr;
                int length = bArr2.length;
                String encode = Base64Utils.encode(bArr2);
                if (length < 10000) {
                    jsonWriter.name("body").value(encode);
                } else {
                    String zzf = zzf.zzf(encode);
                    if (zzf != null) {
                        jsonWriter.name("bodydigest").value(zzf);
                    }
                }
                jsonWriter.name("bodylength").value(length);
                jsonWriter.endObject();
            }
        });
    }

    public zzl(@Nullable String str) {
        List asList;
        if (!zzj()) {
            asList = new ArrayList();
        } else {
            asList = Arrays.asList("network_request_".concat(String.valueOf(UUID.randomUUID().toString())));
        }
        this.f3082a = asList;
    }
}
