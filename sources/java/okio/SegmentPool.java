package okio;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\bÀ\u0002\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lokio/SegmentPool;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "okio"}, k = 1, mv = {2, 2, 0}, xi = 48)
/* loaded from: classes4.dex */
public final class SegmentPool {

    /* renamed from: a, reason: collision with root package name */
    public static final Segment f22219a = new Segment(new byte[0], 0, 0, false, false);
    public static final int b;

    /* renamed from: c, reason: collision with root package name */
    public static final AtomicReference[] f22220c;

    static {
        int highestOneBit = Integer.highestOneBit((Runtime.getRuntime().availableProcessors() * 2) - 1);
        b = highestOneBit;
        AtomicReference[] atomicReferenceArr = new AtomicReference[highestOneBit];
        for (int i = 0; i < highestOneBit; i++) {
            atomicReferenceArr[i] = new AtomicReference();
        }
        f22220c = atomicReferenceArr;
    }

    public static final void a(Segment segment) {
        int i;
        Intrinsics.checkNotNullParameter(segment, "segment");
        if (segment.f == null && segment.g == null) {
            if (!segment.d) {
                AtomicReference atomicReference = f22220c[(int) (Thread.currentThread().getId() & (b - 1))];
                Segment segment2 = f22219a;
                Segment segment3 = (Segment) atomicReference.getAndSet(segment2);
                if (segment3 == segment2) {
                    return;
                }
                if (segment3 != null) {
                    i = segment3.f22218c;
                } else {
                    i = 0;
                }
                if (i >= 65536) {
                    atomicReference.set(segment3);
                    return;
                }
                segment.f = segment3;
                segment.b = 0;
                segment.f22218c = i + 8192;
                atomicReference.set(segment);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Failed requirement.");
    }

    public static final Segment b() {
        AtomicReference atomicReference = f22220c[(int) (Thread.currentThread().getId() & (b - 1))];
        Segment segment = f22219a;
        Segment segment2 = (Segment) atomicReference.getAndSet(segment);
        if (segment2 == segment) {
            return new Segment();
        }
        if (segment2 == null) {
            atomicReference.set(null);
            return new Segment();
        }
        atomicReference.set(segment2.f);
        segment2.f = null;
        segment2.f22218c = 0;
        return segment2;
    }
}
