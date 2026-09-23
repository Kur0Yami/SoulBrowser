package kotlin.sequences;

import kotlin.jvm.functions.Function2;

/* loaded from: classes4.dex */
public final /* synthetic */ class d implements Function2 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f21550c;

    public /* synthetic */ d(int i) {
        this.f21550c = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        switch (this.f21550c) {
            case 0:
                return SequencesKt___SequencesKt.n(obj, obj2);
            default:
                return SequencesKt___SequencesKt.h(obj, obj2);
        }
    }
}
