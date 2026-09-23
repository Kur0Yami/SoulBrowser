package kotlin.collections.unsigned;

import kotlin.jvm.functions.Function0;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements Function0 {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f21533c;
    public final /* synthetic */ Object f;

    public /* synthetic */ a(int i, Object obj) {
        this.f21533c = i;
        this.f = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object invoke() {
        switch (this.f21533c) {
            case 0:
                return UArraysKt___UArraysKt.b((int[]) this.f);
            case 1:
                return UArraysKt___UArraysKt.d((long[]) this.f);
            case 2:
                return UArraysKt___UArraysKt.c((byte[]) this.f);
            default:
                return UArraysKt___UArraysKt.a((short[]) this.f);
        }
    }
}
