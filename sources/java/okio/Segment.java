package okio;

import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lokio/Segment;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Companion", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nSegment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Segment.kt\nokio/Segment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,187:1\n1#2:188\n*E\n"})
/* loaded from: classes4.dex */
public final class Segment {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f22217a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f22218c;
    public boolean d;
    public final boolean e;
    public Segment f;
    public Segment g;

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004¨\u0006\u0006"}, d2 = {"Lokio/Segment$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "SIZE", "I", "SHARE_MINIMUM", "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
    }

    public Segment() {
        this.f22217a = new byte[8192];
        this.e = true;
        this.d = false;
    }

    public final Segment a() {
        Segment segment = this.f;
        if (segment == this) {
            segment = null;
        }
        Segment segment2 = this.g;
        Intrinsics.checkNotNull(segment2);
        segment2.f = this.f;
        Segment segment3 = this.f;
        Intrinsics.checkNotNull(segment3);
        segment3.g = this.g;
        this.f = null;
        this.g = null;
        return segment;
    }

    public final void b(Segment segment) {
        Intrinsics.checkNotNullParameter(segment, "segment");
        segment.g = this;
        segment.f = this.f;
        Segment segment2 = this.f;
        Intrinsics.checkNotNull(segment2);
        segment2.g = segment;
        this.f = segment;
    }

    public final Segment c() {
        this.d = true;
        return new Segment(this.f22217a, this.b, this.f22218c, true, false);
    }

    public final void d(Segment sink, int i) {
        Intrinsics.checkNotNullParameter(sink, "sink");
        boolean z = sink.e;
        byte[] bArr = sink.f22217a;
        if (z) {
            int i2 = sink.f22218c;
            int i3 = i2 + i;
            if (i3 > 8192) {
                if (!sink.d) {
                    int i4 = sink.b;
                    if (i3 - i4 <= 8192) {
                        ArraysKt___ArraysJvmKt.copyInto$default(bArr, bArr, 0, i4, i2, 2, (Object) null);
                        sink.f22218c -= sink.b;
                        sink.b = 0;
                    } else {
                        throw new IllegalArgumentException();
                    }
                } else {
                    throw new IllegalArgumentException();
                }
            }
            int i5 = sink.f22218c;
            int i6 = this.b;
            ArraysKt.copyInto(this.f22217a, bArr, i5, i6, i6 + i);
            sink.f22218c += i;
            this.b += i;
            return;
        }
        throw new IllegalStateException("only owner can write");
    }

    public Segment(byte[] data, int i, int i2, boolean z, boolean z2) {
        Intrinsics.checkNotNullParameter(data, "data");
        this.f22217a = data;
        this.b = i;
        this.f22218c = i2;
        this.d = z;
        this.e = z2;
    }
}
