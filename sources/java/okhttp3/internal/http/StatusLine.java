package okhttp3.internal.http;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import java.net.ProtocolException;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.Protocol;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokhttp3/internal/http/StatusLine;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class StatusLine {

    /* renamed from: a, reason: collision with root package name */
    public final Protocol f22120a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final String f22121c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/http/StatusLine$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public static StatusLine a(String statusLine) {
            boolean startsWith$default;
            boolean startsWith$default2;
            boolean startsWith$default3;
            Protocol protocol;
            int i;
            String str;
            Intrinsics.checkNotNullParameter(statusLine, "statusLine");
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(statusLine, "HTTP/1.", false, 2, null);
            if (!startsWith$default) {
                startsWith$default2 = StringsKt__StringsJVMKt.startsWith$default(statusLine, "ICY ", false, 2, null);
                if (!startsWith$default2) {
                    startsWith$default3 = StringsKt__StringsJVMKt.startsWith$default(statusLine, "SOURCETABLE ", false, 2, null);
                    if (startsWith$default3) {
                        protocol = Protocol.h;
                        i = 12;
                    } else {
                        throw new ProtocolException(a.C("Unexpected status line: ", statusLine));
                    }
                } else {
                    protocol = Protocol.g;
                    i = 4;
                }
            } else {
                i = 9;
                if (statusLine.length() >= 9 && statusLine.charAt(8) == ' ') {
                    int charAt = statusLine.charAt(7) - '0';
                    if (charAt != 0) {
                        if (charAt == 1) {
                            protocol = Protocol.h;
                        } else {
                            throw new ProtocolException("Unexpected status line: ".concat(statusLine));
                        }
                    } else {
                        protocol = Protocol.g;
                    }
                } else {
                    throw new ProtocolException("Unexpected status line: ".concat(statusLine));
                }
            }
            int i2 = i + 3;
            if (statusLine.length() >= i2) {
                String substring = statusLine.substring(i, i2);
                Intrinsics.checkNotNullExpressionValue(substring, "substring(...)");
                Integer intOrNull = StringsKt.toIntOrNull(substring);
                if (intOrNull != null) {
                    int intValue = intOrNull.intValue();
                    if (statusLine.length() > i2) {
                        if (statusLine.charAt(i2) == ' ') {
                            str = statusLine.substring(i + 4);
                            Intrinsics.checkNotNullExpressionValue(str, "substring(...)");
                        } else {
                            throw new ProtocolException("Unexpected status line: ".concat(statusLine));
                        }
                    } else {
                        str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    }
                    return new StatusLine(protocol, intValue, str);
                }
                throw new ProtocolException("Unexpected status line: ".concat(statusLine));
            }
            throw new ProtocolException("Unexpected status line: ".concat(statusLine));
        }
    }

    public StatusLine(Protocol protocol, int i, String message) {
        Intrinsics.checkNotNullParameter(protocol, "protocol");
        Intrinsics.checkNotNullParameter(message, "message");
        this.f22120a = protocol;
        this.b = i;
        this.f22121c = message;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        if (this.f22120a == Protocol.g) {
            sb.append("HTTP/1.0");
        } else {
            sb.append("HTTP/1.1");
        }
        sb.append(' ');
        sb.append(this.b);
        sb.append(' ');
        sb.append(this.f22121c);
        return sb.toString();
    }
}
