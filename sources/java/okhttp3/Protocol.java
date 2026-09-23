package okhttp3;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import kotlin.Metadata;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0002\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokhttp3/Protocol;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class Protocol {
    public static final Companion f;
    public static final Protocol g;
    public static final Protocol h;
    public static final Protocol i;
    public static final Protocol j;
    public static final Protocol k;
    public static final Protocol l;
    public static final Protocol m;
    public static final /* synthetic */ Protocol[] n;
    public static final /* synthetic */ EnumEntries o;

    /* renamed from: c, reason: collision with root package name */
    public final String f22060c;

    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/Protocol$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public static Protocol a(String protocol) {
            boolean startsWith$default;
            Intrinsics.checkNotNullParameter(protocol, "protocol");
            Protocol protocol2 = Protocol.g;
            if (Intrinsics.areEqual(protocol, "http/1.0")) {
                return protocol2;
            }
            Protocol protocol3 = Protocol.h;
            if (Intrinsics.areEqual(protocol, "http/1.1")) {
                return protocol3;
            }
            Protocol protocol4 = Protocol.k;
            if (Intrinsics.areEqual(protocol, "h2_prior_knowledge")) {
                return protocol4;
            }
            Protocol protocol5 = Protocol.j;
            if (Intrinsics.areEqual(protocol, "h2")) {
                return protocol5;
            }
            Protocol protocol6 = Protocol.i;
            if (Intrinsics.areEqual(protocol, "spdy/3.1")) {
                return protocol6;
            }
            Protocol protocol7 = Protocol.l;
            if (Intrinsics.areEqual(protocol, "quic")) {
                return protocol7;
            }
            Protocol protocol8 = Protocol.m;
            startsWith$default = StringsKt__StringsJVMKt.startsWith$default(protocol, "h3", false, 2, null);
            if (startsWith$default) {
                return protocol8;
            }
            throw new IOException("Unexpected protocol: ".concat(protocol));
        }
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, okhttp3.Protocol$Companion] */
    static {
        Protocol protocol = new Protocol("HTTP_1_0", 0, "http/1.0");
        g = protocol;
        Protocol protocol2 = new Protocol("HTTP_1_1", 1, "http/1.1");
        h = protocol2;
        Protocol protocol3 = new Protocol("SPDY_3", 2, "spdy/3.1");
        i = protocol3;
        Protocol protocol4 = new Protocol("HTTP_2", 3, "h2");
        j = protocol4;
        Protocol protocol5 = new Protocol("H2_PRIOR_KNOWLEDGE", 4, "h2_prior_knowledge");
        k = protocol5;
        Protocol protocol6 = new Protocol("QUIC", 5, "quic");
        l = protocol6;
        Protocol protocol7 = new Protocol("HTTP_3", 6, "h3");
        m = protocol7;
        Protocol[] protocolArr = {protocol, protocol2, protocol3, protocol4, protocol5, protocol6, protocol7};
        n = protocolArr;
        o = EnumEntriesKt.enumEntries(protocolArr);
        f = new Object();
    }

    public Protocol(String str, int i2, String str2) {
        this.f22060c = str2;
    }

    public static Protocol valueOf(String str) {
        return (Protocol) Enum.valueOf(Protocol.class, str);
    }

    public static Protocol[] values() {
        return (Protocol[]) n.clone();
    }

    @Override // java.lang.Enum
    public final String toString() {
        return this.f22060c;
    }
}
