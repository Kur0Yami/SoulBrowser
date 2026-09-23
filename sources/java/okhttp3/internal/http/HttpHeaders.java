package okhttp3.internal.http;

import com.google.api.client.http.HttpMethods;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Response;
import okhttp3.internal._UtilJvmKt;
import okio.Buffer;
import okio.ByteString;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okhttp"}, k = 2, mv = {2, 2, 0}, xi = 48)
@JvmName(name = "HttpHeaders")
/* loaded from: classes4.dex */
public final class HttpHeaders {

    /* renamed from: a, reason: collision with root package name */
    public static final ByteString f22116a;
    public static final ByteString b;

    static {
        ByteString byteString = ByteString.h;
        f22116a = ByteString.Companion.b("\"\\");
        b = ByteString.Companion.b("\t ,=");
    }

    public static final boolean a(Response response) {
        boolean equals;
        Intrinsics.checkNotNullParameter(response, "<this>");
        if (!Intrinsics.areEqual(response.f22065c.b, HttpMethods.HEAD)) {
            int i = response.h;
            if (((i >= 100 && i < 200) || i == 204 || i == 304) && _UtilJvmKt.d(response) == -1) {
                equals = StringsKt__StringsJVMKt.equals("chunked", Response.a("Transfer-Encoding", response), true);
                if (!equals) {
                    return false;
                }
                return true;
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0108, code lost:
    
        continue;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b8, code lost:
    
        r6 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0108, code lost:
    
        continue;
     */
    /* JADX WARN: Type inference failed for: r6v8, types: [okio.Buffer, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void b(okio.Buffer r17, java.util.ArrayList r18) {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.HttpHeaders.b(okio.Buffer, java.util.ArrayList):void");
    }

    public static final String c(Buffer buffer) {
        long f = buffer.f(b);
        if (f == -1) {
            f = buffer.f;
        }
        if (f != 0) {
            return buffer.j(f, Charsets.UTF_8);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:131:0x0220, code lost:
    
        if (okhttp3.internal._HostnamesCommonKt.f22075a.matches(r0) == false) goto L112;
     */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0278  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0282 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void d(okhttp3.CookieJar r39, okhttp3.HttpUrl r40, okhttp3.Headers r41) {
        /*
            Method dump skipped, instructions count: 678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.http.HttpHeaders.d(okhttp3.CookieJar, okhttp3.HttpUrl, okhttp3.Headers):void");
    }

    public static final boolean e(Buffer buffer) {
        boolean z = false;
        while (!buffer.D()) {
            byte d = buffer.d(0L);
            if (d == 44) {
                buffer.readByte();
                z = true;
            } else {
                if (d != 32 && d != 9) {
                    break;
                }
                buffer.readByte();
            }
        }
        return z;
    }
}
