package org.jsoup.helper;

import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.ImagesContract;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UncheckedIOException;
import java.net.CookieManager;
import java.net.CookieStore;
import java.net.InetSocketAddress;
import java.net.MalformedURLException;
import java.net.Proxy;
import java.net.URISyntaxException;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import kotlin.UByte;
import kotlin.jvm.internal.ByteCompanionObject;
import kotlin.text.Typography;
import org.jsoup.Connection;
import org.jsoup.Progress;
import org.jsoup.a;
import org.jsoup.helper.DataUtil;
import org.jsoup.internal.ControllableInputStream;
import org.jsoup.internal.Normalizer;
import org.jsoup.internal.StringUtil;
import org.jsoup.nodes.Document;
import org.jsoup.parser.CharacterReader;
import org.jsoup.parser.Parser;
import org.jsoup.parser.StreamParser;

/* loaded from: classes4.dex */
public class HttpConnection implements Connection {
    public static final String CONTENT_ENCODING = "Content-Encoding";
    public static final String CONTENT_TYPE = "Content-Type";
    public static final String DEFAULT_UA = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36";
    public static final String FORM_URL_ENCODED = "application/x-www-form-urlencoded";
    public static final String MULTIPART_FORM_DATA = "multipart/form-data";

    /* renamed from: c, reason: collision with root package name */
    public static final Charset f22532c = Charset.forName("ISO-8859-1");

    /* renamed from: a, reason: collision with root package name */
    public Request f22533a;
    public Connection.Response b;

    /* loaded from: classes4.dex */
    public static abstract class Base<T extends Connection.Base<T>> implements Connection.Base<T> {
        public static final URL e;

        /* renamed from: a, reason: collision with root package name */
        public URL f22534a = e;
        public Connection.Method b = Connection.Method.GET;

        /* renamed from: c, reason: collision with root package name */
        public LinkedHashMap f22535c = new LinkedHashMap();
        public LinkedHashMap d = new LinkedHashMap();

        static {
            try {
                e = new URL("http://undefined/");
            } catch (MalformedURLException e2) {
                throw new IllegalStateException(e2);
            }
        }

        public final List a(String str) {
            Validate.notNull(str);
            for (Map.Entry entry : this.f22535c.entrySet()) {
                if (str.equalsIgnoreCase((String) entry.getKey())) {
                    return (List) entry.getValue();
                }
            }
            return Collections.EMPTY_LIST;
        }

