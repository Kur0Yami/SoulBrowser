package j$.util.stream;

import j$.util.Map;
import j$.util.Spliterator;
import java.util.EnumMap;
import java.util.Map;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'DISTINCT' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes2.dex */
public final class c7 {
    public static final c7 DISTINCT;
    public static final c7 ORDERED;
    public static final c7 SHORT_CIRCUIT;
    public static final c7 SIZED;
    public static final c7 SORTED;
    public static final int f;
    public static final int g;
    public static final int h;
    public static final int i;
    public static final int j;
    public static final int k;
    public static final int l;
    public static final int m;
    public static final int n;
    public static final int o;
    public static final int p;
    public static final int q;
    public static final int r;
    public static final int s;
    public static final int t;
    public static final int u;
    public static final /* synthetic */ c7[] v;

    /* renamed from: a, reason: collision with root package name */
    public final Map f21394a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f21395c;
    public final int d;
    public final int e;

    public static c7 valueOf(String str) {
        return (c7) Enum.valueOf(c7.class, str);
    }

    public static c7[] values() {
        return (c7[]) v.clone();
    }

    static {
        b7 b7Var = b7.SPLITERATOR;
        j$.util.p l2 = l(b7Var);
        b7 b7Var2 = b7.STREAM;
        l2.a(b7Var2);
        b7 b7Var3 = b7.OP;
        ((EnumMap) ((Map) l2.b)).put((EnumMap) b7Var3, (b7) 3);
        c7 c7Var = new c7("DISTINCT", 0, 0, l2);
        DISTINCT = c7Var;
        j$.util.p l3 = l(b7Var);
        l3.a(b7Var2);
        ((EnumMap) ((Map) l3.b)).put((EnumMap) b7Var3, (b7) 3);
        c7 c7Var2 = new c7("SORTED", 1, 1, l3);
        SORTED = c7Var2;
        j$.util.p l4 = l(b7Var);
        l4.a(b7Var2);
        ((EnumMap) ((Map) l4.b)).put((EnumMap) b7Var3, (b7) 3);
        b7 b7Var4 = b7.TERMINAL_OP;
        ((EnumMap) ((Map) l4.b)).put((EnumMap) b7Var4, (b7) 2);
        b7 b7Var5 = b7.UPSTREAM_TERMINAL_OP;
        ((EnumMap) ((Map) l4.b)).put((EnumMap) b7Var5, (b7) 2);
        c7 c7Var3 = new c7("ORDERED", 2, 2, l4);
        ORDERED = c7Var3;
        j$.util.p l5 = l(b7Var);
        l5.a(b7Var2);
        ((EnumMap) ((Map) l5.b)).put((EnumMap) b7Var3, (b7) 2);
        c7 c7Var4 = new c7("SIZED", 3, 3, l5);
        SIZED = c7Var4;
        j$.util.p l6 = l(b7Var3);
        l6.a(b7Var4);
        int i2 = 0;
        c7 c7Var5 = new c7("SHORT_CIRCUIT", 4, 12, l6);
        SHORT_CIRCUIT = c7Var5;
        v = new c7[]{c7Var, c7Var2, c7Var3, c7Var4, c7Var5};
        f = g(b7Var);
        g = g(b7Var2);
        h = g(b7Var3);
        g(b7Var4);
        g(b7Var5);
        for (c7 c7Var6 : values()) {
            i2 |= c7Var6.e;
        }
        i = i2;
        int i3 = g;
        j = i3;
        int i4 = i3 << 1;
        k = i4;
        l = i3 | i4;
        c7 c7Var7 = DISTINCT;
        m = c7Var7.f21395c;
        n = c7Var7.d;
        c7 c7Var8 = SORTED;
        o = c7Var8.f21395c;
        p = c7Var8.d;
        c7 c7Var9 = ORDERED;
        q = c7Var9.f21395c;
        r = c7Var9.d;
        c7 c7Var10 = SIZED;
        s = c7Var10.f21395c;
        t = c7Var10.d;
        u = SHORT_CIRCUIT.f21395c;
    }

    public static j$.util.p l(b7 b7Var) {
        j$.util.p pVar = new j$.util.p(9, new EnumMap(b7.class));
        pVar.a(b7Var);
        return pVar;
    }

    public c7(String str, int i2, int i3, j$.util.p pVar) {
        for (b7 b7Var : b7.values()) {
            Map.EL.a((java.util.Map) pVar.b, b7Var, 0);
        }
        this.f21394a = (java.util.Map) pVar.b;
        int i4 = i3 * 2;
        this.b = i4;
        this.f21395c = 1 << i4;
        this.d = 2 << i4;
        this.e = 3 << i4;
    }

    public final boolean i(int i2) {
        return (i2 & this.e) == this.f21395c;
    }

    public static int g(b7 b7Var) {
        int i2 = 0;
        for (c7 c7Var : values()) {
            i2 |= ((Integer) c7Var.f21394a.get(b7Var)).intValue() << c7Var.b;
        }
        return i2;
    }

    public static int d(int i2, int i3) {
        int i4;
        if (i2 == 0) {
            i4 = i;
        } else {
            i4 = ~(((j & i2) << 1) | i2 | ((k & i2) >> 1));
        }
        return i2 | (i3 & i4);
    }

    public static int h(Spliterator spliterator) {
        int characteristics = spliterator.characteristics();
        int i2 = characteristics & 4;
        int i3 = f;
        return (i2 == 0 || spliterator.getComparator() == null) ? characteristics & i3 : characteristics & i3 & (-5);
    }
}
