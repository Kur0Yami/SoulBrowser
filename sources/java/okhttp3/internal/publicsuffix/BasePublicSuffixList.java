package okhttp3.internal.publicsuffix;

import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import okio.ByteString;
import okio.Okio;
import okio.RealBufferedSource;
import okio.Source;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b \u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/publicsuffix/BasePublicSuffixList;", "Lokhttp3/internal/publicsuffix/PublicSuffixList;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public abstract class BasePublicSuffixList implements PublicSuffixList {

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f22183a = new AtomicBoolean(false);
    public final CountDownLatch b = new CountDownLatch(1);

    /* renamed from: c, reason: collision with root package name */
    public ByteString f22184c;
    public ByteString d;
    public IOException e;

    public final ByteString a() {
        ByteString byteString = this.f22184c;
        if (byteString != null) {
            return byteString;
        }
        Intrinsics.throwUninitializedPropertyAccessException("bytes");
        return null;
    }

    public abstract Source b();

    public final void c() {
        try {
            RealBufferedSource b = Okio.b(b());
            try {
                ByteString r = b.r(b.readInt());
                ByteString r2 = b.r(b.readInt());
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(b, null);
                synchronized (this) {
                    Intrinsics.checkNotNull(r);
                    Intrinsics.checkNotNullParameter(r, "<set-?>");
                    this.f22184c = r;
                    Intrinsics.checkNotNull(r2);
                    Intrinsics.checkNotNullParameter(r2, "<set-?>");
                    this.d = r2;
                }
            } finally {
            }
        } finally {
            this.b.countDown();
        }
    }
}
