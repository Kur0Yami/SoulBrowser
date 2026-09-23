package kotlin.coroutines;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* loaded from: classes3.dex */
public final /* synthetic */ class b implements Function2 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f21537c;

    public /* synthetic */ b(int i) {
        this.f21537c = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        CoroutineContext plus$lambda$0;
        switch (this.f21537c) {
            case 0:
                return CombinedContext.d((String) obj, (CoroutineContext.Element) obj2);
            default:
                plus$lambda$0 = CoroutineContext.DefaultImpls.plus$lambda$0((CoroutineContext) obj, (CoroutineContext.Element) obj2);
                return plus$lambda$0;
        }
    }
}
