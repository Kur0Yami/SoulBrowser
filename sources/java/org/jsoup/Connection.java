package org.jsoup;

import java.io.BufferedInputStream;
import java.io.InputStream;
import java.net.CookieStore;
import java.net.Proxy;
import java.net.URL;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import org.jsoup.helper.RequestAuthenticator;
import org.jsoup.nodes.Document;
import org.jsoup.parser.Parser;
import org.jsoup.parser.StreamParser;

/* loaded from: classes4.dex */
public interface Connection {

    /* loaded from: classes4.dex */
    public interface Base<T extends Base<T>> {
        T addHeader(String str, String str2);

        String cookie(String str);

        T cookie(String str, String str2);

        Map<String, String> cookies();

        boolean hasCookie(String str);

        boolean hasHeader(String str);

        boolean hasHeaderWithValue(String str, String str2);

        String header(String str);

        T header(String str, String str2);

        List<String> headers(String str);

        Map<String, String> headers();

        T method(Method method);

        Method method();

        Map<String, List<String>> multiHeaders();

        T removeCookie(String str);

        T removeHeader(String str);

        URL url();

        T url(URL url);
    }

    /* loaded from: classes4.dex */
    public interface KeyVal {
        String contentType();

        KeyVal contentType(String str);

        boolean hasInputStream();

        InputStream inputStream();

        KeyVal inputStream(InputStream inputStream);

        String key();

        KeyVal key(String str);

        String value();

        KeyVal value(String str);
    }

    /* loaded from: classes4.dex */
    public enum Method {
        GET(false),
        POST(true),
        PUT(true),
        DELETE(true),
        PATCH(true),
        HEAD(false),
        OPTIONS(false),
        TRACE(false);


        /* renamed from: c, reason: collision with root package name */
        public final boolean f22521c;

        Method(boolean z) {
            this.f22521c = z;
        }

        public final boolean hasBody() {
            return this.f22521c;
        }
    }

    /* loaded from: classes4.dex */
    public interface Request extends Base<Request> {
        Request auth(RequestAuthenticator requestAuthenticator);

        RequestAuthenticator auth();

        Collection<KeyVal> data();

        Request data(KeyVal keyVal);

        Request followRedirects(boolean z);

        boolean followRedirects();

        Request ignoreContentType(boolean z);

        boolean ignoreContentType();

        Request ignoreHttpErrors(boolean z);

        boolean ignoreHttpErrors();

        int maxBodySize();

        Request maxBodySize(int i);

        Request parser(Parser parser);

        Parser parser();

        String postDataCharset();

        Request postDataCharset(String str);

        Proxy proxy();

        Request proxy(String str, int i);

        Request proxy(Proxy proxy);

        String requestBody();

        Request requestBody(String str);

        Request requestBodyStream(InputStream inputStream);

        SSLContext sslContext();

        Request sslContext(SSLContext sSLContext);

        SSLSocketFactory sslSocketFactory();

        @Deprecated
        void sslSocketFactory(SSLSocketFactory sSLSocketFactory);

        int timeout();

        Request timeout(int i);
    }

    /* loaded from: classes4.dex */
    public interface Response extends Base<Response> {
        String body();

        byte[] bodyAsBytes();

        BufferedInputStream bodyStream();

        @Deprecated
        Response bufferUp();

        String charset();

        Response charset(String str);

        String contentType();

        Document parse();

        String readBody();

        Response readFully();

        int statusCode();

        String statusMessage();

        StreamParser streamParser();
    }

    Connection auth(RequestAuthenticator requestAuthenticator);

    Connection cookie(String str, String str2);

    CookieStore cookieStore();

    Connection cookieStore(CookieStore cookieStore);

    Connection cookies(Map<String, String> map);

    KeyVal data(String str);

    Connection data(String str, String str2);

    Connection data(String str, String str2, InputStream inputStream);

    Connection data(String str, String str2, InputStream inputStream, String str3);

    Connection data(Collection<KeyVal> collection);

    Connection data(Map<String, String> map);

    Connection data(String... strArr);

    Response execute();

    Connection followRedirects(boolean z);

    Document get();

    Connection header(String str, String str2);

    Connection headers(Map<String, String> map);

    Connection ignoreContentType(boolean z);

    Connection ignoreHttpErrors(boolean z);

    Connection maxBodySize(int i);

    Connection method(Method method);

    Connection newRequest();

    Connection newRequest(String str);

    Connection newRequest(URL url);

    Connection onResponseProgress(Progress<Response> progress);

    Connection parser(Parser parser);

    Document post();

    Connection postDataCharset(String str);

    Connection proxy(String str, int i);

    Connection proxy(Proxy proxy);

    Connection referrer(String str);

    Request request();

    Connection request(Request request);

    Connection requestBody(String str);

    Connection requestBodyStream(InputStream inputStream);

    Response response();

    Connection response(Response response);

    Connection sslContext(SSLContext sSLContext);

    @Deprecated
    Connection sslSocketFactory(SSLSocketFactory sSLSocketFactory);

    Connection timeout(int i);

    Connection url(String str);

    Connection url(URL url);

    Connection userAgent(String str);
}
