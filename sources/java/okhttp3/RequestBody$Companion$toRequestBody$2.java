package okhttp3;

import java.io.FileDescriptor;
import java.io.FileInputStream;
import kotlin.Metadata;
import kotlin.io.CloseableKt;
import kotlin.jvm.internal.Intrinsics;
import okio.Okio;
import okio.RealBufferedSink;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"okhttp3/RequestBody$Companion$toRequestBody$2", "Lokhttp3/RequestBody;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class RequestBody$Companion$toRequestBody$2 extends RequestBody {
    @Override // okhttp3.RequestBody
    public final MediaType b() {
        return null;
    }

    @Override // okhttp3.RequestBody
    public final void d(RealBufferedSink sink) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        FileInputStream fileInputStream = new FileInputStream((FileDescriptor) null);
        try {
            sink.f.u(Okio.d(fileInputStream));
            CloseableKt.closeFinally(fileInputStream, null);
        } finally {
        }
    }
}
