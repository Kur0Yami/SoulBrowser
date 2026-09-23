package okhttp3.internal.http2;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.SourceDebugExtension;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokhttp3/internal/http2/ErrorCode;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class ErrorCode {
    public static final Companion f;
    public static final ErrorCode g;
    public static final ErrorCode h;
    public static final ErrorCode i;
    public static final ErrorCode j;
    public static final ErrorCode k;
    public static final ErrorCode l;
    public static final /* synthetic */ ErrorCode[] m;
    public static final /* synthetic */ EnumEntries n;

    /* renamed from: c, reason: collision with root package name */
    public final int f22128c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http2/ErrorCode$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    @SourceDebugExtension({"SMAP\nErrorCode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ErrorCode.kt\nokhttp3/internal/http2/ErrorCode$Companion\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,56:1\n1#2:57\n*E\n"})
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, okhttp3.internal.http2.ErrorCode$Companion] */
    static {
        ErrorCode errorCode = new ErrorCode("NO_ERROR", 0, 0);
        g = errorCode;
        ErrorCode errorCode2 = new ErrorCode("PROTOCOL_ERROR", 1, 1);
        h = errorCode2;
        ErrorCode errorCode3 = new ErrorCode("INTERNAL_ERROR", 2, 2);
        i = errorCode3;
        ErrorCode errorCode4 = new ErrorCode("FLOW_CONTROL_ERROR", 3, 3);
        j = errorCode4;
        ErrorCode errorCode5 = new ErrorCode("SETTINGS_TIMEOUT", 4, 4);
        ErrorCode errorCode6 = new ErrorCode("STREAM_CLOSED", 5, 5);
        ErrorCode errorCode7 = new ErrorCode("FRAME_SIZE_ERROR", 6, 6);
        ErrorCode errorCode8 = new ErrorCode("REFUSED_STREAM", 7, 7);
        k = errorCode8;
        ErrorCode errorCode9 = new ErrorCode("CANCEL", 8, 8);
        l = errorCode9;
        ErrorCode[] errorCodeArr = {errorCode, errorCode2, errorCode3, errorCode4, errorCode5, errorCode6, errorCode7, errorCode8, errorCode9, new ErrorCode("COMPRESSION_ERROR", 9, 9), new ErrorCode("CONNECT_ERROR", 10, 10), new ErrorCode("ENHANCE_YOUR_CALM", 11, 11), new ErrorCode("INADEQUATE_SECURITY", 12, 12), new ErrorCode("HTTP_1_1_REQUIRED", 13, 13)};
        m = errorCodeArr;
        n = EnumEntriesKt.enumEntries(errorCodeArr);
        f = new Object();
    }

    public ErrorCode(String str, int i2, int i3) {
        this.f22128c = i3;
    }

    public static ErrorCode valueOf(String str) {
        return (ErrorCode) Enum.valueOf(ErrorCode.class, str);
    }

    public static ErrorCode[] values() {
        return (ErrorCode[]) m.clone();
    }
}
