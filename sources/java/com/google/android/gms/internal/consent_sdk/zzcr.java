package com.google.android.gms.internal.consent_sdk;

import android.app.Application;
import android.util.Log;
import android.webkit.WebSettings;
import com.google.api.client.http.HttpMethods;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Queue;
import java.util.Scanner;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes.dex */
public final class zzcr {
    public final Application b;

    /* renamed from: c, reason: collision with root package name */
    public final zzco f9992c;
    public final Executor d;
    public final boolean e;
    public final AtomicReference f = new AtomicReference(new ArrayDeque());
    public final AtomicReference g = new AtomicReference(new ArrayDeque());
    public final AtomicReference h = new AtomicReference(new ArrayDeque());
    public final AtomicReference i = new AtomicReference(new ArrayDeque());
    public final AtomicReference j = new AtomicReference(new ArrayDeque());
    public final AtomicReference k = new AtomicReference(new ArrayDeque());
    public final AtomicReference l = new AtomicReference(new ArrayDeque());

    /* renamed from: a, reason: collision with root package name */
    public final AtomicReference f9991a = new AtomicReference(null);

    public zzcr(Application application, Executor executor, zzco zzcoVar, boolean z) {
        this.e = z;
        this.b = application;
        this.f9992c = zzcoVar;
        this.d = executor;
    }

    public final void a(Queue queue, int i, int i2, String str) {
        Long l = (Long) queue.poll();
        if (l != null) {
            long currentTimeMillis = System.currentTimeMillis() - l.longValue();
            if (str != null) {
                i = i2;
            }
            AtomicReference atomicReference = this.k;
            ((Queue) atomicReference.get()).add(this.f9992c.a(i, str, currentTimeMillis));
            if (this.e) {
                ((ArrayDeque) this.l.get()).addAll((Collection) atomicReference.get());
            }
            this.d.execute(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzcq
                @Override // java.lang.Runnable
                public final void run() {
                    String str2;
                    zzcr zzcrVar = zzcr.this;
                    AtomicReference atomicReference2 = zzcrVar.k;
                    String str3 = (String) zzcrVar.f9991a.get();
                    if (str3 == null) {
                        Log.w("UserMessagingPlatform", "Metrics reporting URL is not set yet.");
                        return;
                    }
                    int size = ((Queue) atomicReference2.get()).size();
                    for (int i3 = 0; i3 < size; i3++) {
                        zzif zzifVar = (zzif) ((Queue) atomicReference2.get()).poll();
                        if (zzifVar != null) {
                            try {
                                HttpURLConnection httpURLConnection = (HttpURLConnection) new URI(str3).toURL().openConnection();
                                httpURLConnection.setRequestProperty("User-Agent", WebSettings.getDefaultUserAgent(zzcrVar.b));
                                httpURLConnection.setConnectTimeout(10000);
                                httpURLConnection.setReadTimeout(30000);
                                httpURLConnection.setDoOutput(true);
                                httpURLConnection.setRequestMethod(HttpMethods.POST);
                                httpURLConnection.setRequestProperty(HttpConnection.CONTENT_TYPE, "application/protobuf");
                                zzifVar.b(httpURLConnection.getOutputStream());
                                int responseCode = httpURLConnection.getResponseCode();
                                if (responseCode != 200 && responseCode != 204) {
                                    if (httpURLConnection.getErrorStream() != null) {
                                        str2 = new Scanner(httpURLConnection.getErrorStream()).useDelimiter("\\A").next();
                                    } else {
                                        str2 = null;
                                    }
                                    Log.w("UserMessagingPlatform", "Fail to ping metrics reporting URL: Http error code - " + responseCode + ".\n" + str2);
                                    ((Queue) atomicReference2.get()).add(zzifVar);
                                }
                            } catch (IOException e) {
                                Log.w("UserMessagingPlatform", "Fail to ping metrics reporting URL: ".concat(String.valueOf(e.getMessage())));
                                ((Queue) atomicReference2.get()).add(zzifVar);
                            } catch (URISyntaxException e2) {
                                Log.w("UserMessagingPlatform", "Metrics reporting URL " + str3 + " is not valid: " + e2.getMessage());
                            }
                        }
                    }
                }
            });
        }
    }
}
