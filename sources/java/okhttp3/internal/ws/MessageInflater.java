package okhttp3.internal.ws;

import java.io.Closeable;
import kotlin.Metadata;
import kotlin.jvm.internal.SourceDebugExtension;
import okio.InflaterSource;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/ws/MessageInflater;", "Ljava/io/Closeable;", "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nMessageInflater.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MessageInflater.kt\nokhttp3/internal/ws/MessageInflater\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,79:1\n1#2:80\n*E\n"})
/* loaded from: classes4.dex */
public final class MessageInflater implements Closeable {

    /* renamed from: c, reason: collision with root package name */
    public InflaterSource f22192c;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        InflaterSource inflaterSource = this.f22192c;
        if (inflaterSource != null) {
            inflaterSource.close();
        }
        this.f22192c = null;
    }
}
