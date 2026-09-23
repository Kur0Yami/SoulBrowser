package fi.iki.elonen;

import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpMethods;
import com.google.api.client.http.HttpStatusCodes;
import j$.util.DesugarCollections;
import j$.util.DesugarTimeZone;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutput;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.net.URLDecoder;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.StringTokenizer;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.zip.GZIPOutputStream;
import javax.net.ssl.SSLException;
import kotlin.io.ConstantsKt;
import org.jsoup.helper.HttpConnection;

/* loaded from: classes3.dex */
public abstract class NanoHTTPD {
    public static final Pattern e = Pattern.compile("([ |\t]*Content-Disposition[ |\t]*:)(.*)", 2);
    public static final Pattern f = Pattern.compile("([ |\t]*content-type[ |\t]*:)(.*)", 2);
    public static final Pattern g = Pattern.compile("[ |\t]*([a-zA-Z]*)[ |\t]*=[ |\t]*['|\"]([^\"^']*)['|\"]");
    public static final Logger h = Logger.getLogger(NanoHTTPD.class.getName());

    /* renamed from: a, reason: collision with root package name */
    public volatile ServerSocket f21011a;
    public Thread b;
    public final TempFileManagerFactory d = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final DefaultAsyncRunner f21012c = new DefaultAsyncRunner();

    /* loaded from: classes3.dex */
    public interface AsyncRunner {
    }

    /* loaded from: classes3.dex */
    public class ClientHandler implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final InputStream f21013c;
        public final Socket f;

        public ClientHandler(InputStream inputStream, Socket socket) {
            this.f21013c = inputStream;
            this.f = socket;
        }

