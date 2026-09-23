package kotlin.collections;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.sequences.Sequence;

@Metadata(d1 = {"kotlin/collections/CollectionsKt__CollectionsJVMKt", "kotlin/collections/CollectionsKt__CollectionsKt", "kotlin/collections/CollectionsKt__IterablesKt", "kotlin/collections/CollectionsKt__IteratorsJVMKt", "kotlin/collections/CollectionsKt__IteratorsKt", "kotlin/collections/CollectionsKt__MutableCollectionsJVMKt", "kotlin/collections/CollectionsKt__MutableCollectionsKt", "kotlin/collections/CollectionsKt__ReversedViewsKt", "kotlin/collections/CollectionsKt___CollectionsJvmKt", "kotlin/collections/CollectionsKt___CollectionsKt"}, k = 4, mv = {2, 2, 0}, xi = 49)
/* loaded from: classes3.dex */
public final class CollectionsKt extends CollectionsKt___CollectionsKt {
    private CollectionsKt() {
    }

    public static /* bridge */ /* synthetic */ void d(Collection collection, Iterable iterable) {
        CollectionsKt__MutableCollectionsKt.addAll(collection, iterable);
    }

    public static /* bridge */ /* synthetic */ void e(Collection collection, Sequence sequence) {
        CollectionsKt__MutableCollectionsKt.addAll(collection, sequence);
    }

    public static /* bridge */ /* synthetic */ Appendable m(List list, StringBuilder sb, String str) {
        return CollectionsKt___CollectionsKt.joinTo$default(list, sb, str, null, null, 0, null, null, 124, null);
    }

    public static /* bridge */ /* synthetic */ String n(Iterable iterable, String str, String str2, String str3, Function1 function1, int i) {
        return CollectionsKt___CollectionsKt.joinToString$default(iterable, str, str2, str3, 0, null, function1, i, null);
    }

    public static /* bridge */ /* synthetic */ Comparable p(ArrayList arrayList) {
        return CollectionsKt___CollectionsKt.minOrNull((Iterable) arrayList);
    }

    public static /* bridge */ /* synthetic */ void s(java.util.AbstractSet abstractSet, Function1 function1) {
        CollectionsKt__MutableCollectionsKt.retainAll(abstractSet, function1);
    }

    public static /* bridge */ /* synthetic */ Object u(Collection collection) {
        return CollectionsKt___CollectionsKt.single(collection);
    }
}
