package j$.time.chrono;

/* loaded from: classes2.dex */
public interface b extends j$.time.temporal.m, j$.time.temporal.o, Comparable {
    e A(j$.time.k kVar);

    n B();

    b E(j$.time.temporal.q qVar);

    int H();

    /* renamed from: I */
    int compareTo(b bVar);

    @Override // j$.time.temporal.m
    b a(long j, j$.time.temporal.r rVar);

    @Override // j$.time.temporal.m
    b b(long j, j$.time.temporal.t tVar);

    @Override // j$.time.temporal.n
    boolean c(j$.time.temporal.r rVar);

    boolean equals(Object obj);

    m getChronology();

    int hashCode();

    boolean m();

    /* renamed from: o */
    b u(long j, j$.time.temporal.t tVar);

    b t(j$.time.temporal.o oVar);

    String toString();

    long z();
}
