package j$.time.temporal;

import j$.util.Objects;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes2.dex */
public abstract class s {

    /* renamed from: a, reason: collision with root package name */
    public static final j$.time.h f21256a = new j$.time.h(3);
    public static final j$.time.h b = new j$.time.h(4);

    /* renamed from: c, reason: collision with root package name */
    public static final j$.time.h f21257c = new j$.time.h(5);
    public static final j$.time.h d = new j$.time.h(6);
    public static final j$.time.h e = new j$.time.h(7);
    public static final j$.time.h f = new j$.time.h(8);
    public static final j$.time.h g = new j$.time.h(9);

    public static /* synthetic */ int e(int i) {
        int i2 = i % 7;
        if (i2 == 0) {
            return 0;
        }
        return (((i ^ 7) >> 31) | 1) > 0 ? i2 : i2 + 7;
    }

    public static v d(n nVar, r rVar) {
        if (rVar instanceof a) {
            if (!nVar.c(rVar)) {
                throw new RuntimeException(j$.time.c.a("Unsupported field: ", rVar));
            }
            return ((a) rVar).b;
        }
        Objects.requireNonNull(rVar, "field");
        return rVar.g(nVar);
    }

    public static int a(n nVar, r rVar) {
        v i = nVar.i(rVar);
        if (!i.d()) {
            throw new RuntimeException("Invalid field " + rVar + " for get() method, use getLong() instead");
        }
        long y = nVar.y(rVar);
        if (i.e(y)) {
            return (int) y;
        }
        throw new RuntimeException("Invalid value for " + rVar + " (valid values " + i + "): " + y);
    }

    public static Object c(n nVar, j$.time.h hVar) {
        if (hVar == f21256a || hVar == b || hVar == f21257c) {
            return null;
        }
        return hVar.d(nVar);
    }

    public static m b(m mVar, long j, t tVar) {
        long j2;
        if (j == Long.MIN_VALUE) {
            mVar = mVar.b(LongCompanionObject.MAX_VALUE, tVar);
            j2 = 1;
        } else {
            j2 = -j;
        }
        return mVar.b(j2, tVar);
    }
}
