package okhttp3;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokhttp3/CipherSuite;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class CipherSuite {
    public static final Companion b;

    /* renamed from: c, reason: collision with root package name */
    public static final CipherSuite$Companion$ORDER_BY_NAME$1 f22030c;
    public static final LinkedHashMap d;
    public static final CipherSuite e;
    public static final CipherSuite f;
    public static final CipherSuite g;
    public static final CipherSuite h;
    public static final CipherSuite i;
    public static final CipherSuite j;
    public static final CipherSuite k;
    public static final CipherSuite l;
    public static final CipherSuite m;
    public static final CipherSuite n;
    public static final CipherSuite o;
    public static final CipherSuite p;
    public static final CipherSuite q;
    public static final CipherSuite r;
    public static final CipherSuite s;
    public static final CipherSuite t;

    /* renamed from: a, reason: collision with root package name */
    public final String f22031a;

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010%\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b{\b\u0086\u0003\u0018\u00002\u00020\u0001R \u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0014\u0010\u0007\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\bR\u0014\u0010\t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\t\u0010\bR\u0014\u0010\n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\n\u0010\bR\u0014\u0010\u000b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\bR\u0014\u0010\f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\f\u0010\bR\u0014\u0010\r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\r\u0010\bR\u0014\u0010\u000e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\bR\u0014\u0010\u000f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010\bR\u0014\u0010\u0010\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\bR\u0014\u0010\u0011\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\bR\u0014\u0010\u0012\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\bR\u0014\u0010\u0013\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\bR\u0014\u0010\u0014\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\bR\u0014\u0010\u0015\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\bR\u0014\u0010\u0016\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\bR\u0014\u0010\u0017\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\bR\u0014\u0010\u0018\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\bR\u0014\u0010\u0019\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0019\u0010\bR\u0014\u0010\u001a\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\bR\u0014\u0010\u001b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\bR\u0014\u0010\u001c\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010\bR\u0014\u0010\u001d\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\bR\u0014\u0010\u001e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\bR\u0014\u0010\u001f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010\bR\u0014\u0010 \u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b \u0010\bR\u0014\u0010!\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b!\u0010\bR\u0014\u0010\"\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\"\u0010\bR\u0014\u0010#\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b#\u0010\bR\u0014\u0010$\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b$\u0010\bR\u0014\u0010%\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b%\u0010\bR\u0014\u0010&\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b&\u0010\bR\u0014\u0010'\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b'\u0010\bR\u0014\u0010(\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b(\u0010\bR\u0014\u0010)\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b)\u0010\bR\u0014\u0010*\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b*\u0010\bR\u0014\u0010+\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b+\u0010\bR\u0014\u0010,\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b,\u0010\bR\u0014\u0010-\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b-\u0010\bR\u0014\u0010.\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b.\u0010\bR\u0014\u0010/\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b/\u0010\bR\u0014\u00100\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b0\u0010\bR\u0014\u00101\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b1\u0010\bR\u0014\u00102\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b2\u0010\bR\u0014\u00103\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b3\u0010\bR\u0014\u00104\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b4\u0010\bR\u0014\u00105\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b5\u0010\bR\u0014\u00106\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b6\u0010\bR\u0014\u00107\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b7\u0010\bR\u0014\u00108\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b8\u0010\bR\u0014\u00109\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b9\u0010\bR\u0014\u0010:\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b:\u0010\bR\u0014\u0010;\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b;\u0010\bR\u0014\u0010<\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b<\u0010\bR\u0014\u0010=\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b=\u0010\bR\u0014\u0010>\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b>\u0010\bR\u0014\u0010?\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b?\u0010\bR\u0014\u0010@\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b@\u0010\bR\u0014\u0010A\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bA\u0010\bR\u0014\u0010B\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bB\u0010\bR\u0014\u0010C\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bC\u0010\bR\u0014\u0010D\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bD\u0010\bR\u0014\u0010E\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bE\u0010\bR\u0014\u0010F\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bF\u0010\bR\u0014\u0010G\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bG\u0010\bR\u0014\u0010H\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bH\u0010\bR\u0014\u0010I\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bI\u0010\bR\u0014\u0010J\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bJ\u0010\bR\u0014\u0010K\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bK\u0010\bR\u0014\u0010L\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bL\u0010\bR\u0014\u0010M\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bM\u0010\bR\u0014\u0010N\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bN\u0010\bR\u0014\u0010O\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bO\u0010\bR\u0014\u0010P\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bP\u0010\bR\u0014\u0010Q\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bQ\u0010\bR\u0014\u0010R\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bR\u0010\bR\u0014\u0010S\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bS\u0010\bR\u0014\u0010T\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bT\u0010\bR\u0014\u0010U\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bU\u0010\bR\u0014\u0010V\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bV\u0010\bR\u0014\u0010W\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bW\u0010\bR\u0014\u0010X\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bX\u0010\bR\u0014\u0010Y\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bY\u0010\bR\u0014\u0010Z\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bZ\u0010\bR\u0014\u0010[\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b[\u0010\bR\u0014\u0010\\\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\\\u0010\bR\u0014\u0010]\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b]\u0010\bR\u0014\u0010^\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b^\u0010\bR\u0014\u0010_\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b_\u0010\bR\u0014\u0010`\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b`\u0010\bR\u0014\u0010a\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\ba\u0010\bR\u0014\u0010b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bb\u0010\bR\u0014\u0010c\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bc\u0010\bR\u0014\u0010d\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bd\u0010\bR\u0014\u0010e\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\be\u0010\bR\u0014\u0010f\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bf\u0010\bR\u0014\u0010g\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bg\u0010\bR\u0014\u0010h\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bh\u0010\bR\u0014\u0010i\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bi\u0010\bR\u0014\u0010j\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bj\u0010\bR\u0014\u0010k\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bk\u0010\bR\u0014\u0010l\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bl\u0010\bR\u0014\u0010m\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bm\u0010\bR\u0014\u0010n\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bn\u0010\bR\u0014\u0010o\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bo\u0010\bR\u0014\u0010p\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bp\u0010\bR\u0014\u0010q\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bq\u0010\bR\u0014\u0010r\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\br\u0010\bR\u0014\u0010s\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bs\u0010\bR\u0014\u0010t\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bt\u0010\bR\u0014\u0010u\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bu\u0010\bR\u0014\u0010v\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bv\u0010\bR\u0014\u0010w\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bw\u0010\bR\u0014\u0010x\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bx\u0010\bR\u0014\u0010y\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\by\u0010\bR\u0014\u0010z\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\bz\u0010\bR\u0014\u0010{\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b{\u0010\bR\u0014\u0010|\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b|\u0010\bR\u0014\u0010}\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b}\u0010\bR\u0014\u0010~\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b~\u0010\b¨\u0006\u007f"}, d2 = {"Lokhttp3/CipherSuite$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Lokhttp3/CipherSuite;", "INSTANCES", "Ljava/util/Map;", "TLS_RSA_WITH_NULL_MD5", "Lokhttp3/CipherSuite;", "TLS_RSA_WITH_NULL_SHA", "TLS_RSA_EXPORT_WITH_RC4_40_MD5", "TLS_RSA_WITH_RC4_128_MD5", "TLS_RSA_WITH_RC4_128_SHA", "TLS_RSA_EXPORT_WITH_DES40_CBC_SHA", "TLS_RSA_WITH_DES_CBC_SHA", "TLS_RSA_WITH_3DES_EDE_CBC_SHA", "TLS_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", "TLS_DHE_DSS_WITH_DES_CBC_SHA", "TLS_DHE_DSS_WITH_3DES_EDE_CBC_SHA", "TLS_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", "TLS_DHE_RSA_WITH_DES_CBC_SHA", "TLS_DHE_RSA_WITH_3DES_EDE_CBC_SHA", "TLS_DH_anon_EXPORT_WITH_RC4_40_MD5", "TLS_DH_anon_WITH_RC4_128_MD5", "TLS_DH_anon_EXPORT_WITH_DES40_CBC_SHA", "TLS_DH_anon_WITH_DES_CBC_SHA", "TLS_DH_anon_WITH_3DES_EDE_CBC_SHA", "TLS_KRB5_WITH_DES_CBC_SHA", "TLS_KRB5_WITH_3DES_EDE_CBC_SHA", "TLS_KRB5_WITH_RC4_128_SHA", "TLS_KRB5_WITH_DES_CBC_MD5", "TLS_KRB5_WITH_3DES_EDE_CBC_MD5", "TLS_KRB5_WITH_RC4_128_MD5", "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", "TLS_KRB5_EXPORT_WITH_RC4_40_SHA", "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", "TLS_KRB5_EXPORT_WITH_RC4_40_MD5", "TLS_RSA_WITH_AES_128_CBC_SHA", "TLS_DHE_DSS_WITH_AES_128_CBC_SHA", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA", "TLS_DH_anon_WITH_AES_128_CBC_SHA", "TLS_RSA_WITH_AES_256_CBC_SHA", "TLS_DHE_DSS_WITH_AES_256_CBC_SHA", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA", "TLS_DH_anon_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_NULL_SHA256", "TLS_RSA_WITH_AES_128_CBC_SHA256", "TLS_RSA_WITH_AES_256_CBC_SHA256", "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", "TLS_DH_anon_WITH_AES_128_CBC_SHA256", "TLS_DH_anon_WITH_AES_256_CBC_SHA256", "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", "TLS_PSK_WITH_RC4_128_SHA", "TLS_PSK_WITH_3DES_EDE_CBC_SHA", "TLS_PSK_WITH_AES_128_CBC_SHA", "TLS_PSK_WITH_AES_256_CBC_SHA", "TLS_RSA_WITH_SEED_CBC_SHA", "TLS_RSA_WITH_AES_128_GCM_SHA256", "TLS_RSA_WITH_AES_256_GCM_SHA384", "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", "TLS_DH_anon_WITH_AES_128_GCM_SHA256", "TLS_DH_anon_WITH_AES_256_GCM_SHA384", "TLS_EMPTY_RENEGOTIATION_INFO_SCSV", "TLS_FALLBACK_SCSV", "TLS_ECDH_ECDSA_WITH_NULL_SHA", "TLS_ECDH_ECDSA_WITH_RC4_128_SHA", "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_NULL_SHA", "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", "TLS_ECDH_RSA_WITH_NULL_SHA", "TLS_ECDH_RSA_WITH_RC4_128_SHA", "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDHE_RSA_WITH_NULL_SHA", "TLS_ECDHE_RSA_WITH_RC4_128_SHA", "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", "TLS_ECDH_anon_WITH_NULL_SHA", "TLS_ECDH_anon_WITH_RC4_128_SHA", "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", "TLS_ECDH_anon_WITH_AES_128_CBC_SHA", "TLS_ECDH_anon_WITH_AES_256_CBC_SHA", "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256", "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256", "TLS_AES_128_GCM_SHA256", "TLS_AES_256_GCM_SHA384", "TLS_CHACHA20_POLY1305_SHA256", "TLS_AES_128_CCM_SHA256", "TLS_AES_128_CCM_8_SHA256", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public static final CipherSuite a(Companion companion, String str) {
            CipherSuite cipherSuite = new CipherSuite(str);
            CipherSuite.d.put(str, cipherSuite);
            return cipherSuite;
        }

        public static String c(String str) {
            boolean startsWith$default;
            boolean startsWith$default2;
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(str, "TLS_", false, 2, null);
            if (!startsWith$default) {
                startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(str, "SSL_", false, 2, null);
                if (startsWith$default2) {
                    StringBuilder sb = new StringBuilder("TLS_");
                    String substring = str.substring(4);
                    Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                    sb.append(substring);
                    return sb.toString();
                }
                return str;
            }
            StringBuilder sb2 = new StringBuilder("SSL_");
            String substring2 = str.substring(4);
            Intrinsics.checkNotNullExpressionValue(substring2, "substring(...)");
            sb2.append(substring2);
            return sb2.toString();
        }

        public final synchronized CipherSuite b(String javaName) {
            CipherSuite cipherSuite;
            try {
                Intrinsics.checkNotNullParameter(javaName, "javaName");
                LinkedHashMap linkedHashMap = CipherSuite.d;
                cipherSuite = (CipherSuite) linkedHashMap.get(javaName);
                if (cipherSuite == null) {
                    cipherSuite = (CipherSuite) linkedHashMap.get(c(javaName));
                    if (cipherSuite == null) {
                        cipherSuite = new CipherSuite(javaName);
                    }
                    linkedHashMap.put(javaName, cipherSuite);
                }
            } catch (Throwable th) {
                throw th;
            }
            return cipherSuite;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, okhttp3.CipherSuite$Companion] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object, okhttp3.CipherSuite$Companion$ORDER_BY_NAME$1] */
    static {
        ?? obj = new Object();
        b = obj;
        f22030c = new Object();
        d = new LinkedHashMap();
        Companion.a(obj, "SSL_RSA_WITH_NULL_MD5");
        Companion.a(obj, "SSL_RSA_WITH_NULL_SHA");
        Companion.a(obj, "SSL_RSA_EXPORT_WITH_RC4_40_MD5");
        Companion.a(obj, "SSL_RSA_WITH_RC4_128_MD5");
        Companion.a(obj, "SSL_RSA_WITH_RC4_128_SHA");
        Companion.a(obj, "SSL_RSA_EXPORT_WITH_DES40_CBC_SHA");
        Companion.a(obj, "SSL_RSA_WITH_DES_CBC_SHA");
        e = Companion.a(obj, "SSL_RSA_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA");
        Companion.a(obj, "SSL_DHE_DSS_WITH_DES_CBC_SHA");
        Companion.a(obj, "SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA");
        Companion.a(obj, "SSL_DHE_RSA_WITH_DES_CBC_SHA");
        Companion.a(obj, "SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "SSL_DH_anon_EXPORT_WITH_RC4_40_MD5");
        Companion.a(obj, "SSL_DH_anon_WITH_RC4_128_MD5");
        Companion.a(obj, "SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA");
        Companion.a(obj, "SSL_DH_anon_WITH_DES_CBC_SHA");
        Companion.a(obj, "SSL_DH_anon_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "TLS_KRB5_WITH_DES_CBC_SHA");
        Companion.a(obj, "TLS_KRB5_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "TLS_KRB5_WITH_RC4_128_SHA");
        Companion.a(obj, "TLS_KRB5_WITH_DES_CBC_MD5");
        Companion.a(obj, "TLS_KRB5_WITH_3DES_EDE_CBC_MD5");
        Companion.a(obj, "TLS_KRB5_WITH_RC4_128_MD5");
        Companion.a(obj, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA");
        Companion.a(obj, "TLS_KRB5_EXPORT_WITH_RC4_40_SHA");
        Companion.a(obj, "TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5");
        Companion.a(obj, "TLS_KRB5_EXPORT_WITH_RC4_40_MD5");
        f = Companion.a(obj, "TLS_RSA_WITH_AES_128_CBC_SHA");
        Companion.a(obj, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA");
        Companion.a(obj, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA");
        Companion.a(obj, "TLS_DH_anon_WITH_AES_128_CBC_SHA");
        g = Companion.a(obj, "TLS_RSA_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_DH_anon_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_RSA_WITH_NULL_SHA256");
        Companion.a(obj, "TLS_RSA_WITH_AES_128_CBC_SHA256");
        Companion.a(obj, "TLS_RSA_WITH_AES_256_CBC_SHA256");
        Companion.a(obj, "TLS_DHE_DSS_WITH_AES_128_CBC_SHA256");
        Companion.a(obj, "TLS_RSA_WITH_CAMELLIA_128_CBC_SHA");
        Companion.a(obj, "TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA");
        Companion.a(obj, "TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA");
        Companion.a(obj, "TLS_DHE_RSA_WITH_AES_128_CBC_SHA256");
        Companion.a(obj, "TLS_DHE_DSS_WITH_AES_256_CBC_SHA256");
        Companion.a(obj, "TLS_DHE_RSA_WITH_AES_256_CBC_SHA256");
        Companion.a(obj, "TLS_DH_anon_WITH_AES_128_CBC_SHA256");
        Companion.a(obj, "TLS_DH_anon_WITH_AES_256_CBC_SHA256");
        Companion.a(obj, "TLS_RSA_WITH_CAMELLIA_256_CBC_SHA");
        Companion.a(obj, "TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA");
        Companion.a(obj, "TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA");
        Companion.a(obj, "TLS_PSK_WITH_RC4_128_SHA");
        Companion.a(obj, "TLS_PSK_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "TLS_PSK_WITH_AES_128_CBC_SHA");
        Companion.a(obj, "TLS_PSK_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_RSA_WITH_SEED_CBC_SHA");
        h = Companion.a(obj, "TLS_RSA_WITH_AES_128_GCM_SHA256");
        i = Companion.a(obj, "TLS_RSA_WITH_AES_256_GCM_SHA384");
        Companion.a(obj, "TLS_DHE_RSA_WITH_AES_128_GCM_SHA256");
        Companion.a(obj, "TLS_DHE_RSA_WITH_AES_256_GCM_SHA384");
        Companion.a(obj, "TLS_DHE_DSS_WITH_AES_128_GCM_SHA256");
        Companion.a(obj, "TLS_DHE_DSS_WITH_AES_256_GCM_SHA384");
        Companion.a(obj, "TLS_DH_anon_WITH_AES_128_GCM_SHA256");
        Companion.a(obj, "TLS_DH_anon_WITH_AES_256_GCM_SHA384");
        Companion.a(obj, "TLS_EMPTY_RENEGOTIATION_INFO_SCSV");
        Companion.a(obj, "TLS_FALLBACK_SCSV");
        Companion.a(obj, "TLS_ECDH_ECDSA_WITH_NULL_SHA");
        Companion.a(obj, "TLS_ECDH_ECDSA_WITH_RC4_128_SHA");
        Companion.a(obj, "TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA");
        Companion.a(obj, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_NULL_SHA");
        Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_RC4_128_SHA");
        Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA");
        Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_ECDH_RSA_WITH_NULL_SHA");
        Companion.a(obj, "TLS_ECDH_RSA_WITH_RC4_128_SHA");
        Companion.a(obj, "TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA");
        Companion.a(obj, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_ECDHE_RSA_WITH_NULL_SHA");
        Companion.a(obj, "TLS_ECDHE_RSA_WITH_RC4_128_SHA");
        Companion.a(obj, "TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA");
        j = Companion.a(obj, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA");
        k = Companion.a(obj, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_ECDH_anon_WITH_NULL_SHA");
        Companion.a(obj, "TLS_ECDH_anon_WITH_RC4_128_SHA");
        Companion.a(obj, "TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA");
        Companion.a(obj, "TLS_ECDH_anon_WITH_AES_128_CBC_SHA");
        Companion.a(obj, "TLS_ECDH_anon_WITH_AES_256_CBC_SHA");
        Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256");
        Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384");
        Companion.a(obj, "TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256");
        Companion.a(obj, "TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384");
        Companion.a(obj, "TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256");
        Companion.a(obj, "TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384");
        Companion.a(obj, "TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256");
        Companion.a(obj, "TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384");
        l = Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256");
        m = Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384");
        Companion.a(obj, "TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256");
        Companion.a(obj, "TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384");
        n = Companion.a(obj, "TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256");
        o = Companion.a(obj, "TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384");
        Companion.a(obj, "TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256");
        Companion.a(obj, "TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384");
        Companion.a(obj, "TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA");
        Companion.a(obj, "TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA");
        p = Companion.a(obj, "TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256");
        q = Companion.a(obj, "TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256");
        Companion.a(obj, "TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256");
        Companion.a(obj, "TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256");
        r = Companion.a(obj, "TLS_AES_128_GCM_SHA256");
        s = Companion.a(obj, "TLS_AES_256_GCM_SHA384");
        t = Companion.a(obj, "TLS_CHACHA20_POLY1305_SHA256");
        Companion.a(obj, "TLS_AES_128_CCM_SHA256");
        Companion.a(obj, "TLS_AES_128_CCM_8_SHA256");
    }

    public CipherSuite(String str) {
        this.f22031a = str;
    }

    /* renamed from: toString, reason: from getter */
    public final String getF22031a() {
        return this.f22031a;
    }
}
