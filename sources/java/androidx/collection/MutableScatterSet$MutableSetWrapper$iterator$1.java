package androidx.collection;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.sequences.SequencesKt;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010)\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"androidx/collection/MutableScatterSet$MutableSetWrapper$iterator$1", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MutableScatterSet$MutableSetWrapper$iterator$1 implements Iterator<Object>, KMutableIterator {

    /* renamed from: c, reason: collision with root package name */
    public int f459c = -1;
    public final Iterator f = SequencesKt.iterator(new MutableScatterSet$MutableSetWrapper$iterator$1$iterator$1(this, null));

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return this.f.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (this.f459c == -1) {
        } else {
            throw null;
        }
    }
}
