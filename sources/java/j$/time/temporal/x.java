package j$.time.temporal;

import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;

/* loaded from: classes2.dex */
public final class x implements Serializable {
    public static final ConcurrentHashMap g = new ConcurrentHashMap(4, 0.75f, 2);
    public static final i h;
    private static final long serialVersionUID = -1177360819670808121L;

    /* renamed from: a, reason: collision with root package name */
    public final j$.time.d f21262a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final transient w f21263c;
    public final transient w d;
    public final transient w e;
    public final transient w f;

    static {
        new x(j$.time.d.MONDAY, 4);
        a(j$.time.d.SUNDAY, 1);
        h = j.d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static x a(j$.time.d dVar, int i) {
        String str = dVar.toString() + i;
        ConcurrentHashMap concurrentHashMap = g;
        x xVar = (x) concurrentHashMap.get(str);
        if (xVar != null) {
            return xVar;
        }
        concurrentHashMap.putIfAbsent(str, new x(dVar, i));
        return (x) concurrentHashMap.get(str);
    }

    public x(j$.time.d dVar, int i) {
        b bVar = b.DAYS;
        b bVar2 = b.WEEKS;
        this.f21263c = new w("DayOfWeek", this, bVar, bVar2, w.f);
        this.d = new w("WeekOfMonth", this, bVar2, b.MONTHS, w.g);
        i iVar = j.d;
        this.e = new w("WeekOfWeekBasedYear", this, bVar2, iVar, w.i);
        this.f = new w("WeekBasedYear", this, iVar, b.FOREVER, a.YEAR.b);
        Objects.requireNonNull(dVar, "firstDayOfWeek");
        if (i < 1 || i > 7) {
            throw new IllegalArgumentException("Minimal number of days is invalid");
        }
        this.f21262a = dVar;
        this.b = i;
    }

    private void readObject(ObjectInputStream objectInputStream) {
        objectInputStream.defaultReadObject();
        if (this.f21262a == null) {
            throw new InvalidObjectException("firstDayOfWeek is null");
        }
        int i = this.b;
        if (i < 1 || i > 7) {
            throw new InvalidObjectException("Minimal number of days is invalid");
        }
    }

    private Object readResolve() {
        try {
            return a(this.f21262a, this.b);
        } catch (IllegalArgumentException e) {
            throw new InvalidObjectException("Invalid serialized WeekFields: " + e.getMessage());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof x) && hashCode() == obj.hashCode();
    }

    public final int hashCode() {
        return (this.f21262a.ordinal() * 7) + this.b;
    }

    public final String toString() {
        return "WeekFields[" + this.f21262a + "," + this.b + "]";
    }
}