        @Override // org.jsoup.Connection.Base
        public Connection.Base addHeader(String str, String str2) {
            Validate.notEmptyParam(str, "name");
            if (str2 == null) {
                str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            List headers = headers(str);
            if (headers.isEmpty()) {
                headers = new ArrayList();
                this.f22535c.put(str, headers);
            }
            headers.add(str2);
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public String cookie(String str) {
            Validate.notEmptyParam(str, "name");
            return (String) this.d.get(str);
        }

        @Override // org.jsoup.Connection.Base
        public Map cookies() {
            return this.d;
        }

        @Override // org.jsoup.Connection.Base
        public boolean hasCookie(String str) {
            Validate.notEmptyParam(str, "name");
            return this.d.containsKey(str);
        }

        @Override // org.jsoup.Connection.Base
        public boolean hasHeader(String str) {
            Validate.notEmptyParam(str, "name");
            return !a(str).isEmpty();
        }

        @Override // org.jsoup.Connection.Base
        public boolean hasHeaderWithValue(String str, String str2) {
            Validate.notEmpty(str);
            Validate.notEmpty(str2);
            Iterator it = headers(str).iterator();
            while (it.hasNext()) {
                if (str2.equalsIgnoreCase((String) it.next())) {
                    return true;
                }
            }
            return false;
        }

        @Override // org.jsoup.Connection.Base
        public String header(String str) {
            Validate.notNullParam(str, "name");
            List a2 = a(str);
            if (a2.isEmpty()) {
                return null;
            }
            return StringUtil.join(a2, ", ");
        }

        @Override // org.jsoup.Connection.Base
        public List headers(String str) {
            Validate.notEmptyParam(str, "name");
            return a(str);
        }

        @Override // org.jsoup.Connection.Base
        public Connection.Method method() {
            return this.b;
        }

        @Override // org.jsoup.Connection.Base
        public Map multiHeaders() {
            return this.f22535c;
        }

        @Override // org.jsoup.Connection.Base
        public Connection.Base removeCookie(String str) {
            Validate.notEmptyParam(str, "name");
            this.d.remove(str);
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public Connection.Base removeHeader(String str) {
            Map.Entry entry;
            Validate.notEmptyParam(str, "name");
            String lowerCase = Normalizer.lowerCase(str);
            LinkedHashMap linkedHashMap = this.f22535c;
            Iterator it = linkedHashMap.entrySet().iterator();
            while (true) {
                if (it.hasNext()) {
                    entry = (Map.Entry) it.next();
                    if (Normalizer.lowerCase((String) entry.getKey()).equals(lowerCase)) {
                        break;
                    }
                } else {
                    entry = null;
                    break;
                }
            }
            if (entry != null) {
                linkedHashMap.remove(entry.getKey());
            }
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public URL url() {
            URL url = this.f22534a;
            if (url != e) {
                return url;
            }
            throw new IllegalArgumentException("URL not set. Make sure to call #url(...) before executing the request.");
        }

        @Override // org.jsoup.Connection.Base
        public Connection.Base method(Connection.Method method) {
            Validate.notNullParam(method, "method");
            this.b = method;
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public Connection.Base cookie(String str, String str2) {
            Validate.notEmptyParam(str, "name");
            Validate.notNullParam(str2, "value");
            this.d.put(str, str2);
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public Map headers() {
            LinkedHashMap linkedHashMap = this.f22535c;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(linkedHashMap.size());
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                String str = (String) entry.getKey();
                List list = (List) entry.getValue();
                if (!list.isEmpty()) {
                    linkedHashMap2.put(str, (String) list.get(0));
                }
            }
            return linkedHashMap2;
        }

        @Override // org.jsoup.Connection.Base
        public Connection.Base url(URL url) {
            Validate.notNullParam(url, ImagesContract.URL);
            this.f22534a = new UrlBuilder(url).b();
            return this;
        }

        @Override // org.jsoup.Connection.Base
        public Connection.Base header(String str, String str2) {
            Validate.notEmptyParam(str, "name");
            removeHeader(str);
            addHeader(str, str2);
            return this;
        }
    }

    /* loaded from: classes4.dex */
    public static class KeyVal implements Connection.KeyVal {

        /* renamed from: a, reason: collision with root package name */
        public String f22536a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public InputStream f22537c;
        public String d;

        public KeyVal(String str, String str2) {
            Validate.notEmptyParam(str, "key");
            Validate.notNullParam(str2, "value");
            this.f22536a = str;
            this.b = str2;
        }

        public static KeyVal create(String str, String str2) {
            return new KeyVal(str, str2);
        }

        @Override // org.jsoup.Connection.KeyVal
        public Connection.KeyVal contentType(String str) {
            Validate.notEmpty(str);
            this.d = str;
            return this;
        }

        @Override // org.jsoup.Connection.KeyVal
        public boolean hasInputStream() {
            if (this.f22537c != null) {
                return true;
            }
            return false;
        }

        public String toString() {
            return this.f22536a + "=" + this.b;
        }

        public static KeyVal create(String str, String str2, InputStream inputStream) {
            return new KeyVal(str, str2).inputStream(inputStream);
        }

        @Override // org.jsoup.Connection.KeyVal
        public KeyVal inputStream(InputStream inputStream) {
            Validate.notNullParam(this.b, "inputStream");
            this.f22537c = inputStream;
            return this;
        }

        @Override // org.jsoup.Connection.KeyVal
        public KeyVal key(String str) {
            Validate.notEmptyParam(str, "key");
            this.f22536a = str;
            return this;
        }

        @Override // org.jsoup.Connection.KeyVal
        public KeyVal value(String str) {
            Validate.notNullParam(str, "value");
            this.b = str;
            return this;
        }

        @Override // org.jsoup.Connection.KeyVal
        public String contentType() {
            return this.d;
        }

        @Override // org.jsoup.Connection.KeyVal
        public InputStream inputStream() {
            return this.f22537c;
        }

        @Override // org.jsoup.Connection.KeyVal
        public String key() {
            return this.f22536a;
        }

        @Override // org.jsoup.Connection.KeyVal
        public String value() {
            return this.b;
        }
    }

    /* loaded from: classes4.dex */
    public static class Request extends Base<Connection.Request> implements Connection.Request {
        public Proxy f;
        public int g;
        public int h;
        public boolean i;
        public final ArrayList j;
        public Object k;
        public String l;
        public boolean m;
        public boolean n;
        public Parser o;
        public boolean p;
        public String q;
        public SSLSocketFactory r;
        public SSLContext s;
        public CookieManager t;
        public RequestAuthenticator u;
        public Progress v;
        public final ReentrantLock w;

        static {
            System.setProperty("sun.net.http.allowRestrictedHeaders", "true");
        }

        public Request(Request request) {
            this.f22534a = Base.e;
            this.b = Connection.Method.GET;
            this.f22534a = request.f22534a;
            this.b = request.b;
            this.f22535c = new LinkedHashMap();
            for (Map.Entry entry : request.f22535c.entrySet()) {
                this.f22535c.put((String) entry.getKey(), new ArrayList((Collection) entry.getValue()));
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            this.d = linkedHashMap;
            linkedHashMap.putAll(request.d);
            this.k = null;
            this.m = false;
            this.n = false;
            this.p = false;
            this.q = DataUtil.b;
            this.w = new ReentrantLock();
            this.f = request.f;
            this.q = request.q;
            this.g = request.g;
            this.h = request.h;
            this.i = request.i;
            this.j = new ArrayList();
            this.m = request.m;
            this.n = request.n;
            this.o = request.o.newInstance();
            this.p = request.p;
            this.r = request.r;
            this.s = request.s;
            this.t = request.t;
            this.u = request.u;
            this.v = request.v;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Request addHeader(String str, String str2) {
            super.addHeader(str, str2);
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request auth(RequestAuthenticator requestAuthenticator) {
            this.u = requestAuthenticator;
            return this;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ String cookie(String str) {
            return super.cookie(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public Map cookies() {
            return this.d;
        }

        @Override // org.jsoup.Connection.Request
        public boolean followRedirects() {
            return this.i;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasCookie(String str) {
            return super.hasCookie(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasHeader(String str) {
            return super.hasHeader(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasHeaderWithValue(String str, String str2) {
            return super.hasHeaderWithValue(str, str2);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ String header(String str) {
            return super.header(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ List headers(String str) {
            return super.headers(str);
        }

        @Override // org.jsoup.Connection.Request
        public boolean ignoreContentType() {
            return this.n;
        }

        @Override // org.jsoup.Connection.Request
        public boolean ignoreHttpErrors() {
            return this.m;
        }

        @Override // org.jsoup.Connection.Request
        public int maxBodySize() {
            return this.h;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public Connection.Method method() {
            return this.b;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public Map multiHeaders() {
            return this.f22535c;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request postDataCharset(String str) {
            Validate.notNullParam(str, "charset");
            if (Charset.isSupported(str)) {
                this.q = str;
                return this;
            }
            throw new IllegalCharsetNameException(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Request removeCookie(String str) {
            super.removeCookie(str);
            return this;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Request removeHeader(String str) {
            super.removeHeader(str);
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request requestBody(String str) {
            this.k = str;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request requestBodyStream(InputStream inputStream) {
            this.k = inputStream;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public SSLContext sslContext() {
            return this.s;
        }

        @Override // org.jsoup.Connection.Request
        public SSLSocketFactory sslSocketFactory() {
            return this.r;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ URL url() {
            return super.url();
        }

        @Override // org.jsoup.Connection.Request
        public RequestAuthenticator auth() {
            return this.u;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Request cookie(String str, String str2) {
            super.cookie(str, str2);
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Request data(Connection.KeyVal keyVal) {
            Validate.notNullParam(keyVal, "keyval");
            this.j.add(keyVal);
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request followRedirects(boolean z) {
            this.i = z;
            return this;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Request header(String str, String str2) {
            super.header(str, str2);
            return this;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Map headers() {
            return super.headers();
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request ignoreContentType(boolean z) {
            this.n = z;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request ignoreHttpErrors(boolean z) {
            this.m = z;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request maxBodySize(int i) {
            Validate.isTrue(i >= 0, "maxSize must be 0 (unlimited) or larger");
            this.h = i;
            return this;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Request method(Connection.Method method) {
            super.method(method);
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Request parser(Parser parser) {
            this.o = parser;
            this.p = true;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public String requestBody() {
            Object obj = this.k;
            if (obj instanceof String) {
                return (String) obj;
            }
            return null;
        }

        @Override // org.jsoup.Connection.Request
        public Connection.Request sslContext(SSLContext sSLContext) {
            this.s = sSLContext;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public void sslSocketFactory(SSLSocketFactory sSLSocketFactory) {
            this.r = sSLSocketFactory;
        }

        @Override // org.jsoup.Connection.Request
        public int timeout() {
            return this.g;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Request url(URL url) {
            super.url(url);
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Proxy proxy() {
            return this.f;
        }

        @Override // org.jsoup.Connection.Request
        public Request timeout(int i) {
            Validate.isTrue(i >= 0, "Timeout milliseconds must be 0 (infinite) or greater");
            this.g = i;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public Collection<Connection.KeyVal> data() {
            return this.j;
        }

        @Override // org.jsoup.Connection.Request
        public Parser parser() {
            return this.o;
        }

        @Override // org.jsoup.Connection.Request
        public Request proxy(Proxy proxy) {
            this.f = proxy;
            return this;
        }

        @Override // org.jsoup.Connection.Request
        public String postDataCharset() {
            return this.q;
        }

        @Override // org.jsoup.Connection.Request
        public Request proxy(String str, int i) {
            this.f = new Proxy(Proxy.Type.HTTP, InetSocketAddress.createUnresolved(str, i));
            return this;
        }

        public Request() {
            this.k = null;
            this.m = false;
            this.n = false;
            this.p = false;
            this.q = DataUtil.b;
            this.w = new ReentrantLock();
            this.g = 30000;
            this.h = 2097152;
            this.i = true;
            this.j = new ArrayList();
            this.b = Connection.Method.GET;
            addHeader("Accept-Encoding", "gzip");
            addHeader("User-Agent", HttpConnection.DEFAULT_UA);
            this.o = Parser.htmlParser();
            this.t = new CookieManager();
        }
    }

    /* loaded from: classes4.dex */
    public static class Response extends Base<Connection.Response> implements Connection.Response {
        public static final Pattern r = Pattern.compile("(\\w+)/\\w*\\+?xml.*");
        public int f;
        public ByteBuffer h;
        public ControllableInputStream i;
        public UrlConnectionExecutor j;
        public String k;
        public String l;
        public int m;
        public final Request q;
        public String g = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        public boolean n = false;
        public boolean o = false;
        public int p = 0;

        public Response(Request request) {
            this.q = request;
        }

        /* JADX WARN: Code restructure failed: missing block: B:77:0x0242, code lost:
        
            if (r8.matcher(r1).matches() == false) goto L102;
         */
        /* JADX WARN: Code restructure failed: missing block: B:79:0x0246, code lost:
        
            if (r14.p != false) goto L102;
         */
        /* JADX WARN: Code restructure failed: missing block: B:80:0x0248, code lost:
        
            r14.parser(org.jsoup.parser.Parser.xmlParser());
         */
        /* JADX WARN: Removed duplicated region for block: B:91:0x02a2 A[Catch: all -> 0x01b8, IOException -> 0x01bb, TryCatch #0 {all -> 0x01b8, blocks: (B:39:0x018f, B:42:0x0193, B:44:0x0199, B:46:0x019f, B:48:0x01a5, B:49:0x01bf, B:51:0x01ce, B:53:0x01d7, B:54:0x01db, B:59:0x01f7, B:63:0x0207, B:66:0x020f, B:68:0x0215, B:70:0x021d, B:73:0x0228, B:74:0x0237, B:76:0x023a, B:78:0x0244, B:80:0x0248, B:81:0x024f, B:83:0x025b, B:85:0x0263, B:87:0x026f, B:89:0x0289, B:91:0x02a2, B:97:0x0276, B:99:0x027e, B:100:0x02a8, B:101:0x0201, B:103:0x02bd, B:104:0x02ce, B:108:0x02d2, B:109:0x02d5), top: B:38:0x018f }] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static org.jsoup.helper.HttpConnection.Response b(org.jsoup.helper.HttpConnection.Request r14, org.jsoup.helper.HttpConnection.Response r15) {
            /*
                Method dump skipped, instructions count: 739
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.jsoup.helper.HttpConnection.Response.b(org.jsoup.helper.HttpConnection$Request, org.jsoup.helper.HttpConnection$Response):org.jsoup.helper.HttpConnection$Response");
        }

        public static void c(Request request, BufferedWriter bufferedWriter, OutputStream outputStream) {
            Collection<Connection.KeyVal> data = request.data();
            String str = request.l;
            if (str != null) {
                for (Connection.KeyVal keyVal : data) {
                    bufferedWriter.write("--");
                    bufferedWriter.write(str);
                    bufferedWriter.write("\r\n");
                    bufferedWriter.write("Content-Disposition: form-data; name=\"");
                    String key = keyVal.key();
                    String str2 = HttpConnection.CONTENT_ENCODING;
                    bufferedWriter.write(key.replace("\"", "%22"));
                    bufferedWriter.write("\"");
                    InputStream inputStream = keyVal.inputStream();
                    if (inputStream != null) {
                        bufferedWriter.write("; filename=\"");
                        bufferedWriter.write(keyVal.value().replace("\"", "%22"));
                        bufferedWriter.write("\"\r\nContent-Type: ");
                        String contentType = keyVal.contentType();
                        if (contentType == null) {
                            contentType = "application/octet-stream";
                        }
                        bufferedWriter.write(contentType);
                        bufferedWriter.write("\r\n\r\n");
                        bufferedWriter.flush();
                        Pattern pattern = DataUtil.f22528a;
                        byte[] bArr = new byte[8192];
                        while (true) {
                            int read = inputStream.read(bArr);
                            if (read == -1) {
                                break;
                            } else {
                                outputStream.write(bArr, 0, read);
                            }
                        }
                        outputStream.flush();
                    } else {
                        bufferedWriter.write("\r\n\r\n");
                        bufferedWriter.write(keyVal.value());
                    }
                    bufferedWriter.write("\r\n");
                }
                bufferedWriter.write("--");
                bufferedWriter.write(str);
                bufferedWriter.write("--");
                return;
            }
            Object obj = request.k;
            if (obj != null) {
                if (obj instanceof String) {
                    bufferedWriter.write((String) obj);
                    return;
                }
                if (obj instanceof InputStream) {
                    InputStream inputStream2 = (InputStream) obj;
                    Pattern pattern2 = DataUtil.f22528a;
                    byte[] bArr2 = new byte[8192];
                    while (true) {
                        int read2 = inputStream2.read(bArr2);
                        if (read2 != -1) {
                            outputStream.write(bArr2, 0, read2);
                        } else {
                            outputStream.flush();
                            return;
                        }
                    }
                } else {
                    throw new IllegalStateException();
                }
            } else {
                boolean z = true;
                for (Connection.KeyVal keyVal2 : data) {
                    if (!z) {
                        bufferedWriter.append(Typography.amp);
                    } else {
                        z = false;
                    }
                    bufferedWriter.write(URLEncoder.encode(keyVal2.key(), request.postDataCharset()));
                    bufferedWriter.write(61);
                    bufferedWriter.write(URLEncoder.encode(keyVal2.value(), request.postDataCharset()));
                }
            }
        }

        public static void g(Request request, OutputStream outputStream) {
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, request.postDataCharset());
            try {
                BufferedWriter bufferedWriter = new BufferedWriter(outputStreamWriter);
                try {
                    c(request, bufferedWriter, outputStream);
                    bufferedWriter.close();
                    outputStreamWriter.close();
                } finally {
                }
            } catch (Throwable th) {
                try {
                    outputStreamWriter.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Response addHeader(String str, String str2) {
            super.addHeader(str, str2);
            return this;
        }

        @Override // org.jsoup.Connection.Response
        public String body() {
            Charset forName;
            try {
                readFully();
                Validate.notNull(this.h);
                String str = this.k;
                if (str == null) {
                    forName = DataUtil.UTF_8;
                } else {
                    forName = Charset.forName(str);
                }
                String charBuffer = forName.decode(this.h).toString();
                this.h.rewind();
                return charBuffer;
            } catch (IOException e) {
                throw new UncheckedIOException(e);
            }
        }

        @Override // org.jsoup.Connection.Response
        public byte[] bodyAsBytes() {
            try {
                readFully();
                Validate.notNull(this.h);
                Validate.isTrue(this.h.hasArray());
                byte[] array = this.h.array();
                int arrayOffset = this.h.arrayOffset();
                int limit = this.h.limit();
                if (arrayOffset == 0 && limit == array.length) {
                    return array;
                }
                byte[] bArr = new byte[limit];
                System.arraycopy(array, arrayOffset, bArr, 0, limit);
                return bArr;
            } catch (IOException e) {
                throw new UncheckedIOException(e);
            }
        }

        @Override // org.jsoup.Connection.Response
        public BufferedInputStream bodyStream() {
            Validate.isTrue(this.n, "Request must be executed (with .execute(), .get(), or .post() before getting response body");
            if (this.h != null) {
                return new BufferedInputStream(new ByteArrayInputStream(this.h.array(), 0, this.h.limit()), 8192);
            }
            Validate.isFalse(this.o, "Request has already been read");
            Validate.notNull(this.i);
            this.o = true;
            return this.i.inputStream();
        }

        @Override // org.jsoup.Connection.Response
        public Connection.Response bufferUp() {
            try {
                readFully();
                return this;
            } catch (IOException e) {
                throw new UncheckedIOException(e);
            }
        }

        @Override // org.jsoup.Connection.Response
        public String contentType() {
            return this.l;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ String cookie(String str) {
            return super.cookie(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public Map cookies() {
            return this.d;
        }

        public final ControllableInputStream d() {
            Validate.isTrue(this.n, "Request must be executed (with .execute(), .get(), or .post() before parsing response");
            ControllableInputStream controllableInputStream = this.i;
            if (this.h != null) {
                controllableInputStream = ControllableInputStream.wrap(new ByteArrayInputStream(this.h.array(), 0, this.h.limit()), 0);
                this.o = false;
            }
            Validate.isFalse(this.o, "Input stream already read and parsed, cannot re-read.");
            Validate.notNull(controllableInputStream);
            this.o = true;
            return controllableInputStream;
        }

        public final void e(LinkedHashMap linkedHashMap, Response response) {
            int i;
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                String str = (String) entry.getKey();
                if (str != null) {
                    for (String str2 : (List) entry.getValue()) {
                        if (str2 != null && StandardCharsets.ISO_8859_1.newEncoder().canEncode(str2)) {
                            byte[] bytes = str2.getBytes(HttpConnection.f22532c);
                            boolean z = false;
                            int i2 = 3;
                            if (bytes.length < 3 || (bytes[0] & UByte.MAX_VALUE) != 239 || (bytes[1] & UByte.MAX_VALUE) != 187 || (bytes[2] & UByte.MAX_VALUE) != 191) {
                                i2 = 0;
                            }
                            int length = bytes.length;
                            boolean z2 = false;
                            while (true) {
                                if (i2 < length) {
                                    byte b = bytes[i2];
                                    if ((b & ByteCompanionObject.MIN_VALUE) != 0) {
                                        if ((b & 224) == 192) {
                                            i = i2 + 1;
                                        } else if ((b & 240) == 224) {
                                            i = i2 + 2;
                                        } else if ((b & 248) != 240) {
                                            break;
                                        } else {
                                            i = i2 + 3;
                                        }
                                        if (i >= bytes.length) {
                                            break;
                                        }
                                        while (i2 < i) {
                                            i2++;
                                            if ((bytes[i2] & 192) != 128) {
                                                break;
                                            }
                                        }
                                        z2 = true;
                                    }
                                    i2++;
                                } else {
                                    z = z2;
                                    break;
                                }
                            }
                            if (z) {
                                str2 = new String(bytes, DataUtil.UTF_8);
                            }
                        }
                        addHeader(str, str2);
                    }
                }
            }
            URL url = this.f22534a;
            Map map = CookieUtil.f22527a;
            try {
                this.q.t.put(url.toURI(), linkedHashMap);
                for (Map.Entry entry2 : linkedHashMap.entrySet()) {
                    String str3 = (String) entry2.getKey();
                    List<String> list = (List) entry2.getValue();
                    if (str3.equalsIgnoreCase("Set-Cookie")) {
                        for (String str4 : list) {
                            if (str4 != null) {
                                CharacterReader characterReader = new CharacterReader(str4);
                                String trim = characterReader.consumeTo('=').trim();
                                characterReader.advance();
                                String trim2 = characterReader.consumeTo(';').trim();
                                if (!trim.isEmpty()) {
                                    cookie(trim, trim2);
                                }
                                characterReader.close();
                            }
                        }
                    }
                }
                if (response != null) {
                    for (Map.Entry entry3 : response.cookies().entrySet()) {
                        if (!hasCookie((String) entry3.getKey())) {
                            cookie((String) entry3.getKey(), (String) entry3.getValue());
                        }
                    }
                    response.f();
                    int i3 = response.p + 1;
                    this.p = i3;
                    if (i3 >= 20) {
                        throw new IOException("Too many redirects occurred trying to load URL " + response.url());
                    }
                }
            } catch (URISyntaxException e) {
                MalformedURLException malformedURLException = new MalformedURLException(e.getMessage());
                malformedURLException.initCause(e);
                throw malformedURLException;
            }
        }

        public final void f() {
            ControllableInputStream controllableInputStream = this.i;
            if (controllableInputStream != null) {
                try {
                    controllableInputStream.close();
                } catch (IOException unused) {
                } catch (Throwable th) {
                    this.i = null;
                    throw th;
                }
                this.i = null;
            }
            UrlConnectionExecutor urlConnectionExecutor = this.j;
            if (urlConnectionExecutor != null) {
                urlConnectionExecutor.d();
            }
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasCookie(String str) {
            return super.hasCookie(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasHeader(String str) {
            return super.hasHeader(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ boolean hasHeaderWithValue(String str, String str2) {
            return super.hasHeaderWithValue(str, str2);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ String header(String str) {
            return super.header(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ List headers(String str) {
            return super.headers(str);
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public Connection.Method method() {
            return this.b;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public Map multiHeaders() {
            return this.f22535c;
        }

        @Override // org.jsoup.Connection.Response
        public Document parse() {
            ControllableInputStream d = d();
            String str = this.k;
            String externalForm = this.f22534a.toExternalForm();
            Request request = this.q;
            Document f = DataUtil.f(d, str, externalForm, request.parser());
            f.connection(new HttpConnection(request, this));
            this.k = f.outputSettings().charset().name();
            f();
            return f;
        }

        @Override // org.jsoup.Connection.Response
        public String readBody() {
            readFully();
            return body();
        }

        @Override // org.jsoup.Connection.Response
        public Connection.Response readFully() {
            Validate.isTrue(this.n, "Request must be executed (with .execute(), .get(), or .post() before getting response body");
            if (this.i != null && this.h == null) {
                Validate.isFalse(this.o, "Request has already been read (with .parse())");
                try {
                    this.h = DataUtil.readToByteBuffer(this.i, this.q.maxBodySize());
                    return this;
                } finally {
                    this.o = true;
                    f();
                }
            }
            return this;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Response removeCookie(String str) {
            super.removeCookie(str);
            return this;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Response removeHeader(String str) {
            super.removeHeader(str);
            return this;
        }

        @Override // org.jsoup.Connection.Response
        public int statusCode() {
            return this.f;
        }

        @Override // org.jsoup.Connection.Response
        public String statusMessage() {
            return this.g;
        }

        @Override // org.jsoup.Connection.Response
        public StreamParser streamParser() {
            ControllableInputStream d = d();
            String externalForm = this.f22534a.toExternalForm();
            String str = this.k;
            Request request = this.q;
            DataUtil.CharsetDoc a2 = DataUtil.a(d, str, externalForm, request.parser());
            StreamParser streamParser = new StreamParser(request.parser());
            Charset charset = a2.f22530a;
            streamParser.parse(new BufferedReader(new InputStreamReader(d, charset)), externalForm);
            streamParser.document().connection(new HttpConnection(request, this));
            this.k = charset.name();
            return streamParser;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ URL url() {
            return super.url();
        }

        @Override // org.jsoup.Connection.Response
        public String charset() {
            return this.k;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Response cookie(String str, String str2) {
            super.cookie(str, str2);
            return this;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Response header(String str, String str2) {
            super.header(str, str2);
            return this;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Map headers() {
            return super.headers();
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Response method(Connection.Method method) {
            super.method(method);
            return this;
        }

        @Override // org.jsoup.helper.HttpConnection.Base, org.jsoup.Connection.Base
        public /* bridge */ /* synthetic */ Connection.Response url(URL url) {
            super.url(url);
            return this;
        }

        @Override // org.jsoup.Connection.Response
        public Response charset(String str) {
            this.k = str;
            return this;
        }
    }

    public HttpConnection() {
        this.f22533a = new Request();
    }

    public static Connection connect(String str) {
        HttpConnection httpConnection = new HttpConnection();
        httpConnection.url(str);
        return httpConnection;
    }

    @Override // org.jsoup.Connection
    public Connection auth(RequestAuthenticator requestAuthenticator) {
        this.f22533a.auth(requestAuthenticator);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection cookie(String str, String str2) {
        this.f22533a.cookie(str, str2);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection cookieStore(CookieStore cookieStore) {
        this.f22533a.t = new CookieManager(cookieStore, null);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection cookies(Map<String, String> map) {
        Validate.notNullParam(map, "cookies");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f22533a.cookie(entry.getKey(), entry.getValue());
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection data(String str, String str2) {
        this.f22533a.data((Connection.KeyVal) KeyVal.create(str, str2));
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection.Response execute() {
        Response b = Response.b(this.f22533a, null);
        this.b = b;
        return b;
    }

    @Override // org.jsoup.Connection
    public Connection followRedirects(boolean z) {
        this.f22533a.followRedirects(z);
        return this;
    }

    @Override // org.jsoup.Connection
    public Document get() {
        this.f22533a.method(Connection.Method.GET);
        execute();
        Validate.notNull(this.b);
        return this.b.parse();
    }

    @Override // org.jsoup.Connection
    public Connection header(String str, String str2) {
        this.f22533a.header(str, str2);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection headers(Map<String, String> map) {
        Validate.notNullParam(map, "headers");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f22533a.header(entry.getKey(), entry.getValue());
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection ignoreContentType(boolean z) {
        this.f22533a.ignoreContentType(z);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection ignoreHttpErrors(boolean z) {
        this.f22533a.ignoreHttpErrors(z);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection maxBodySize(int i) {
        this.f22533a.maxBodySize(i);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection method(Connection.Method method) {
        this.f22533a.method(method);
        return this;
    }

    @Override // org.jsoup.Connection
    public final /* synthetic */ Connection newRequest(String str) {
        return a.b(this, str);
    }

    @Override // org.jsoup.Connection
    public Connection onResponseProgress(Progress<Connection.Response> progress) {
        this.f22533a.v = progress;
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection parser(Parser parser) {
        this.f22533a.parser(parser);
        return this;
    }

    @Override // org.jsoup.Connection
    public Document post() {
        this.f22533a.method(Connection.Method.POST);
        execute();
        Validate.notNull(this.b);
        return this.b.parse();
    }

    @Override // org.jsoup.Connection
    public Connection postDataCharset(String str) {
        this.f22533a.postDataCharset(str);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection proxy(Proxy proxy) {
        this.f22533a.proxy(proxy);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection referrer(String str) {
        Validate.notNullParam(str, "referrer");
        this.f22533a.header("Referer", str);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection.Request request() {
        return this.f22533a;
    }

    @Override // org.jsoup.Connection
    public Connection requestBody(String str) {
        this.f22533a.requestBody(str);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection requestBodyStream(InputStream inputStream) {
        this.f22533a.requestBodyStream(inputStream);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection.Response response() {
        Connection.Response response = this.b;
        if (response != null) {
            return response;
        }
        throw new IllegalArgumentException("You must execute the request before getting a response.");
    }

    @Override // org.jsoup.Connection
    public Connection sslContext(SSLContext sSLContext) {
        this.f22533a.sslContext(sSLContext);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection sslSocketFactory(SSLSocketFactory sSLSocketFactory) {
        this.f22533a.sslSocketFactory(sSLSocketFactory);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection timeout(int i) {
        this.f22533a.timeout(i);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection url(URL url) {
        this.f22533a.url(url);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection userAgent(String str) {
        Validate.notNullParam(str, "userAgent");
        this.f22533a.header("User-Agent", str);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection data(String str, String str2, InputStream inputStream) {
        this.f22533a.data((Connection.KeyVal) KeyVal.create(str, str2, inputStream));
        return this;
    }

    @Override // org.jsoup.Connection
    public final /* synthetic */ Connection newRequest(URL url) {
        return a.c(this, url);
    }

    @Override // org.jsoup.Connection
    public Connection proxy(String str, int i) {
        this.f22533a.proxy(str, i);
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection request(Connection.Request request) {
        this.f22533a = (Request) request;
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection url(String str) {
        Validate.notEmptyParam(str, ImagesContract.URL);
        try {
            this.f22533a.url(new URL(str));
            return this;
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(android.support.v4.media.a.l("The supplied URL, '", str, "', is malformed. Make sure it is an absolute URL, and starts with 'http://' or 'https://'. See https://jsoup.org/cookbook/extracting-data/working-with-urls"), e);
        }
    }

    public HttpConnection(Request request, Response response) {
        this.f22533a = request;
        this.b = response;
    }

    public static Connection connect(URL url) {
        HttpConnection httpConnection = new HttpConnection();
        httpConnection.url(url);
        return httpConnection;
    }

    @Override // org.jsoup.Connection
    public CookieStore cookieStore() {
        return this.f22533a.t.getCookieStore();
    }

    @Override // org.jsoup.Connection
    public Connection data(String str, String str2, InputStream inputStream, String str3) {
        this.f22533a.data(KeyVal.create(str, str2, inputStream).contentType(str3));
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [org.jsoup.Connection, org.jsoup.helper.HttpConnection, java.lang.Object] */
    @Override // org.jsoup.Connection
    public Connection newRequest() {
        Request request = this.f22533a;
        ?? obj = new Object();
        obj.f22533a = new Request(request);
        return obj;
    }

    @Override // org.jsoup.Connection
    public Connection response(Connection.Response response) {
        this.b = response;
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection data(Map<String, String> map) {
        Validate.notNullParam(map, "data");
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f22533a.data((Connection.KeyVal) KeyVal.create(entry.getKey(), entry.getValue()));
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection data(String... strArr) {
        Validate.notNullParam(strArr, "keyvals");
        Validate.isTrue(strArr.length % 2 == 0, "Must supply an even number of key value pairs");
        for (int i = 0; i < strArr.length; i += 2) {
            String str = strArr[i];
            String str2 = strArr[i + 1];
            Validate.notEmpty(str, "Data key must not be empty");
            Validate.notNull(str2, "Data value must not be null");
            this.f22533a.data((Connection.KeyVal) KeyVal.create(str, str2));
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection data(Collection<Connection.KeyVal> collection) {
        Validate.notNullParam(collection, "data");
        Iterator<Connection.KeyVal> it = collection.iterator();
        while (it.hasNext()) {
            this.f22533a.data(it.next());
        }
        return this;
    }

    @Override // org.jsoup.Connection
    public Connection.KeyVal data(String str) {
        Validate.notEmptyParam(str, "key");
        for (Connection.KeyVal keyVal : request().data()) {
            if (keyVal.key().equals(str)) {
                return keyVal;
            }
        }
        return null;
    }
}
