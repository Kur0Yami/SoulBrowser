package kotlin.sequences;

import kotlin.collections.IndexedValue;
import kotlin.jvm.functions.Function1;

/* loaded from: classes4.dex */
public final /* synthetic */ class c implements Function1 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f21549c;

    public /* synthetic */ c(int i) {
        this.f21549c = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object filterIndexed$lambda$1$SequencesKt___SequencesKt;
        boolean filterNotNull$lambda$0$SequencesKt___SequencesKt;
        Object distinct$lambda$0$SequencesKt___SequencesKt;
        switch (this.f21549c) {
            case 0:
                return SequencesKt__SequencesKt.d((Sequence) obj);
            case 1:
                return SequencesKt__SequencesKt.e((Iterable) obj);
            case 2:
                return SequencesKt__SequencesKt.b(obj);
            case 3:
                filterIndexed$lambda$1$SequencesKt___SequencesKt = SequencesKt___SequencesKt.filterIndexed$lambda$1$SequencesKt___SequencesKt((IndexedValue) obj);
                return filterIndexed$lambda$1$SequencesKt___SequencesKt;
            case 4:
                filterNotNull$lambda$0$SequencesKt___SequencesKt = SequencesKt___SequencesKt.filterNotNull$lambda$0$SequencesKt___SequencesKt(obj);
                return Boolean.valueOf(filterNotNull$lambda$0$SequencesKt___SequencesKt);
            default:
                distinct$lambda$0$SequencesKt___SequencesKt = SequencesKt___SequencesKt.distinct$lambda$0$SequencesKt___SequencesKt(obj);
                return distinct$lambda$0$SequencesKt___SequencesKt;
        }
    }
}
