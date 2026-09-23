package org.jsoup.helper;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Map;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URISyntaxException;
import java.net.URLConnection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import org.jsoup.Connection;
import org.jsoup.helper.HttpConnection;
import org.jsoup.internal.Functions;
import org.jsoup.internal.StringUtil;

/* loaded from: classes4.dex */
class UrlConnectionExecutor extends RequestExecutor {

    /* renamed from: c, reason: collision with root package name */
    public HttpURLConnection f22543c;

    public static HttpURLConnection c(HttpConnection.Request request) {
        URLConnection openConnection;
        HashSet hashSet;
        HashSet hashSet2;
        Proxy proxy = request.proxy();
        if (proxy == null) {
            openConnection = request.url().openConnection();
        } else {
            openConnection = request.url().openConnection(proxy);
        }
        HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
        httpURLConnection.setRequestMethod(request.method().name());
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setConnectTimeout(request.timeout());
        httpURLConnection.setReadTimeout(request.timeout() / 2);
        if (httpURLConnection instanceof HttpsURLConnection) {
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) httpURLConnection;
            SSLContext sSLContext = request.s;
            if (sSLContext != null) {
                httpsURLConnection.setSSLSocketFactory(sSLContext.getSocketFactory());
            } else if (request.sslSocketFactory() != null) {
                httpsURLConnection.setSSLSocketFactory(request.sslSocketFactory());
            }
        }
        RequestAuthenticator requestAuthenticator = request.u;
        if (requestAuthenticator != null) {
            AuthenticationHandler.f22524c.a(requestAuthenticator);
        }
        if (request.method().hasBody()) {
            httpURLConnection.setDoOutput(true);
        }
        Map map = CookieUtil.f22527a;
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (Map.Entry<String, String> entry : request.cookies().entrySet()) {
            linkedHashSet.add(entry.getKey() + "=" + entry.getValue());
        }
        try {
            HashSet hashSet3 = null;
            for (Map.Entry<String, List<String>> entry2 : request.t.get(request.f22534a.toURI(), CookieUtil.f22527a).entrySet()) {
                List<String> value = entry2.getValue();
                if (value != null && value.size() != 0) {
                    String key = entry2.getKey();
                    if ("Cookie".equals(key)) {
                        hashSet = hashSet3;
                        hashSet2 = linkedHashSet;
                    } else if ("Cookie2".equals(key)) {
                        hashSet2 = new HashSet();
                        hashSet = hashSet2;
                    }
                    hashSet2.addAll(value);
                    hashSet3 = hashSet;
                }
            }
            if (linkedHashSet.size() > 0) {
                httpURLConnection.addRequestProperty("Cookie", StringUtil.join(linkedHashSet, "; "));
            }
            if (hashSet3 != null && hashSet3.size() > 0) {
                httpURLConnection.addRequestProperty("Cookie2", StringUtil.join(hashSet3, "; "));
            }
            for (Map.Entry entry3 : request.multiHeaders().entrySet()) {
                Iterator it = ((List) entry3.getValue()).iterator();
                while (it.hasNext()) {
                    httpURLConnection.addRequestProperty((String) entry3.getKey(), (String) it.next());
                }
            }
            return httpURLConnection;
        } catch (URISyntaxException e) {
            MalformedURLException malformedURLException = new MalformedURLException(e.getMessage());
            malformedURLException.initCause(e);
            throw malformedURLException;
        }
    }

    @Override // org.jsoup.helper.RequestExecutor
    public final HttpConnection.Response a() {
        HttpConnection.Request request = this.f22541a;
        try {
            HttpURLConnection c2 = c(request);
            this.f22543c = c2;
            c2.connect();
            if (this.f22543c.getDoOutput()) {
                try {
                    OutputStream outputStream = this.f22543c.getOutputStream();
                    try {
                        HttpConnection.Response.g(request, outputStream);
                        if (outputStream != null) {
                            outputStream.close();
                        }
                    } finally {
                    }
                } catch (IOException e) {
                    this.f22543c.disconnect();
                    throw e;
                }
            }
            HttpConnection.Response response = new HttpConnection.Response(request);
            response.j = this;
            response.b = Connection.Method.valueOf(this.f22543c.getRequestMethod());
            response.f22534a = this.f22543c.getURL();
            response.f = this.f22543c.getResponseCode();
            String responseMessage = this.f22543c.getResponseMessage();
            response.g = responseMessage;
            if (responseMessage == null) {
                response.g = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            response.l = this.f22543c.getContentType();
            response.m = this.f22543c.getContentLength();
            HttpURLConnection httpURLConnection = this.f22543c;
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            int i = 0;
            while (true) {
                String headerFieldKey = httpURLConnection.getHeaderFieldKey(i);
                String headerField = httpURLConnection.getHeaderField(i);
                if (headerFieldKey == null && headerField == null) {
                    response.e(linkedHashMap, this.b);
                    return response;
                }
                i++;
                if (headerFieldKey != null && headerField != null) {
                    ((List) Map.EL.computeIfAbsent(linkedHashMap, headerFieldKey, Functions.listFunction())).add(headerField);
                }
            }
        } catch (IOException e2) {
            d();
            throw e2;
        }
    }

    @Override // org.jsoup.helper.RequestExecutor
    public final InputStream b() {
        HttpURLConnection httpURLConnection = this.f22543c;
        if (httpURLConnection != null) {
            if (httpURLConnection.getErrorStream() != null) {
                return this.f22543c.getErrorStream();
            }
            return this.f22543c.getInputStream();
        }
        throw new IllegalStateException("Not yet executed");
    }

    public final void d() {
        HttpURLConnection httpURLConnection = this.f22543c;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
            this.f22543c = null;
        }
    }
}
