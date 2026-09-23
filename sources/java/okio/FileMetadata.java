package okio;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/FileMetadata;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class FileMetadata {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f22202a;
    public final boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final Path f22203c;
    public final Long d;
    public final Long e;
    public final Long f;
    public final Long g;
    public final Map h;

    public FileMetadata(boolean z, boolean z2, Path path, Long l, Long l2, Long l3, Long l4) {
        Map extras = MapsKt.emptyMap();
        Intrinsics.checkNotNullParameter(extras, "extras");
        this.f22202a = z;
        this.b = z2;
        this.f22203c = path;
        this.d = l;
        this.e = l2;
        this.f = l3;
        this.g = l4;
        this.h = MapsKt.toMap(extras);
    }

    public final String toString() {
        String joinToString$default;
        ArrayList arrayList = new ArrayList();
        if (this.f22202a) {
            arrayList.add("isRegularFile");
        }
        if (this.b) {
            arrayList.add("isDirectory");
        }
        Long l = this.d;
        if (l != null) {
            arrayList.add("byteCount=" + l.longValue());
        }
        Long l2 = this.e;
        if (l2 != null) {
            arrayList.add("createdAt=" + l2.longValue());
        }
        Long l3 = this.f;
        if (l3 != null) {
            arrayList.add("lastModifiedAt=" + l3.longValue());
        }
        Long l4 = this.g;
        if (l4 != null) {
            arrayList.add("lastAccessedAt=" + l4.longValue());
        }
        Map map = this.h;
        if (!map.isEmpty()) {
            arrayList.add("extras=" + map);
        }
        joinToString$default = CollectionsKt___CollectionsKt.joinToString$default(arrayList, ", ", "FileMetadata(", ")", 0, null, null, 56, null);
        return joinToString$default;
    }
}
