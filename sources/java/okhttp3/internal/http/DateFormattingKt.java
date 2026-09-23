package okhttp3.internal.http;

import java.text.DateFormat;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0002\n\u0000¨\u0006\u0000"}, d2 = {"okhttp"}, k = 2, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class DateFormattingKt {

    /* renamed from: a, reason: collision with root package name */
    public static final DateFormattingKt$STANDARD_DATE_FORMAT$1 f22115a = new ThreadLocal();

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.ThreadLocal, okhttp3.internal.http.DateFormattingKt$STANDARD_DATE_FORMAT$1] */
    static {
        DateFormat[] dateFormatArr = new DateFormat[new String[]{"EEE, dd MMM yyyy HH:mm:ss zzz", "EEEE, dd-MMM-yy HH:mm:ss zzz", "EEE MMM d HH:mm:ss yyyy", "EEE, dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MMM-yyyy HH-mm-ss z", "EEE, dd MMM yy HH:mm:ss z", "EEE dd-MMM-yyyy HH:mm:ss z", "EEE dd MMM yyyy HH:mm:ss z", "EEE dd-MMM-yyyy HH-mm-ss z", "EEE dd-MMM-yy HH:mm:ss z", "EEE dd MMM yy HH:mm:ss z", "EEE,dd-MMM-yy HH:mm:ss z", "EEE,dd-MMM-yyyy HH:mm:ss z", "EEE, dd-MM-yyyy HH:mm:ss z", "EEE MMM d yyyy HH:mm:ss z"}.length];
    }
}
