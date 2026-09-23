package kotlin.sequences;

import java.util.Collection;
import java.util.List;
import kotlin.collections.IndexedValue;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* loaded from: classes4.dex */
public final /* synthetic */ class b implements Function1 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f21548c;
    public final /* synthetic */ Object f;

    public /* synthetic */ b(int i, Object obj) {
        this.f21548c = i;
        this.f = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object invoke(Object obj) {
        Object generateSequence$lambda$0$SequencesKt__SequencesKt;
        Object requireNoNulls$lambda$0$SequencesKt___SequencesKt;
        boolean filterIndexed$lambda$0$SequencesKt___SequencesKt;
        Object onEach$lambda$0$SequencesKt___SequencesKt;
        switch (this.f21548c) {
            case 0:
                generateSequence$lambda$0$SequencesKt__SequencesKt = SequencesKt__SequencesKt.generateSequence$lambda$0$SequencesKt__SequencesKt((Function0) this.f, obj);
                return generateSequence$lambda$0$SequencesKt__SequencesKt;
            case 1:
                return Boolean.valueOf(SequencesKt___SequencesJvmKt.f((Class) this.f, obj));
            case 2:
                requireNoNulls$lambda$0$SequencesKt___SequencesKt = SequencesKt___SequencesKt.requireNoNulls$lambda$0$SequencesKt___SequencesKt((Sequence) this.f, obj);
                return requireNoNulls$lambda$0$SequencesKt___SequencesKt;
            case 3:
                filterIndexed$lambda$0$SequencesKt___SequencesKt = SequencesKt___SequencesKt.filterIndexed$lambda$0$SequencesKt___SequencesKt((Function2) this.f, (IndexedValue) obj);
                return Boolean.valueOf(filterIndexed$lambda$0$SequencesKt___SequencesKt);
            case 4:
                onEach$lambda$0$SequencesKt___SequencesKt = SequencesKt___SequencesKt.onEach$lambda$0$SequencesKt___SequencesKt((Function1) this.f, obj);
                return onEach$lambda$0$SequencesKt___SequencesKt;
            case 5:
                return Boolean.valueOf(SequencesKt___SequencesKt$minus$2.a((Object[]) this.f, obj));
            case 6:
                return Boolean.valueOf(SequencesKt___SequencesKt$minus$3.a((Collection) this.f, obj));
            default:
                return Boolean.valueOf(SequencesKt___SequencesKt$minus$4.a((List) this.f, obj));
        }
    }
}
