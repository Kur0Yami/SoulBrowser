package androidx.coordinatorlayout.widget;

import androidx.annotation.RestrictTo;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.HashSet;

@RestrictTo
/* loaded from: classes.dex */
public final class DirectedAcyclicGraph<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Pools.SimplePool f613a = new Pools.SimplePool(10);
    public final SimpleArrayMap b = new SimpleArrayMap(0);

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f614c = new ArrayList();
    public final HashSet d = new HashSet();

    public final void a(Object obj, ArrayList arrayList, HashSet hashSet) {
        if (arrayList.contains(obj)) {
            return;
        }
        if (!hashSet.contains(obj)) {
            hashSet.add(obj);
            ArrayList arrayList2 = (ArrayList) this.b.get(obj);
            if (arrayList2 != null) {
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    a(arrayList2.get(i), arrayList, hashSet);
                }
            }
            hashSet.remove(obj);
            arrayList.add(obj);
            return;
        }
        throw new RuntimeException("This graph contains cyclic dependencies");
    }
}
