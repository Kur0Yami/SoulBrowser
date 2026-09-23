package okhttp3.internal.authenticator;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Authenticator;
import okhttp3.Dns;
import okhttp3.HttpUrl;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/authenticator/JavaNetAuthenticator;", "Lokhttp3/Authenticator;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class JavaNetAuthenticator implements Authenticator {
    public final Dns b;

    @Metadata(k = 3, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            try {
                iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public JavaNetAuthenticator() {
        Dns defaultDns = Dns.f22043a;
        Intrinsics.checkNotNullParameter(defaultDns, "defaultDns");
        this.b = defaultDns;
    }

    public static InetAddress b(Proxy proxy, HttpUrl httpUrl, Dns dns) {
        int i;
        Proxy.Type type = proxy.type();
        if (type == null) {
            i = -1;
        } else {
            i = WhenMappings.$EnumSwitchMapping$0[type.ordinal()];
        }
        if (i == 1) {
            return (InetAddress) CollectionsKt.first(dns.a(httpUrl.d));
        }
        SocketAddress address = proxy.address();
        Intrinsics.checkNotNull(address, "null cannot be cast to non-null type java.net.InetSocketAddress");
        InetAddress address2 = ((InetSocketAddress) address).getAddress();
        Intrinsics.checkNotNullExpressionValue(address2, "getAddress(...)");
        return address2;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x006b  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x006e  */
    /* JADX WARN: Type inference failed for: r0v9, types: [okio.Buffer, java.lang.Object] */
    @Override // okhttp3.Authenticator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final okhttp3.Request a(okhttp3.Route r21, okhttp3.Response r22) {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.internal.authenticator.JavaNetAuthenticator.a(okhttp3.Route, okhttp3.Response):okhttp3.Request");
    }
}
