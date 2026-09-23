package com.google.android.datatransport.cct;

import android.content.Context;
import android.net.ConnectivityManager;
import android.util.Log;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.cct.CctTransportBackend;
import com.google.android.datatransport.cct.internal.AndroidClientInfo;
import com.google.android.datatransport.cct.internal.AutoBatchedLogRequestEncoder;
import com.google.android.datatransport.cct.internal.BatchedLogRequest;
import com.google.android.datatransport.cct.internal.ClientInfo;
import com.google.android.datatransport.cct.internal.LogEvent;
import com.google.android.datatransport.cct.internal.LogRequest;
import com.google.android.datatransport.cct.internal.LogResponse;
import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;
import com.google.android.datatransport.cct.internal.QosTier;
import com.google.android.datatransport.runtime.EncodedPayload;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.backends.BackendRequest;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.backends.TransportBackend;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.retries.Function;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.api.client.http.HttpMethods;
import com.google.api.client.http.HttpStatusCodes;
import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.jsoup.helper.HttpConnection;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class CctTransportBackend implements TransportBackend {

    /* renamed from: a, reason: collision with root package name */
    public final DataEncoder f2758a;
    public final ConnectivityManager b;

    /* renamed from: c, reason: collision with root package name */
    public final Context f2759c;
    public final URL d;
    public final Clock e;
    public final Clock f;
    public final int g;

    /* loaded from: classes.dex */
    public static final class HttpRequest {

        /* renamed from: a, reason: collision with root package name */
        public final URL f2760a;
        public final BatchedLogRequest b;

        /* renamed from: c, reason: collision with root package name */
        public final String f2761c;

        public HttpRequest(URL url, BatchedLogRequest batchedLogRequest, String str) {
            this.f2760a = url;
            this.b = batchedLogRequest;
            this.f2761c = str;
        }
    }

    /* loaded from: classes.dex */
    public static final class HttpResponse {

        /* renamed from: a, reason: collision with root package name */
        public final int f2762a;
        public final URL b;

        /* renamed from: c, reason: collision with root package name */
        public final long f2763c;

        public HttpResponse(int i, URL url, long j) {
            this.f2762a = i;
            this.b = url;
            this.f2763c = j;
        }
    }

    public CctTransportBackend(Context context, Clock clock, Clock clock2) {
        JsonDataEncoderBuilder jsonDataEncoderBuilder = new JsonDataEncoderBuilder();
        AutoBatchedLogRequestEncoder.f2765a.a(jsonDataEncoderBuilder);
        jsonDataEncoderBuilder.d = true;
        this.f2758a = jsonDataEncoderBuilder.b();
        this.f2759c = context;
        this.b = (ConnectivityManager) context.getSystemService("connectivity");
        this.d = c(CCTDestination.f2756c);
        this.e = clock2;
        this.f = clock;
        this.g = 130000;
    }

    public static URL c(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(android.support.v4.media.a.C("Invalid url: ", str), e);
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [com.google.android.datatransport.cct.a] */
    @Override // com.google.android.datatransport.runtime.backends.TransportBackend
    public final BackendResponse a(BackendRequest backendRequest) {
        int i;
        String str;
        Object a2;
        LogEvent.Builder i2;
        long longValue;
        HashMap hashMap = new HashMap();
        for (EventInternal eventInternal : backendRequest.b()) {
            String h = eventInternal.h();
            if (!hashMap.containsKey(h)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(eventInternal);
                hashMap.put(h, arrayList);
            } else {
                ((List) hashMap.get(h)).add(eventInternal);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = hashMap.entrySet().iterator();
        while (true) {
            i = 5;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry entry = (Map.Entry) it.next();
            EventInternal eventInternal2 = (EventInternal) ((List) entry.getValue()).get(0);
            LogRequest.Builder a3 = LogRequest.a();
            QosTier qosTier = QosTier.f2798c;
            a3.f();
            a3.g(this.f.a());
            a3.h(this.e.a());
            ClientInfo.Builder a4 = ClientInfo.a();
            a4.c();
            AndroidClientInfo.Builder a5 = AndroidClientInfo.a();
            a5.m(Integer.valueOf(eventInternal2.g("sdk-version")));
            a5.j(eventInternal2.b("model"));
            a5.f(eventInternal2.b("hardware"));
            a5.d(eventInternal2.b("device"));
            a5.l(eventInternal2.b("product"));
            a5.k(eventInternal2.b("os-uild"));
            a5.h(eventInternal2.b("manufacturer"));
            a5.e(eventInternal2.b("fingerprint"));
            a5.c(eventInternal2.b("country"));
            a5.g(eventInternal2.b("locale"));
            a5.i(eventInternal2.b("mcc_mnc"));
            a5.b(eventInternal2.b("application_build"));
            a4.b(a5.a());
            a3.b(a4.a());
            try {
                a3.d(Integer.valueOf(Integer.parseInt((String) entry.getKey())));
            } catch (NumberFormatException unused) {
                a3.e((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (EventInternal eventInternal3 : (List) entry.getValue()) {
                EncodedPayload e = eventInternal3.e();
                Encoding encoding = e.f2823a;
                byte[] bArr = e.b;
                if (encoding.equals(new Encoding("proto"))) {
                    i2 = LogEvent.i(bArr);
                } else if (encoding.equals(new Encoding("json"))) {
                    i2 = LogEvent.h(new String(bArr, Charset.forName("UTF-8")));
                } else {
                    String d = Logging.d("CctTransportBackend");
                    if (Log.isLoggable(d, 5)) {
                        Log.w(d, "Received event of unsupported encoding " + encoding + ". Skipping...");
                    }
                }
                i2.c(eventInternal3.f());
                i2.d(eventInternal3.i());
                String str2 = (String) eventInternal3.c().get("tz-offset");
                if (str2 == null) {
                    longValue = 0;
                } else {
                    longValue = Long.valueOf(str2).longValue();
                }
                i2.f(longValue);
                NetworkConnectionInfo.Builder a6 = NetworkConnectionInfo.a();
                a6.c((NetworkConnectionInfo.NetworkType) NetworkConnectionInfo.NetworkType.f2797c.get(eventInternal3.g("net-type")));
                a6.b((NetworkConnectionInfo.MobileSubtype) NetworkConnectionInfo.MobileSubtype.f2796c.get(eventInternal3.g("mobile-subtype")));
                i2.e(a6.a());
                if (eventInternal3.d() != null) {
                    i2.b(eventInternal3.d());
                }
                arrayList3.add(i2.a());
            }
            a3.c(arrayList3);
            arrayList2.add(a3.a());
        }
        BatchedLogRequest a7 = BatchedLogRequest.a(arrayList2);
        byte[] c2 = backendRequest.c();
        URL url = this.d;
        if (c2 != null) {
            try {
                CCTDestination b = CCTDestination.b(backendRequest.c());
                str = b.b;
                if (str == null) {
                    str = null;
                }
                String str3 = b.f2757a;
                if (str3 != null) {
                    url = c(str3);
                }
            } catch (IllegalArgumentException unused2) {
                return BackendResponse.a();
            }
        } else {
            str = null;
        }
        try {
            HttpRequest httpRequest = new HttpRequest(url, a7, str);
            ?? r0 = new Function() { // from class: com.google.android.datatransport.cct.a
                public final Object a(Object obj) {
                    InputStream inputStream;
                    CctTransportBackend.HttpRequest httpRequest2 = (CctTransportBackend.HttpRequest) obj;
                    URL url2 = httpRequest2.f2760a;
                    String d2 = Logging.d("CctTransportBackend");
                    if (Log.isLoggable(d2, 4)) {
                        Log.i(d2, String.format("Making request to: %s", url2));
                    }
                    HttpURLConnection httpURLConnection = (HttpURLConnection) url2.openConnection();
                    httpURLConnection.setConnectTimeout(30000);
                    CctTransportBackend cctTransportBackend = CctTransportBackend.this;
                    httpURLConnection.setReadTimeout(cctTransportBackend.g);
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setInstanceFollowRedirects(false);
                    httpURLConnection.setRequestMethod(HttpMethods.POST);
                    httpURLConnection.setRequestProperty("User-Agent", "datatransport/3.1.8 android/");
                    httpURLConnection.setRequestProperty(HttpConnection.CONTENT_ENCODING, "gzip");
                    httpURLConnection.setRequestProperty(HttpConnection.CONTENT_TYPE, "application/json");
                    httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
                    String str4 = httpRequest2.f2761c;
                    if (str4 != null) {
                        httpURLConnection.setRequestProperty("X-Goog-Api-Key", str4);
                    }
                    try {
                        OutputStream outputStream = httpURLConnection.getOutputStream();
                        try {
                            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                            try {
                                cctTransportBackend.f2758a.a(httpRequest2.b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                                gZIPOutputStream.close();
                                if (outputStream != null) {
                                    outputStream.close();
                                }
                                int responseCode = httpURLConnection.getResponseCode();
                                Integer valueOf = Integer.valueOf(responseCode);
                                String d3 = Logging.d("CctTransportBackend");
                                if (Log.isLoggable(d3, 4)) {
                                    Log.i(d3, String.format("Status Code: %d", valueOf));
                                }
                                Logging.a(httpURLConnection.getHeaderField(HttpConnection.CONTENT_TYPE), "CctTransportBackend", "Content-Type: %s");
                                Logging.a(httpURLConnection.getHeaderField(HttpConnection.CONTENT_ENCODING), "CctTransportBackend", "Content-Encoding: %s");
                                if (responseCode != 302 && responseCode != 301 && responseCode != 307) {
                                    if (responseCode != 200) {
                                        return new CctTransportBackend.HttpResponse(responseCode, null, 0L);
                                    }
                                    InputStream inputStream2 = httpURLConnection.getInputStream();
                                    try {
                                        if ("gzip".equals(httpURLConnection.getHeaderField(HttpConnection.CONTENT_ENCODING))) {
                                            inputStream = new GZIPInputStream(inputStream2);
                                        } else {
                                            inputStream = inputStream2;
                                        }
                                        try {
                                            CctTransportBackend.HttpResponse httpResponse = new CctTransportBackend.HttpResponse(responseCode, null, LogResponse.a(new BufferedReader(new InputStreamReader(inputStream))).b());
                                            if (inputStream != null) {
                                                inputStream.close();
                                            }
                                            if (inputStream2 != null) {
                                                inputStream2.close();
                                            }
                                            return httpResponse;
                                        } finally {
                                        }
                                    } finally {
                                    }
                                } else {
                                    return new CctTransportBackend.HttpResponse(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                                }
                            } finally {
                            }
                        } finally {
                        }
                    } catch (EncodingException e2) {
                        e = e2;
                        Logging.c("CctTransportBackend", "Couldn't encode request, returning with 400", e);
                        return new CctTransportBackend.HttpResponse(HttpStatusCodes.STATUS_CODE_BAD_REQUEST, null, 0L);
                    } catch (ConnectException e3) {
                        e = e3;
                        Logging.c("CctTransportBackend", "Couldn't open connection, returning with 500", e);
                        return new CctTransportBackend.HttpResponse(500, null, 0L);
                    } catch (UnknownHostException e4) {
                        e = e4;
                        Logging.c("CctTransportBackend", "Couldn't open connection, returning with 500", e);
                        return new CctTransportBackend.HttpResponse(500, null, 0L);
                    } catch (IOException e5) {
                        e = e5;
                        Logging.c("CctTransportBackend", "Couldn't encode request, returning with 400", e);
                        return new CctTransportBackend.HttpResponse(HttpStatusCodes.STATUS_CODE_BAD_REQUEST, null, 0L);
                    }
                }
            };
            do {
                a2 = r0.a(httpRequest);
                URL url2 = ((HttpResponse) a2).b;
                if (url2 != null) {
                    Logging.a(url2, "CctTransportBackend", "Following redirect to: %s");
                    httpRequest = new HttpRequest(url2, httpRequest.b, httpRequest.f2761c);
                } else {
                    httpRequest = null;
                }
                if (httpRequest == null) {
                    break;
                }
                i--;
            } while (i >= 1);
            HttpResponse httpResponse = (HttpResponse) a2;
            int i3 = httpResponse.f2762a;
            if (i3 == 200) {
                return BackendResponse.e(httpResponse.f2763c);
            }
            if (i3 < 500 && i3 != 404) {
                if (i3 == 400) {
                    return BackendResponse.d();
                }
                return BackendResponse.a();
            }
            return BackendResponse.f();
        } catch (IOException e2) {
            Logging.c("CctTransportBackend", "Could not make request to the backend", e2);
            return BackendResponse.f();
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:1|(1:3)(1:22)|4|(1:6)(7:17|(1:19)(1:20)|8|9|10|11|12)|7|8|9|10|11|12) */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x00f0, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x00f1, code lost:
    
        com.google.android.datatransport.runtime.logging.Logging.c("CctTransportBackend", "Unable to find version code for package", r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a3, code lost:
    
        if (((com.google.android.datatransport.cct.internal.NetworkConnectionInfo.MobileSubtype) com.google.android.datatransport.cct.internal.NetworkConnectionInfo.MobileSubtype.f2796c.get(r0)) != null) goto L15;
     */
    @Override // com.google.android.datatransport.runtime.backends.TransportBackend
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.datatransport.runtime.EventInternal b(com.google.android.datatransport.runtime.EventInternal r6) {
        /*
            r5 = this;
            android.net.ConnectivityManager r0 = r5.b
            android.net.NetworkInfo r0 = r0.getActiveNetworkInfo()
            com.google.android.datatransport.runtime.EventInternal$Builder r6 = r6.j()
            int r1 = android.os.Build.VERSION.SDK_INT
            java.util.Map r2 = r6.c()
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.util.HashMap r2 = (java.util.HashMap) r2
            java.lang.String r3 = "sdk-version"
            r2.put(r3, r1)
            java.lang.String r1 = "model"
            java.lang.String r2 = android.os.Build.MODEL
            r6.a(r1, r2)
            java.lang.String r1 = "hardware"
            java.lang.String r2 = android.os.Build.HARDWARE
            r6.a(r1, r2)
            java.lang.String r1 = "device"
            java.lang.String r2 = android.os.Build.DEVICE
            r6.a(r1, r2)
            java.lang.String r1 = "product"
            java.lang.String r2 = android.os.Build.PRODUCT
            r6.a(r1, r2)
            java.lang.String r1 = "os-uild"
            java.lang.String r2 = android.os.Build.ID
            r6.a(r1, r2)
            java.lang.String r1 = "manufacturer"
            java.lang.String r2 = android.os.Build.MANUFACTURER
            r6.a(r1, r2)
            java.lang.String r1 = "fingerprint"
            java.lang.String r2 = android.os.Build.FINGERPRINT
            r6.a(r1, r2)
            java.util.Calendar.getInstance()
            java.util.TimeZone r1 = java.util.TimeZone.getDefault()
            java.util.Calendar r2 = java.util.Calendar.getInstance()
            long r2 = r2.getTimeInMillis()
            int r1 = r1.getOffset(r2)
            int r1 = r1 / 1000
            long r1 = (long) r1
            java.util.Map r3 = r6.c()
            java.lang.String r1 = java.lang.String.valueOf(r1)
            java.lang.String r2 = "tz-offset"
            r3.put(r2, r1)
            r1 = -1
            if (r0 != 0) goto L76
            android.util.SparseArray r2 = com.google.android.datatransport.cct.internal.NetworkConnectionInfo.NetworkType.f2797c
            r2 = r1
            goto L7a
        L76:
            int r2 = r0.getType()
        L7a:
            java.util.Map r3 = r6.c()
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.util.HashMap r3 = (java.util.HashMap) r3
            java.lang.String r4 = "net-type"
            r3.put(r4, r2)
            r2 = 0
            if (r0 != 0) goto L90
            android.util.SparseArray r0 = com.google.android.datatransport.cct.internal.NetworkConnectionInfo.MobileSubtype.f2796c
        L8e:
            r0 = r2
            goto La5
        L90:
            int r0 = r0.getSubtype()
            if (r0 != r1) goto L9b
            android.util.SparseArray r0 = com.google.android.datatransport.cct.internal.NetworkConnectionInfo.MobileSubtype.f2796c
            r0 = 100
            goto La5
        L9b:
            android.util.SparseArray r3 = com.google.android.datatransport.cct.internal.NetworkConnectionInfo.MobileSubtype.f2796c
            java.lang.Object r3 = r3.get(r0)
            com.google.android.datatransport.cct.internal.NetworkConnectionInfo$MobileSubtype r3 = (com.google.android.datatransport.cct.internal.NetworkConnectionInfo.MobileSubtype) r3
            if (r3 == 0) goto L8e
        La5:
            java.util.Map r3 = r6.c()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            java.util.HashMap r3 = (java.util.HashMap) r3
            java.lang.String r4 = "mobile-subtype"
            r3.put(r4, r0)
            java.util.Locale r0 = java.util.Locale.getDefault()
            java.lang.String r0 = r0.getCountry()
            java.lang.String r3 = "country"
            r6.a(r3, r0)
            java.util.Locale r0 = java.util.Locale.getDefault()
            java.lang.String r0 = r0.getLanguage()
            java.lang.String r3 = "locale"
            r6.a(r3, r0)
            java.lang.String r0 = "phone"
            android.content.Context r3 = r5.f2759c
            java.lang.Object r0 = r3.getSystemService(r0)
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            java.lang.String r0 = r0.getSimOperator()
            java.lang.String r4 = "mcc_mnc"
            r6.a(r4, r0)
            android.content.pm.PackageManager r0 = r3.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lf0
            java.lang.String r3 = r3.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lf0
            android.content.pm.PackageInfo r0 = r0.getPackageInfo(r3, r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lf0
            int r1 = r0.versionCode     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lf0
            goto Lf8
        Lf0:
            r0 = move-exception
            java.lang.String r2 = "CctTransportBackend"
            java.lang.String r3 = "Unable to find version code for package"
            com.google.android.datatransport.runtime.logging.Logging.c(r2, r3, r0)
        Lf8:
            java.lang.String r0 = java.lang.Integer.toString(r1)
            java.lang.String r1 = "application_build"
            r6.a(r1, r0)
            com.google.android.datatransport.runtime.EventInternal r6 = r6.b()
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.datatransport.cct.CctTransportBackend.b(com.google.android.datatransport.runtime.EventInternal):com.google.android.datatransport.runtime.EventInternal");
    }
}
