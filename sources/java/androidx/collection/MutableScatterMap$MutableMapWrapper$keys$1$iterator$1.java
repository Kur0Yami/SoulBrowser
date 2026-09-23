package androidx.collection;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.internal.markers.KMutableIterator;
import kotlin.sequences.SequencesKt;

@Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010)\n\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001¨\u0006\u0002"}, d2 = {"androidx/collection/MutableScatterMap$MutableMapWrapper$keys$1$iterator$1", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class MutableScatterMap$MutableMapWrapper$keys$1$iterator$1 implements Iterator<Object>, KMutableIterator {

    /* renamed from: c, reason: collision with root package name */
    public final Iterator f455c = SequencesKt.iterator(new RestrictedSuspendLambda(2, null));
    public int f = -1;

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f455c.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        this.f = ((Number) this.f455c.next()).intValue();
        throw null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (this.f < 0) {
        } else {
            throw null;
        }
    }
}
