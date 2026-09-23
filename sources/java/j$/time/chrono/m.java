package j$.time.chrono;

import j$.time.Instant;
import j$.time.LocalDateTime;
import j$.time.ZoneId;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public interface m extends Comparable {
    b D(int i, int i2, int i3);

    b F(Map map, j$.time.format.e0 e0Var);

    j G(Instant instant, ZoneId zoneId);

    boolean J(long j);

    b e(long j);

    boolean equals(Object obj);

    String f();

    int hashCode();

    String j();

    b k(int i, int i2);

    j$.time.temporal.v n(j$.time.temporal.a aVar);

    List p();

    n q(int i);

    int r(n nVar, int i);

    String toString();

    b w(j$.time.temporal.n nVar);

    e x(LocalDateTime localDateTime);
}
