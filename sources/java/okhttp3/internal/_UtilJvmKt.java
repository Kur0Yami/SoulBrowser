package okhttp3.internal;

import android.support.v4.media.session.PlaybackStateCompat;
import j$.util.DesugarCollections;
import j$.util.DesugarTimeZone;
import java.io.InterruptedIOException;
import java.net.Socket;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.LongCompanionObject;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.internal.http2.Header;
import okio.Source;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okhttp"}, k = 2, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\n-UtilJvm.kt\nKotlin\n*S Kotlin\n*F\n+ 1 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,355:1\n242#1:361\n242#1:362\n1#2:356\n1563#3:357\n1634#3,3:358\n*S KotlinDebug\n*F\n+ 1 -UtilJvm.kt\nokhttp3/internal/_UtilJvmKt\n*L\n260#1:361\n272#1:362\n131#1:357\n131#1:358,3\n*E\n"})
/* loaded from: classes4.dex */
public final class _UtilJvmKt {

    /* renamed from: a, reason: collision with root package name */
    public static final TimeZone f22077a;
    public static final String b;

    static {
        TimeZone timeZone = DesugarTimeZone.getTimeZone("GMT");
        Intrinsics.checkNotNull(timeZone);
        f22077a = timeZone;
        String name = OkHttpClient.class.getName();
        Intrinsics.checkNotNullExpressionValue(name, "getName(...)");
        b = StringsKt.B(StringsKt.A(name, "okhttp3."));
    }

    public static final boolean a(HttpUrl httpUrl, HttpUrl other) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        Intrinsics.checkNotNullParameter(other, "other");
        if (Intrinsics.areEqual(httpUrl.d, other.d) && httpUrl.e == other.e && Intrinsics.areEqual(httpUrl.f22050a, other.f22050a)) {
            return true;
        }
        return false;
    }

    public static final void b(Socket socket) {
        Intrinsics.checkNotNullParameter(socket, "<this>");
        try {
            socket.close();
        } catch (AssertionError e) {
            throw e;
        } catch (RuntimeException e2) {
            if (Intrinsics.areEqual(e2.getMessage(), "bio == null")) {
            } else {
                throw e2;
            }
        } catch (Exception unused) {
        }
    }

    public static final String c(String format, Object... args) {
        Intrinsics.checkNotNullParameter(format, "format");
        Intrinsics.checkNotNullParameter(args, "args");
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        Locale locale = Locale.US;
        Object[] copyOf = Arrays.copyOf(args, args.length);
        String format2 = String.format(locale, format, Arrays.copyOf(copyOf, copyOf.length));
        Intrinsics.checkNotNullExpressionValue(format2, "format(...)");
        return format2;
    }

    public static final long d(Response response) {
        Intrinsics.checkNotNullParameter(response, "<this>");
        String a2 = response.j.a("Content-Length");
        if (a2 != null) {
            byte[] bArr = _UtilCommonKt.f22076a;
            Intrinsics.checkNotNullParameter(a2, "<this>");
            try {
                return Long.parseLong(a2);
            } catch (NumberFormatException unused) {
            }
        }
        return -1L;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v3, types: [okio.Buffer, java.lang.Object] */
    public static final boolean e(Source source, int i) {
        long j;
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        Intrinsics.checkNotNullParameter(source, "<this>");
        Intrinsics.checkNotNullParameter(timeUnit, "timeUnit");
        long nanoTime = System.nanoTime();
        if (source.timeout().getF22221a()) {
            j = source.timeout().c() - nanoTime;
        } else {
            j = Long.MAX_VALUE;
        }
        source.timeout().d(Math.min(j, timeUnit.toNanos(i)) + nanoTime);
        try {
            ?? obj = new Object();
            while (source.p0(PlaybackStateCompat.ACTION_PLAY_FROM_URI, obj) != -1) {
                obj.a();
            }
            if (j == LongCompanionObject.MAX_VALUE) {
                source.timeout().a();
                return true;
            }
            source.timeout().d(nanoTime + j);
            return true;
        } catch (InterruptedIOException unused) {
            if (j == LongCompanionObject.MAX_VALUE) {
                source.timeout().a();
                return false;
            }
            source.timeout().d(nanoTime + j);
            return false;
        } catch (Throwable th) {
            if (j == LongCompanionObject.MAX_VALUE) {
                source.timeout().a();
            } else {
                source.timeout().d(nanoTime + j);
            }
            throw th;
        }
    }

    public static final Headers f(List list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        Headers.Builder builder = new Headers.Builder();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Header header = (Header) it.next();
            builder.a(header.f22130a.s(), header.b.s());
        }
        return builder.b();
    }

    public static final String g(HttpUrl httpUrl, boolean z) {
        Intrinsics.checkNotNullParameter(httpUrl, "<this>");
        String str = httpUrl.d;
        int i = httpUrl.e;
        if (StringsKt.o(str, ":")) {
            str = "[" + str + ']';
        }
        if (!z && i == HttpUrl.Companion.a(httpUrl.f22050a)) {
            return str;
        }
        return str + ':' + i;
    }

    public static final List h(List list) {
        Intrinsics.checkNotNullParameter(list, "<this>");
        if (list.isEmpty()) {
            return CollectionsKt.emptyList();
        }
        if (list.size() == 1) {
            List singletonList = Collections.singletonList(list.get(0));
            Intrinsics.checkNotNullExpressionValue(singletonList, "singletonList(...)");
            return singletonList;
        }
        Object[] array = list.toArray();
        Intrinsics.checkNotNullExpressionValue(array, "toArray(...)");
        List unmodifiableList = DesugarCollections.unmodifiableList(ArraysKt.asList(array));
        Intrinsics.checkNotNullExpressionValue(unmodifiableList, "unmodifiableList(...)");
        Intrinsics.checkNotNull(unmodifiableList, "null cannot be cast to non-null type kotlin.collections.List<T of okhttp3.internal._UtilJvmKt.toImmutableList>");
        return unmodifiableList;
    }

    public static final List i(Object[] objArr) {
        if (objArr != null && objArr.length != 0) {
            if (objArr.length == 1) {
                List singletonList = Collections.singletonList(objArr[0]);
                Intrinsics.checkNotNullExpressionValue(singletonList, "singletonList(...)");
                return singletonList;
            }
            List unmodifiableList = DesugarCollections.unmodifiableList(ArraysKt.asList((Object[]) objArr.clone()));
            Intrinsics.checkNotNullExpressionValue(unmodifiableList, "unmodifiableList(...)");
            return unmodifiableList;
        }
        return CollectionsKt.emptyList();
    }
}
