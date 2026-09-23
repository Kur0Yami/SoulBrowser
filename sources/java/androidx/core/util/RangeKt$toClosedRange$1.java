package androidx.core.util;

import kotlin.Metadata;
import kotlin.ranges.ClosedRange;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0018\u0002\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"androidx/core/util/RangeKt$toClosedRange$1", "Lkotlin/ranges/ClosedRange;", "core-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class RangeKt$toClosedRange$1 implements ClosedRange<Comparable<Object>> {
    @Override // kotlin.ranges.ClosedRange
    public final boolean contains(Comparable<Object> comparable) {
        return ClosedRange.DefaultImpls.contains(this, comparable);
    }

    @Override // kotlin.ranges.ClosedRange
    public final Comparable<Object> getEndInclusive() {
        throw null;
    }

    @Override // kotlin.ranges.ClosedRange
    public final Comparable<Object> getStart() {
        throw null;
    }

    @Override // kotlin.ranges.ClosedRange
    public final boolean isEmpty() {
        return ClosedRange.DefaultImpls.isEmpty(this);
    }
}
