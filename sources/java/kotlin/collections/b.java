package kotlin.collections;

import kotlin.jvm.functions.Function0;

/* loaded from: classes3.dex */
public final /* synthetic */ class b implements Function0 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f21531c;
    public final /* synthetic */ Object f;

    public /* synthetic */ b(int i, Object obj) {
        this.f21531c = i;
        this.f = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.f21531c) {
            case 0:
                return ArraysKt___ArraysKt.h((byte[]) this.f);
            case 1:
                return ArraysKt___ArraysKt.b((Object[]) this.f);
            case 2:
                return ArraysKt___ArraysKt.i((int[]) this.f);
            case 3:
                return ArraysKt___ArraysKt.e((double[]) this.f);
            case 4:
                return ArraysKt___ArraysKt.a((char[]) this.f);
            case 5:
                return ArraysKt___ArraysKt.f((short[]) this.f);
            case 6:
                return ArraysKt___ArraysKt.d((float[]) this.f);
            case 7:
                return ArraysKt___ArraysKt.g((boolean[]) this.f);
            case 8:
                return ArraysKt___ArraysKt.c((long[]) this.f);
            default:
                return CollectionsKt___CollectionsKt.b((Iterable) this.f);
        }
    }
}
