package j$.time;

import j$.util.Objects;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes2.dex */
public final class q implements j$.time.temporal.m, j$.time.temporal.o, Comparable, Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f21238c = 0;
    private static final long serialVersionUID = 7264499704384272492L;

    /* renamed from: a, reason: collision with root package name */
    public final k f21239a;
    public final ZoneOffset b;

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        q qVar = (q) obj;
        if (this.b.equals(qVar.b)) {
            return this.f21239a.compareTo(qVar.f21239a);
        }
        int compare = Long.compare(this.f21239a.W() - (this.b.f21144a * 1000000000), qVar.f21239a.W() - (qVar.b.f21144a * 1000000000));
        return compare == 0 ? this.f21239a.compareTo(qVar.f21239a) : compare;
    }

    static {
        k kVar = k.e;
        ZoneOffset zoneOffset = ZoneOffset.f;
        kVar.getClass();
        new q(kVar, zoneOffset);
        k kVar2 = k.f;
        ZoneOffset zoneOffset2 = ZoneOffset.e;
        kVar2.getClass();
        new q(kVar2, zoneOffset2);
    }

    public q(k kVar, ZoneOffset zoneOffset) {
        this.f21239a = (k) Objects.requireNonNull(kVar, "time");
        this.b = (ZoneOffset) Objects.requireNonNull(zoneOffset, "offset");
    }

    public final q L(k kVar, ZoneOffset zoneOffset) {
        return (this.f21239a == kVar && this.b.equals(zoneOffset)) ? this : new q(kVar, zoneOffset);
    }

    @Override // j$.time.temporal.n
    public final boolean c(j$.time.temporal.r rVar) {
        return rVar instanceof j$.time.temporal.a ? ((j$.time.temporal.a) rVar).y() || rVar == j$.time.temporal.a.OFFSET_SECONDS : rVar != null && rVar.d(this);
    }

    @Override // j$.time.temporal.n
    public final j$.time.temporal.v i(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            if (rVar != j$.time.temporal.a.OFFSET_SECONDS) {
                k kVar = this.f21239a;
                kVar.getClass();
                return j$.time.temporal.s.d(kVar, rVar);
            }
            return ((j$.time.temporal.a) rVar).b;
        }
        return rVar.g(this);
    }

    @Override // j$.time.temporal.n
    public final int g(j$.time.temporal.r rVar) {
        return j$.time.temporal.s.a(this, rVar);
    }

    @Override // j$.time.temporal.n
    public final long y(j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            if (rVar == j$.time.temporal.a.OFFSET_SECONDS) {
                return this.b.f21144a;
            }
            return this.f21239a.y(rVar);
        }
        return rVar.i(this);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m a(long j, j$.time.temporal.r rVar) {
        if (rVar instanceof j$.time.temporal.a) {
            if (rVar == j$.time.temporal.a.OFFSET_SECONDS) {
                j$.time.temporal.a aVar = (j$.time.temporal.a) rVar;
                return L(this.f21239a, ZoneOffset.R(aVar.b.a(j, aVar)));
            }
            return L(this.f21239a.a(j, rVar), this.b);
        }
        return (q) rVar.l(this, j);
    }

    @Override // j$.time.temporal.m
    /* renamed from: K, reason: merged with bridge method [inline-methods] */
    public final q b(long j, j$.time.temporal.t tVar) {
        if (tVar instanceof j$.time.temporal.b) {
            return L(this.f21239a.b(j, tVar), this.b);
        }
        return (q) tVar.d(this, j);
    }

    @Override // j$.time.temporal.m
    public final j$.time.temporal.m u(long j, j$.time.temporal.b bVar) {
        return j == Long.MIN_VALUE ? b(LongCompanionObject.MAX_VALUE, bVar).b(1L, bVar) : b(-j, bVar);
    }

    @Override // j$.time.temporal.n
    public final Object d(h hVar) {
        if (hVar == j$.time.temporal.s.d || hVar == j$.time.temporal.s.e) {
            return this.b;
        }
        if (((hVar == j$.time.temporal.s.f21256a) || (hVar == j$.time.temporal.s.b)) || hVar == j$.time.temporal.s.f) {
            return null;
        }
        if (hVar == j$.time.temporal.s.g) {
            return this.f21239a;
        }
        if (hVar == j$.time.temporal.s.f21257c) {
            return j$.time.temporal.b.NANOS;
        }
        return hVar.d(this);
    }

    @Override // j$.time.temporal.o
    public final j$.time.temporal.m l(j$.time.temporal.m mVar) {
        return mVar.a(this.f21239a.W(), j$.time.temporal.a.NANO_OF_DAY).a(this.b.f21144a, j$.time.temporal.a.OFFSET_SECONDS);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof q) {
            q qVar = (q) obj;
            if (this.f21239a.equals(qVar.f21239a) && this.b.equals(qVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f21239a.hashCode() ^ this.b.f21144a;
    }

    public final String toString() {
        return this.f21239a.toString() + this.b.b;
    }

    private Object writeReplace() {
        return new s((byte) 9, this);
    }

    private void readObject(ObjectInputStream objectInputStream) {
        throw new InvalidObjectException("Deserialization via serialization delegate");
    }

    @Override // j$.time.temporal.m
    /* renamed from: h */
    public final j$.time.temporal.m t(g gVar) {
        return (q) j$.com.android.tools.r8.a.a(gVar, this);
    }
}
