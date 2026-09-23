package okhttp3.internal.concurrent;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b&\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokhttp3/internal/concurrent/Task;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okhttp"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Task.kt\nokhttp3/internal/concurrent/Task\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,71:1\n1#2:72\n*E\n"})
/* loaded from: classes4.dex */
public abstract class Task {

    /* renamed from: a, reason: collision with root package name */
    public final String f22082a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public TaskQueue f22083c;
    public long d;

    public Task(String name, boolean z) {
        Intrinsics.checkNotNullParameter(name, "name");
        this.f22082a = name;
        this.b = z;
        this.d = -1L;
    }

    public abstract long a();

    /* renamed from: toString, reason: from getter */
    public final String getF22082a() {
        return this.f22082a;
    }
}
