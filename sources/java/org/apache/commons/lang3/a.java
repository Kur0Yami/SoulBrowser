package org.apache.commons.lang3;

import j$.util.function.Predicate$CC;
import java.lang.annotation.Annotation;
import java.util.function.Predicate;

/* loaded from: classes4.dex */
public final /* synthetic */ class a implements Predicate {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f22362a;

    public /* synthetic */ Predicate and(Predicate predicate) {
        int i = this.f22362a;
        return Predicate$CC.$default$and(this, predicate);
    }

    public /* synthetic */ Predicate negate() {
        switch (this.f22362a) {
            case 0:
                return Predicate$CC.$default$negate(this);
            default:
                return Predicate$CC.$default$negate(this);
        }
    }

    public /* synthetic */ Predicate or(Predicate predicate) {
        int i = this.f22362a;
        return Predicate$CC.$default$or(this, predicate);
    }

    @Override // java.util.function.Predicate
    public final boolean test(Object obj) {
        switch (this.f22362a) {
            case 0:
                return Annotation.class.isAssignableFrom((Class) obj);
            default:
                return ArrayUtils.a(null, obj);
        }
    }
}
