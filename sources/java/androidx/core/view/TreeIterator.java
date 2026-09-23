package androidx.core.view;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010(\n\u0000\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u0002¨\u0006\u0003"}, d2 = {"Landroidx/core/view/TreeIterator;", RequestConfiguration.MAX_AD_CONTENT_RATING_T, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "core-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
/* loaded from: classes.dex */
public final class TreeIterator<T> implements Iterator<T>, KMappedMarker {

    /* renamed from: c, reason: collision with root package name */
    public final Function1 f788c;
    public final ArrayList f = new ArrayList();
    public Iterator g;

    public TreeIterator(Iterator it, Function1 function1) {
        this.f788c = function1;
        this.g = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.g.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Object next = this.g.next();
        Iterator it = (Iterator) this.f788c.invoke(next);
        ArrayList arrayList = this.f;
        if (it != null && it.hasNext()) {
            arrayList.add(this.g);
            this.g = it;
            return next;
        }
        while (!this.g.hasNext() && !arrayList.isEmpty()) {
            this.g = (Iterator) CollectionsKt.last((List) arrayList);
            CollectionsKt.removeLast(arrayList);
        }
        return next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