        @Override // java.lang.Runnable
        public final void run() {
            OutputStream outputStream;
            InputStream inputStream = this.f21013c;
            NanoHTTPD nanoHTTPD = NanoHTTPD.this;
            Socket socket = this.f;
            OutputStream outputStream2 = null;
            try {
                try {
                    outputStream = socket.getOutputStream();
                } catch (Exception e) {
                    e = e;
                }
            } catch (Throwable th) {
                th = th;
            }
            try {
                HTTPSession hTTPSession = new HTTPSession(new DefaultTempFileManager(), this.f21013c, outputStream, socket.getInetAddress());
                while (!socket.isClosed()) {
                    hTTPSession.d();
                }
                NanoHTTPD.d(outputStream);
            } catch (Exception e2) {
                e = e2;
                outputStream2 = outputStream;
                if ((!(e instanceof SocketException) || !"NanoHttpd Shutdown".equals(e.getMessage())) && !(e instanceof SocketTimeoutException)) {
                    NanoHTTPD.h.log(Level.SEVERE, "Communication with the client broken, or an bug in the handler code", (Throwable) e);
                }
                NanoHTTPD.d(outputStream2);
                NanoHTTPD.d(inputStream);
                NanoHTTPD.d(socket);
                nanoHTTPD.f21012c.a(this);
            } catch (Throwable th2) {
                th = th2;
                outputStream2 = outputStream;
                NanoHTTPD.d(outputStream2);
                NanoHTTPD.d(inputStream);
                NanoHTTPD.d(socket);
                nanoHTTPD.f21012c.a(this);
                throw th;
            }
            NanoHTTPD.d(inputStream);
            NanoHTTPD.d(socket);
            nanoHTTPD.f21012c.a(this);
        }
    }

    /* loaded from: classes3.dex */
    public static class ContentType {
        public static final Pattern e = Pattern.compile("[ |\t]*([^/^ ^;^,]+/[^ ^;^,]+)", 2);
        public static final Pattern f = Pattern.compile("[ |\t]*(charset)[ |\t]*=[ |\t]*['|\"]?([^\"^'^;^,]*)['|\"]?", 2);
        public static final Pattern g = Pattern.compile("[ |\t]*(boundary)[ |\t]*=[ |\t]*['|\"]?([^\"^'^;^,]*)['|\"]?", 2);

        /* renamed from: a, reason: collision with root package name */
        public final String f21014a;
        public final String b;

        /* renamed from: c, reason: collision with root package name */
        public final String f21015c;
        public final String d;

        public ContentType(String str) {
            String str2;
            this.f21014a = str;
            String str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            if (str != null) {
                Matcher matcher = e.matcher(str);
                this.b = matcher.find() ? matcher.group(1) : str3;
                Matcher matcher2 = f.matcher(str);
                if (matcher2.find()) {
                    str2 = matcher2.group(2);
                } else {
                    str2 = null;
                }
                this.f21015c = str2;
            } else {
                this.b = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                this.f21015c = "UTF-8";
            }
            if (HttpConnection.MULTIPART_FORM_DATA.equalsIgnoreCase(this.b)) {
                Matcher matcher3 = g.matcher(str);
                this.d = matcher3.find() ? matcher3.group(2) : null;
            } else {
                this.d = null;
            }
        }

        public final String a() {
            String str = this.f21015c;
            if (str == null) {
                return "US-ASCII";
            }
            return str;
        }
    }

    /* loaded from: classes3.dex */
    public static class Cookie {
    }

    /* loaded from: classes3.dex */
    public class CookieHandler implements Iterable<String> {

        /* renamed from: c, reason: collision with root package name */
        public final HashMap f21016c = new HashMap();
        public final ArrayList f = new ArrayList();

        public CookieHandler(HashMap hashMap) {
            String str = (String) hashMap.get("cookie");
            if (str != null) {
                for (String str2 : str.split(";")) {
                    String[] split2 = str2.trim().split("=");
                    if (split2.length == 2) {
                        this.f21016c.put(split2[0], split2[1]);
                    }
                }
            }
        }

        public final void a(Response response) {
            ArrayList arrayList = this.f;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                ((Cookie) obj).getClass();
                response.a("Set-Cookie", "null=null; expires=null");
            }
        }

        @Override // java.lang.Iterable
        public final Iterator<String> iterator() {
            return this.f21016c.keySet().iterator();
        }
    }

    /* loaded from: classes3.dex */
    public static class DefaultAsyncRunner implements AsyncRunner {

        /* renamed from: a, reason: collision with root package name */
        public long f21017a;
        public final List b = DesugarCollections.synchronizedList(new ArrayList());

        public final void a(ClientHandler clientHandler) {
            this.b.remove(clientHandler);
        }

        public final void b(ClientHandler clientHandler) {
            this.f21017a++;
            Thread thread = new Thread(clientHandler);
            thread.setDaemon(true);
            thread.setName("NanoHttpd Request Processor (#" + this.f21017a + ")");
            this.b.add(clientHandler);
            thread.start();
        }
    }

    /* loaded from: classes3.dex */
    public static class DefaultServerSocketFactory implements ServerSocketFactory {
    }

    /* loaded from: classes3.dex */
    public static class DefaultTempFile implements TempFile {

        /* renamed from: a, reason: collision with root package name */
        public final File f21018a;
        public final FileOutputStream b;

        public DefaultTempFile(File file) {
            File createTempFile = File.createTempFile("NanoHTTPD-", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, file);
            this.f21018a = createTempFile;
            this.b = new FileOutputStream(createTempFile);
        }

        @Override // fi.iki.elonen.NanoHTTPD.TempFile
        public final void a() {
            NanoHTTPD.d(this.b);
            File file = this.f21018a;
            if (file.delete()) {
                return;
            }
            throw new Exception("could not delete temporary file: " + file.getAbsolutePath());
        }
    }

    /* loaded from: classes3.dex */
    public static class DefaultTempFileManager implements TempFileManager {

        /* renamed from: a, reason: collision with root package name */
        public final File f21019a;
        public final ArrayList b;

        public DefaultTempFileManager() {
            File file = new File(System.getProperty("java.io.tmpdir"));
            this.f21019a = file;
            if (!file.exists()) {
                file.mkdirs();
            }
            this.b = new ArrayList();
        }

        @Override // fi.iki.elonen.NanoHTTPD.TempFileManager
        public final DefaultTempFile a() {
            DefaultTempFile defaultTempFile = new DefaultTempFile(this.f21019a);
            this.b.add(defaultTempFile);
            return defaultTempFile;
        }

        @Override // fi.iki.elonen.NanoHTTPD.TempFileManager
        public final void clear() {
            ArrayList arrayList = this.b;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                try {
                    ((TempFile) obj).a();
                } catch (Exception e) {
                    NanoHTTPD.h.log(Level.WARNING, "could not delete file ", (Throwable) e);
                }
            }
            arrayList.clear();
        }
    }

    /* loaded from: classes3.dex */
    public class DefaultTempFileManagerFactory implements TempFileManagerFactory {
    }

    /* loaded from: classes3.dex */
    public class HTTPSession implements IHTTPSession {

        /* renamed from: a, reason: collision with root package name */
        public final TempFileManager f21020a;
        public final OutputStream b;

        /* renamed from: c, reason: collision with root package name */
        public final BufferedInputStream f21021c;
        public int d;
        public int e;
        public String f;
        public Method g;
        public HashMap h;
        public HashMap i;
        public CookieHandler j;
        public String k;
        public final String l;
        public String m;

        public HTTPSession(TempFileManager tempFileManager, InputStream inputStream, OutputStream outputStream, InetAddress inetAddress) {
            String str;
            this.f21020a = tempFileManager;
            this.f21021c = new BufferedInputStream(inputStream, 8192);
            this.b = outputStream;
            if (!inetAddress.isLoopbackAddress() && !inetAddress.isAnyLocalAddress()) {
                str = inetAddress.getHostAddress().toString();
            } else {
                str = "127.0.0.1";
            }
            this.l = str;
            if (!inetAddress.isLoopbackAddress() && !inetAddress.isAnyLocalAddress()) {
                inetAddress.getHostName().getClass();
            }
            this.i = new HashMap();
        }

        public static int e(byte[] bArr, int i) {
            int i2;
            int i3 = 0;
            while (true) {
                int i4 = i3 + 1;
                if (i4 >= i) {
                    return 0;
                }
                byte b = bArr[i3];
                if (b == 13 && bArr[i4] == 10 && (i2 = i3 + 3) < i && bArr[i3 + 2] == 13 && bArr[i2] == 10) {
                    return i3 + 4;
                }
                if (b == 10 && bArr[i4] == 10) {
                    return i3 + 2;
                }
                i3 = i4;
            }
        }

        public static int[] f(ByteBuffer byteBuffer, byte[] bArr) {
            int i;
            int[] iArr = new int[0];
            if (byteBuffer.remaining() < bArr.length) {
                return iArr;
            }
            int length = bArr.length + ConstantsKt.DEFAULT_BLOCK_SIZE;
            byte[] bArr2 = new byte[length];
            if (byteBuffer.remaining() < length) {
                i = byteBuffer.remaining();
            } else {
                i = length;
            }
            byteBuffer.get(bArr2, 0, i);
            int length2 = i - bArr.length;
            int i2 = 0;
            do {
                for (int i3 = 0; i3 < length2; i3++) {
                    for (int i4 = 0; i4 < bArr.length && bArr2[i3 + i4] == bArr[i4]; i4++) {
                        if (i4 == bArr.length - 1) {
                            int[] iArr2 = new int[iArr.length + 1];
                            System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                            iArr2[iArr.length] = i2 + i3;
                            iArr = iArr2;
                        }
                    }
                }
                i2 += length2;
                System.arraycopy(bArr2, length - bArr.length, bArr2, 0, bArr.length);
                length2 = length - bArr.length;
                if (byteBuffer.remaining() < length2) {
                    length2 = byteBuffer.remaining();
                }
                byteBuffer.get(bArr2, bArr.length, length2);
            } while (length2 > 0);
            return iArr;
        }

        public final void a(BufferedReader bufferedReader, HashMap hashMap, HashMap hashMap2, HashMap hashMap3) {
            String b;
            try {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    return;
                }
                StringTokenizer stringTokenizer = new StringTokenizer(readLine);
                boolean hasMoreTokens = stringTokenizer.hasMoreTokens();
                Response.Status status = Response.Status.BAD_REQUEST;
                if (hasMoreTokens) {
                    hashMap.put("method", stringTokenizer.nextToken());
                    if (stringTokenizer.hasMoreTokens()) {
                        String nextToken = stringTokenizer.nextToken();
                        int indexOf = nextToken.indexOf(63);
                        if (indexOf >= 0) {
                            c(nextToken.substring(indexOf + 1), hashMap2);
                            b = NanoHTTPD.b(nextToken.substring(0, indexOf));
                        } else {
                            b = NanoHTTPD.b(nextToken);
                        }
                        if (stringTokenizer.hasMoreTokens()) {
                            this.m = stringTokenizer.nextToken();
                        } else {
                            this.m = "HTTP/1.1";
                            NanoHTTPD.h.log(Level.FINE, "no protocol version specified, strange. Assuming HTTP/1.1.");
                        }
                        String readLine2 = bufferedReader.readLine();
                        while (readLine2 != null && !readLine2.trim().isEmpty()) {
                            int indexOf2 = readLine2.indexOf(58);
                            if (indexOf2 >= 0) {
                                hashMap3.put(readLine2.substring(0, indexOf2).trim().toLowerCase(Locale.US), readLine2.substring(indexOf2 + 1).trim());
                            }
                            readLine2 = bufferedReader.readLine();
                        }
                        hashMap.put("uri", b);
                        return;
                    }
                    throw new ResponseException(status, "BAD REQUEST: Missing URI. Usage: GET /example/file.html");
                }
                throw new ResponseException(status, "BAD REQUEST: Syntax error. Usage: GET /example/file.html");
            } catch (IOException e) {
                throw new ResponseException("SERVER INTERNAL ERROR: IOException: " + e.getMessage(), e);
            }
        }

        public final void b(ContentType contentType, ByteBuffer byteBuffer, HashMap hashMap, HashMap hashMap2) {
            int[] f;
            int length;
            Response.Status status;
            int i;
            String str;
            ContentType contentType2 = contentType;
            String str2 = contentType2.d;
            Response.Status status2 = Response.Status.INTERNAL_ERROR;
            try {
                f = f(byteBuffer, str2.getBytes());
                length = f.length;
                status = Response.Status.BAD_REQUEST;
            } catch (ResponseException e) {
                throw e;
            } catch (Exception e2) {
                e = e2;
            }
            try {
                if (length >= 2) {
                    int i2 = 1024;
                    byte[] bArr = new byte[1024];
                    int i3 = 0;
                    int i4 = 0;
                    int i5 = 0;
                    while (i4 < f.length - 1) {
                        byteBuffer.position(f[i4]);
                        if (byteBuffer.remaining() < i2) {
                            i = byteBuffer.remaining();
                        } else {
                            i = i2;
                        }
                        byteBuffer.get(bArr, i3, i);
                        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr, i3, i), Charset.forName(contentType2.a())), i);
                        String readLine = bufferedReader.readLine();
                        if (readLine != null && readLine.contains(str2)) {
                            String readLine2 = bufferedReader.readLine();
                            String str3 = null;
                            String str4 = null;
                            int i6 = i5;
                            int i7 = 2;
                            String str5 = null;
                            while (readLine2 != null && readLine2.trim().length() > 0) {
                                Matcher matcher = NanoHTTPD.e.matcher(readLine2);
                                if (matcher.matches()) {
                                    str = str2;
                                    Matcher matcher2 = NanoHTTPD.g.matcher(matcher.group(2));
                                    while (matcher2.find()) {
                                        int[] iArr = f;
                                        String group = matcher2.group(1);
                                        if ("name".equalsIgnoreCase(group)) {
                                            str3 = matcher2.group(2);
                                        } else if ("filename".equalsIgnoreCase(group)) {
                                            String group2 = matcher2.group(2);
                                            if (!group2.isEmpty()) {
                                                if (i6 > 0) {
                                                    str5 = group2;
                                                    i6++;
                                                    str3 = str3 + String.valueOf(i6);
                                                } else {
                                                    i6++;
                                                }
                                            }
                                            str5 = group2;
                                        }
                                        f = iArr;
                                    }
                                } else {
                                    str = str2;
                                }
                                int[] iArr2 = f;
                                Matcher matcher3 = NanoHTTPD.f.matcher(readLine2);
                                if (matcher3.matches()) {
                                    str4 = matcher3.group(2).trim();
                                }
                                readLine2 = bufferedReader.readLine();
                                i7++;
                                f = iArr2;
                                str2 = str;
                            }
                            String str6 = str2;
                            int[] iArr3 = f;
                            int i8 = 0;
                            while (true) {
                                int i9 = i7 - 1;
                                if (i7 <= 0) {
                                    break;
                                }
                                while (bArr[i8] != 10) {
                                    i8++;
                                }
                                i8++;
                                i7 = i9;
                            }
                            if (i8 < i - 4) {
                                int i10 = iArr3[i4] + i8;
                                i4++;
                                int i11 = iArr3[i4] - 4;
                                byteBuffer.position(i10);
                                List list = (List) hashMap.get(str3);
                                if (list == null) {
                                    list = new ArrayList();
                                    hashMap.put(str3, list);
                                }
                                if (str4 == null) {
                                    byte[] bArr2 = new byte[i11 - i10];
                                    byteBuffer.get(bArr2);
                                    list.add(new String(bArr2, contentType.a()));
                                } else {
                                    String h = h(byteBuffer, i10, i11 - i10, str5);
                                    if (!hashMap2.containsKey(str3)) {
                                        hashMap2.put(str3, h);
                                    } else {
                                        int i12 = 2;
                                        while (true) {
                                            if (!hashMap2.containsKey(str3 + i12)) {
                                                break;
                                            } else {
                                                i12++;
                                            }
                                        }
                                        hashMap2.put(str3 + i12, h);
                                    }
                                    list.add(str5);
                                }
                                contentType2 = contentType;
                                f = iArr3;
                                i5 = i6;
                                str2 = str6;
                                i2 = 1024;
                                i3 = 0;
                            } else {
                                throw new ResponseException(status2, "Multipart header size exceeds MAX_HEADER_SIZE.");
                            }
                        } else {
                            throw new ResponseException(status, "BAD REQUEST: Content type is multipart/form-data but chunk does not start with boundary.");
                        }
                    }
                    return;
                }
                throw new ResponseException(status, "BAD REQUEST: Content type is multipart/form-data but contains less than two boundary strings.");
            } catch (ResponseException e3) {
                throw e3;
            } catch (Exception e4) {
                e = e4;
                throw new ResponseException(status2, e.toString());
            }
        }

        public final void c(String str, Map map) {
            String trim;
            String str2;
            if (str == null) {
                this.k = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                return;
            }
            this.k = str;
            StringTokenizer stringTokenizer = new StringTokenizer(str, "&");
            while (stringTokenizer.hasMoreTokens()) {
                String nextToken = stringTokenizer.nextToken();
                int indexOf = nextToken.indexOf(61);
                if (indexOf >= 0) {
                    trim = NanoHTTPD.b(nextToken.substring(0, indexOf)).trim();
                    str2 = NanoHTTPD.b(nextToken.substring(indexOf + 1));
                } else {
                    trim = NanoHTTPD.b(nextToken).trim();
                    str2 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                }
                List list = (List) map.get(trim);
                if (list == null) {
                    list = new ArrayList();
                    map.put(trim, list);
                }
                list.add(str2);
            }
        }

        public final void d() {
            boolean z;
            Response.Status status = Response.Status.INTERNAL_ERROR;
            NanoHTTPD nanoHTTPD = NanoHTTPD.this;
            TempFileManager tempFileManager = this.f21020a;
            BufferedInputStream bufferedInputStream = this.f21021c;
            OutputStream outputStream = this.b;
            try {
                try {
                    try {
                        try {
                            byte[] bArr = new byte[8192];
                            boolean z2 = false;
                            this.d = 0;
                            this.e = 0;
                            bufferedInputStream.mark(8192);
                            try {
                                int read = bufferedInputStream.read(bArr, 0, 8192);
                                if (read == -1) {
                                    NanoHTTPD.d(bufferedInputStream);
                                    NanoHTTPD.d(outputStream);
                                    throw new SocketException("NanoHttpd Shutdown");
                                }
                                while (read > 0) {
                                    int i = this.e + read;
                                    this.e = i;
                                    int e = e(bArr, i);
                                    this.d = e;
                                    if (e > 0) {
                                        break;
                                    }
                                    int i2 = this.e;
                                    read = bufferedInputStream.read(bArr, i2, 8192 - i2);
                                }
                                if (this.d < this.e) {
                                    bufferedInputStream.reset();
                                    bufferedInputStream.skip(this.d);
                                }
                                this.h = new HashMap();
                                HashMap hashMap = this.i;
                                if (hashMap == null) {
                                    this.i = new HashMap();
                                } else {
                                    hashMap.clear();
                                }
                                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new ByteArrayInputStream(bArr, 0, this.e)));
                                HashMap hashMap2 = new HashMap();
                                a(bufferedReader, hashMap2, this.h, this.i);
                                String str = this.l;
                                if (str != null) {
                                    this.i.put("remote-addr", str);
                                    this.i.put("http-client-ip", str);
                                }
                                Method a2 = Method.a((String) hashMap2.get("method"));
                                this.g = a2;
                                if (a2 != null) {
                                    this.f = (String) hashMap2.get("uri");
                                    this.j = new CookieHandler(this.i);
                                    String str2 = (String) this.i.get("connection");
                                    if ("HTTP/1.1".equals(this.m) && (str2 == null || !str2.matches("(?i).*close.*"))) {
                                        z = true;
                                    } else {
                                        z = false;
                                    }
                                    Response e2 = nanoHTTPD.e(this);
                                    String str3 = (String) this.i.get("accept-encoding");
                                    this.j.a(e2);
                                    e2.m(this.g);
                                    if (NanoHTTPD.g(e2) && str3 != null && str3.contains("gzip")) {
                                        z2 = true;
                                    }
                                    e2.k(z2);
                                    e2.l(z);
                                    e2.f(outputStream);
                                    if (z && !e2.d()) {
                                        NanoHTTPD.d(e2);
                                        tempFileManager.clear();
                                        return;
                                    }
                                    throw new SocketException("NanoHttpd Shutdown");
                                }
                                throw new ResponseException(Response.Status.BAD_REQUEST, "BAD REQUEST: Syntax error. HTTP verb " + ((String) hashMap2.get("method")) + " unhandled.");
                            } catch (SSLException e3) {
                                throw e3;
                            } catch (IOException unused) {
                                NanoHTTPD.d(bufferedInputStream);
                                NanoHTTPD.d(outputStream);
                                throw new SocketException("NanoHttpd Shutdown");
                            }
                        } catch (ResponseException e4) {
                            NanoHTTPD.c(e4.a(), "text/plain", e4.getMessage()).f(outputStream);
                            NanoHTTPD.d(outputStream);
                            NanoHTTPD.d(null);
                            tempFileManager.clear();
                        }
                    } catch (SSLException e5) {
                        NanoHTTPD.c(status, "text/plain", "SSL PROTOCOL FAILURE: " + e5.getMessage()).f(outputStream);
                        NanoHTTPD.d(outputStream);
                        NanoHTTPD.d(null);
                        tempFileManager.clear();
                    } catch (IOException e6) {
                        NanoHTTPD.c(status, "text/plain", "SERVER INTERNAL ERROR: IOException: " + e6.getMessage()).f(outputStream);
                        NanoHTTPD.d(outputStream);
                        NanoHTTPD.d(null);
                        tempFileManager.clear();
                    }
                } catch (SocketException e7) {
                    throw e7;
                } catch (SocketTimeoutException e8) {
                    throw e8;
                }
            } catch (Throwable th) {
                NanoHTTPD.d(null);
                tempFileManager.clear();
                throw th;
            }
        }

        public final void g(HashMap hashMap) {
            long j;
            RandomAccessFile randomAccessFile;
            ByteArrayOutputStream byteArrayOutputStream;
            DataOutput dataOutput;
            ByteBuffer map;
            RandomAccessFile randomAccessFile2 = null;
            try {
                if (this.i.containsKey("content-length")) {
                    j = Long.parseLong((String) this.i.get("content-length"));
                } else {
                    int i = this.d;
                    int i2 = this.e;
                    if (i < i2) {
                        j = i2 - i;
                    } else {
                        j = 0;
                    }
                }
                if (j < PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) {
                    byteArrayOutputStream = new ByteArrayOutputStream();
                    dataOutput = new DataOutputStream(byteArrayOutputStream);
                    randomAccessFile = null;
                } else {
                    try {
                        randomAccessFile = new RandomAccessFile(this.f21020a.a().f21018a.getAbsolutePath(), "rw");
                        byteArrayOutputStream = null;
                        dataOutput = randomAccessFile;
                    } catch (Exception e) {
                        throw new Error(e);
                    }
                }
                try {
                    byte[] bArr = new byte[512];
                    while (this.e >= 0 && j > 0) {
                        int read = this.f21021c.read(bArr, 0, (int) Math.min(j, 512L));
                        this.e = read;
                        j -= read;
                        if (read > 0) {
                            dataOutput.write(bArr, 0, read);
                        }
                    }
                    if (byteArrayOutputStream != null) {
                        map = ByteBuffer.wrap(byteArrayOutputStream.toByteArray(), 0, byteArrayOutputStream.size());
                    } else {
                        map = randomAccessFile.getChannel().map(FileChannel.MapMode.READ_ONLY, 0L, randomAccessFile.length());
                        randomAccessFile.seek(0L);
                    }
                    if (Method.f.equals(this.g)) {
                        ContentType contentType = new ContentType((String) this.i.get("content-type"));
                        String str = contentType.b;
                        if (HttpConnection.MULTIPART_FORM_DATA.equalsIgnoreCase(str)) {
                            if (contentType.d != null) {
                                b(contentType, map, this.h, hashMap);
                            } else {
                                throw new ResponseException(Response.Status.BAD_REQUEST, "BAD REQUEST: Content type is multipart/form-data but boundary missing. Usage: GET /example/file.html");
                            }
                        } else {
                            byte[] bArr2 = new byte[map.remaining()];
                            map.get(bArr2);
                            String trim = new String(bArr2, contentType.a()).trim();
                            if ("application/x-www-form-urlencoded".equalsIgnoreCase(str)) {
                                c(trim, this.h);
                            } else if (trim.length() != 0) {
                                hashMap.put("postData", trim);
                            }
                        }
                    } else if (Method.f21022c.equals(this.g)) {
                        hashMap.put("content", h(map, 0, map.limit(), null));
                    }
                    NanoHTTPD.d(randomAccessFile);
                } catch (Throwable th) {
                    th = th;
                    randomAccessFile2 = randomAccessFile;
                    NanoHTTPD.d(randomAccessFile2);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                NanoHTTPD.d(randomAccessFile2);
                throw th;
            }
        }

        public final String h(ByteBuffer byteBuffer, int i, int i2, String str) {
            File file;
            ByteBuffer duplicate;
            FileOutputStream fileOutputStream;
            if (i2 > 0) {
                FileOutputStream fileOutputStream2 = null;
                try {
                    try {
                        file = this.f21020a.a().f21018a;
                        duplicate = byteBuffer.duplicate();
                        fileOutputStream = new FileOutputStream(file.getAbsolutePath());
                    } catch (Exception e) {
                        e = e;
                    }
                } catch (Throwable th) {
                    th = th;
                }
                try {
                    FileChannel channel = fileOutputStream.getChannel();
                    duplicate.position(i).limit(i + i2);
                    channel.write(duplicate.slice());
                    String absolutePath = file.getAbsolutePath();
                    NanoHTTPD.d(fileOutputStream);
                    return absolutePath;
                } catch (Exception e2) {
                    e = e2;
                    fileOutputStream2 = fileOutputStream;
                    throw new Error(e);
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream2 = fileOutputStream;
                    NanoHTTPD.d(fileOutputStream2);
                    throw th;
                }
            }
            return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
    }

    /* loaded from: classes3.dex */
    public interface IHTTPSession {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class Method {

        /* renamed from: c, reason: collision with root package name */
        public static final Method f21022c;
        public static final Method f;
        public static final Method g;
        public static final /* synthetic */ Method[] h;

        /* JADX INFO: Fake field, exist only in values array */
        Method EF0;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, fi.iki.elonen.NanoHTTPD$Method] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, fi.iki.elonen.NanoHTTPD$Method] */
        /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, fi.iki.elonen.NanoHTTPD$Method] */
        static {
            Enum r0 = new Enum(HttpMethods.GET, 0);
            ?? r1 = new Enum(HttpMethods.PUT, 1);
            f21022c = r1;
            ?? r3 = new Enum(HttpMethods.POST, 2);
            f = r3;
            Enum r5 = new Enum(HttpMethods.DELETE, 3);
            ?? r7 = new Enum(HttpMethods.HEAD, 4);
            g = r7;
            h = new Method[]{r0, r1, r3, r5, r7, new Enum(HttpMethods.OPTIONS, 5), new Enum(HttpMethods.TRACE, 6), new Enum(HttpMethods.CONNECT, 7), new Enum(HttpMethods.PATCH, 8), new Enum("PROPFIND", 9), new Enum("PROPPATCH", 10), new Enum("MKCOL", 11), new Enum("MOVE", 12), new Enum("COPY", 13), new Enum("LOCK", 14), new Enum("UNLOCK", 15)};
        }

        public static Method a(String str) {
            if (str == null) {
                return null;
            }
            try {
                return valueOf(str);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }

        public static Method valueOf(String str) {
            return (Method) Enum.valueOf(Method.class, str);
        }

        public static Method[] values() {
            return (Method[]) h.clone();
        }
    }

    /* loaded from: classes3.dex */
    public static class Response implements Closeable {

        /* renamed from: c, reason: collision with root package name */
        public final IStatus f21023c;
        public final String f;
        public final InputStream g;
        public final long h;
        public final Map i = new AnonymousClass1();
        public final HashMap j = new HashMap();
        public Method k;
        public boolean l;
        public boolean m;
        public boolean n;

        /* renamed from: fi.iki.elonen.NanoHTTPD$Response$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 extends HashMap<String, String> {
            public AnonymousClass1() {
            }

            @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
            public final Object put(Object obj, Object obj2) {
                String lowerCase;
                String str = (String) obj;
                String str2 = (String) obj2;
                HashMap hashMap = Response.this.j;
                if (str == null) {
                    lowerCase = str;
                } else {
                    lowerCase = str.toLowerCase();
                }
                hashMap.put(lowerCase, str2);
                return (String) super.put(str, str2);
            }
        }

        /* loaded from: classes3.dex */
        public interface IStatus {
            String getDescription();
        }

        /* loaded from: classes3.dex */
        public enum Status implements IStatus {
            /* JADX INFO: Fake field, exist only in values array */
            TOO_MANY_REQUESTS(101, "Switching Protocols"),
            OK(HttpStatusCodes.STATUS_CODE_OK, "OK"),
            /* JADX INFO: Fake field, exist only in values array */
            PRECONDITION_FAILED(HttpStatusCodes.STATUS_CODE_CREATED, "Created"),
            /* JADX INFO: Fake field, exist only in values array */
            ACCEPTED(HttpStatusCodes.STATUS_CODE_ACCEPTED, "Accepted"),
            /* JADX INFO: Fake field, exist only in values array */
            NO_CONTENT(HttpStatusCodes.STATUS_CODE_NO_CONTENT, "No Content"),
            PARTIAL_CONTENT(206, "Partial Content"),
            /* JADX INFO: Fake field, exist only in values array */
            MULTI_STATUS(207, "Multi-Status"),
            /* JADX INFO: Fake field, exist only in values array */
            REDIRECT(HttpStatusCodes.STATUS_CODE_MOVED_PERMANENTLY, "Moved Permanently"),
            /* JADX INFO: Fake field, exist only in values array */
            FOUND(HttpStatusCodes.STATUS_CODE_FOUND, "Found"),
            /* JADX INFO: Fake field, exist only in values array */
            REDIRECT_SEE_OTHER(HttpStatusCodes.STATUS_CODE_SEE_OTHER, "See Other"),
            NOT_MODIFIED(HttpStatusCodes.STATUS_CODE_NOT_MODIFIED, "Not Modified"),
            /* JADX INFO: Fake field, exist only in values array */
            TEMPORARY_REDIRECT(HttpStatusCodes.STATUS_CODE_TEMPORARY_REDIRECT, "Temporary Redirect"),
            BAD_REQUEST(HttpStatusCodes.STATUS_CODE_BAD_REQUEST, "Bad Request"),
            /* JADX INFO: Fake field, exist only in values array */
            UNAUTHORIZED(HttpStatusCodes.STATUS_CODE_UNAUTHORIZED, "Unauthorized"),
            /* JADX INFO: Fake field, exist only in values array */
            TOO_MANY_REQUESTS(HttpStatusCodes.STATUS_CODE_FORBIDDEN, "Forbidden"),
            NOT_FOUND(HttpStatusCodes.STATUS_CODE_NOT_FOUND, "Not Found"),
            /* JADX INFO: Fake field, exist only in values array */
            PRECONDITION_FAILED(HttpStatusCodes.STATUS_CODE_METHOD_NOT_ALLOWED, "Method Not Allowed"),
            /* JADX INFO: Fake field, exist only in values array */
            TOO_MANY_REQUESTS(406, "Not Acceptable"),
            /* JADX INFO: Fake field, exist only in values array */
            EXPECTATION_FAILED(408, "Request Timeout"),
            /* JADX INFO: Fake field, exist only in values array */
            PRECONDITION_FAILED(HttpStatusCodes.STATUS_CODE_CONFLICT, "Conflict"),
            /* JADX INFO: Fake field, exist only in values array */
            TOO_MANY_REQUESTS(410, "Gone"),
            /* JADX INFO: Fake field, exist only in values array */
            EXPECTATION_FAILED(411, "Length Required"),
            /* JADX INFO: Fake field, exist only in values array */
            PRECONDITION_FAILED(HttpStatusCodes.STATUS_CODE_PRECONDITION_FAILED, "Precondition Failed"),
            /* JADX INFO: Fake field, exist only in values array */
            TOO_MANY_REQUESTS(413, "Payload Too Large"),
            /* JADX INFO: Fake field, exist only in values array */
            EXPECTATION_FAILED(415, "Unsupported Media Type"),
            RANGE_NOT_SATISFIABLE(416, "Requested Range Not Satisfiable"),
            /* JADX INFO: Fake field, exist only in values array */
            EXPECTATION_FAILED(417, "Expectation Failed"),
            /* JADX INFO: Fake field, exist only in values array */
            TOO_MANY_REQUESTS(429, "Too Many Requests"),
            INTERNAL_ERROR(500, "Internal Server Error"),
            /* JADX INFO: Fake field, exist only in values array */
            NOT_IMPLEMENTED(501, "Not Implemented"),
            /* JADX INFO: Fake field, exist only in values array */
            SERVICE_UNAVAILABLE(HttpStatusCodes.STATUS_CODE_SERVICE_UNAVAILABLE, "Service Unavailable"),
            /* JADX INFO: Fake field, exist only in values array */
            UNSUPPORTED_HTTP_VERSION(505, "HTTP Version Not Supported");


            /* renamed from: c, reason: collision with root package name */
            public final int f21025c;
            public final String f;

            Status(int i, String str) {
                this.f21025c = i;
                this.f = str;
            }

            @Override // fi.iki.elonen.NanoHTTPD.Response.IStatus
            public final String getDescription() {
                return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED + this.f21025c + " " + this.f;
            }
        }

        public Response(IStatus iStatus, String str, InputStream inputStream, long j) {
            this.f21023c = iStatus;
            this.f = str;
            if (inputStream == null) {
                this.g = new ByteArrayInputStream(new byte[0]);
                this.h = 0L;
            } else {
                this.g = inputStream;
                this.h = j;
            }
            this.l = this.h < 0;
            this.n = true;
        }

        public static void e(PrintWriter printWriter, String str, String str2) {
            printWriter.append((CharSequence) str).append(": ").append((CharSequence) str2).append("\r\n");
        }

        public final void a(String str, String str2) {
            ((AnonymousClass1) this.i).put(str, str2);
        }

        public final String b(String str) {
            return (String) this.j.get(str.toLowerCase());
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            InputStream inputStream = this.g;
            if (inputStream != null) {
                inputStream.close();
            }
        }

        public final boolean d() {
            return "close".equals(b("connection"));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v8, types: [java.io.OutputStream, fi.iki.elonen.NanoHTTPD$Response$ChunkedOutputStream, java.io.FilterOutputStream] */
        public final void f(OutputStream outputStream) {
            long j;
            String str;
            String str2 = this.f;
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("E, d MMM yyyy HH:mm:ss 'GMT'", Locale.US);
            simpleDateFormat.setTimeZone(DesugarTimeZone.getTimeZone("GMT"));
            IStatus iStatus = this.f21023c;
            try {
                if (iStatus != null) {
                    PrintWriter printWriter = new PrintWriter((Writer) new BufferedWriter(new OutputStreamWriter(outputStream, new ContentType(str2).a())), false);
                    printWriter.append((CharSequence) "HTTP/1.1 ").append((CharSequence) iStatus.getDescription()).append((CharSequence) " \r\n");
                    if (str2 != null) {
                        e(printWriter, HttpConnection.CONTENT_TYPE, str2);
                    }
                    if (b("date") == null) {
                        e(printWriter, "Date", simpleDateFormat.format(new Date()));
                    }
                    for (Map.Entry entry : ((HashMap) this.i).entrySet()) {
                        e(printWriter, (String) entry.getKey(), (String) entry.getValue());
                    }
                    if (b("connection") == null) {
                        if (this.n) {
                            str = "keep-alive";
                        } else {
                            str = "close";
                        }
                        e(printWriter, "Connection", str);
                    }
                    if (b("content-length") != null) {
                        this.m = false;
                    }
                    if (this.m) {
                        e(printWriter, HttpConnection.CONTENT_ENCODING, "gzip");
                        this.l = true;
                    }
                    InputStream inputStream = this.g;
                    if (inputStream != null) {
                        j = this.h;
                    } else {
                        j = 0;
                    }
                    Method method = this.k;
                    Method method2 = Method.g;
                    if (method != method2 && this.l) {
                        e(printWriter, "Transfer-Encoding", "chunked");
                    } else if (!this.m) {
                        j = j(printWriter, j);
                    }
                    printWriter.append((CharSequence) "\r\n");
                    printWriter.flush();
                    if (this.k != method2 && this.l) {
                        ?? filterOutputStream = new FilterOutputStream(outputStream);
                        if (this.m) {
                            GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(filterOutputStream);
                            i(gZIPOutputStream, -1L);
                            gZIPOutputStream.finish();
                        } else {
                            i(filterOutputStream, -1L);
                        }
                        filterOutputStream.a();
                    } else if (this.m) {
                        GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(outputStream);
                        i(gZIPOutputStream2, -1L);
                        gZIPOutputStream2.finish();
                    } else {
                        i(outputStream, j);
                    }
                    outputStream.flush();
                    NanoHTTPD.d(inputStream);
                    return;
                }
                throw new Error("sendResponse(): Status can't be null.");
            } catch (IOException e) {
                NanoHTTPD.h.log(Level.SEVERE, "Could not send response to the client", (Throwable) e);
            }
        }

        public final void i(OutputStream outputStream, long j) {
            boolean z;
            long min;
            byte[] bArr = new byte[(int) PlaybackStateCompat.ACTION_PREPARE];
            if (j == -1) {
                z = true;
            } else {
                z = false;
            }
            while (true) {
                if (j > 0 || z) {
                    if (z) {
                        min = 16384;
                    } else {
                        min = Math.min(j, PlaybackStateCompat.ACTION_PREPARE);
                    }
                    int read = this.g.read(bArr, 0, (int) min);
                    if (read <= 0) {
                        return;
                    }
                    outputStream.write(bArr, 0, read);
                    if (!z) {
                        j -= read;
                    }
                } else {
                    return;
                }
            }
        }

        public final long j(PrintWriter printWriter, long j) {
            String b = b("content-length");
            if (b != null) {
                try {
                    j = Long.parseLong(b);
                } catch (NumberFormatException unused) {
                    NanoHTTPD.h.severe("content-length was no number ".concat(b));
                }
            }
            printWriter.print("Content-Length: " + j + "\r\n");
            return j;
        }

        public final void k(boolean z) {
            this.m = z;
        }

        public final void l(boolean z) {
            this.n = z;
        }

        public final void m(Method method) {
            this.k = method;
        }

        /* loaded from: classes3.dex */
        public static class ChunkedOutputStream extends FilterOutputStream {
            public final void a() {
                ((FilterOutputStream) this).out.write("0\r\n\r\n".getBytes());
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(int i) {
                write(new byte[]{(byte) i}, 0, 1);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(byte[] bArr) {
                write(bArr, 0, bArr.length);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public final void write(byte[] bArr, int i, int i2) {
                if (i2 == 0) {
                    return;
                }
                ((FilterOutputStream) this).out.write(String.format("%x\r\n", Integer.valueOf(i2)).getBytes());
                ((FilterOutputStream) this).out.write(bArr, i, i2);
                ((FilterOutputStream) this).out.write("\r\n".getBytes());
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class SecureServerSocketFactory implements ServerSocketFactory {
    }

    /* loaded from: classes3.dex */
    public class ServerRunnable implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public IOException f21027c;
        public boolean f = false;

        public ServerRunnable() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                NanoHTTPD.this.f21011a.bind(new InetSocketAddress(8080));
                this.f = true;
                do {
                    try {
                        Socket accept = NanoHTTPD.this.f21011a.accept();
                        accept.setSoTimeout(5000);
                        InputStream inputStream = accept.getInputStream();
                        NanoHTTPD nanoHTTPD = NanoHTTPD.this;
                        nanoHTTPD.f21012c.b(new ClientHandler(inputStream, accept));
                    } catch (IOException e) {
                        NanoHTTPD.h.log(Level.FINE, "Communication with the client broken", (Throwable) e);
                    }
                } while (!NanoHTTPD.this.f21011a.isClosed());
            } catch (IOException e2) {
                this.f21027c = e2;
            }
        }
    }

    /* loaded from: classes3.dex */
    public interface ServerSocketFactory {
    }

    /* loaded from: classes3.dex */
    public interface TempFile {
        void a();
    }

    /* loaded from: classes3.dex */
    public interface TempFileManager {
        DefaultTempFile a();

        void clear();
    }

    /* loaded from: classes3.dex */
    public interface TempFileManagerFactory {
    }

    public static String b(String str) {
        try {
            return URLDecoder.decode(str, "UTF8");
        } catch (UnsupportedEncodingException e2) {
            h.log(Level.WARNING, "Encoding not supported, ignored", (Throwable) e2);
            return null;
        }
    }

    public static Response c(Response.Status status, String str, String str2) {
        byte[] bArr;
        ContentType contentType = new ContentType(str);
        if (str2 == null) {
            return new Response(status, str, new ByteArrayInputStream(new byte[0]), 0L);
        }
        try {
            if (!Charset.forName(contentType.a()).newEncoder().canEncode(str2) && contentType.f21015c == null) {
                contentType = new ContentType(str + "; charset=UTF-8");
            }
            bArr = str2.getBytes(contentType.a());
        } catch (UnsupportedEncodingException e2) {
            h.log(Level.SEVERE, "encoding problem, responding nothing", (Throwable) e2);
            bArr = new byte[0];
        }
        return new Response(status, contentType.f21014a, new ByteArrayInputStream(bArr), bArr.length);
    }

    public static final void d(Object obj) {
        if (obj != null) {
            try {
                if (obj instanceof Closeable) {
                    ((Closeable) obj).close();
                } else if (obj instanceof Socket) {
                    ((Socket) obj).close();
                } else {
                    if (obj instanceof ServerSocket) {
                        ((ServerSocket) obj).close();
                        return;
                    }
                    throw new IllegalArgumentException("Unknown object to close");
                }
            } catch (IOException e2) {
                h.log(Level.SEVERE, "Could not close", (Throwable) e2);
            }
        }
    }

    public static boolean g(Response response) {
        String str = response.f;
        if (str != null) {
            if (str.toLowerCase().contains("text/") || str.toLowerCase().contains("/json")) {
                return true;
            }
            return false;
        }
        return false;
    }

    public Response e(HTTPSession hTTPSession) {
        HashMap hashMap = new HashMap();
        Method method = hTTPSession.g;
        if (Method.f21022c.equals(method) || Method.f.equals(method)) {
            try {
                hTTPSession.g(hashMap);
            } catch (ResponseException e2) {
                return c(e2.f21026c, "text/plain", e2.getMessage());
            } catch (IOException e3) {
                return c(Response.Status.INTERNAL_ERROR, "text/plain", "SERVER INTERNAL ERROR: IOException: " + e3.getMessage());
            }
        }
        HashMap hashMap2 = new HashMap();
        for (String str : hTTPSession.h.keySet()) {
            hashMap2.put(str, ((List) hTTPSession.h.get(str)).get(0));
        }
        hashMap2.put("NanoHttpd.QUERY_STRING", hTTPSession.k);
        return c(Response.Status.NOT_FOUND, "text/plain", "Not Found");
    }

    public final void f() {
        this.f21011a = new ServerSocket();
        this.f21011a.setReuseAddress(true);
        ServerRunnable serverRunnable = new ServerRunnable();
        Thread thread = new Thread(serverRunnable);
        this.b = thread;
        thread.setDaemon(true);
        this.b.setName("NanoHttpd Main Listener");
        this.b.start();
        while (!serverRunnable.f && serverRunnable.f21027c == null) {
            try {
                Thread.sleep(10L);
            } catch (Throwable unused) {
            }
        }
        IOException iOException = serverRunnable.f21027c;
        if (iOException == null) {
        } else {
            throw iOException;
        }
    }

    /* loaded from: classes3.dex */
    public static final class ResponseException extends Exception {

        /* renamed from: c, reason: collision with root package name */
        public final Response.Status f21026c;

        public ResponseException(Response.Status status, String str) {
            super(str);
            this.f21026c = status;
        }

        public final Response.Status a() {
            return this.f21026c;
        }

        public ResponseException(String str, IOException iOException) {
            super(str, iOException);
            this.f21026c = Response.Status.INTERNAL_ERROR;
        }
    }
}
