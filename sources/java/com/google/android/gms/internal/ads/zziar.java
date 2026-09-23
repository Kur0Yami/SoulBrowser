package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzial;
import com.google.android.gms.internal.ads.zziar;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class zziar<MessageType extends zziar<MessageType, BuilderType>, BuilderType extends zzial<MessageType, BuilderType>> extends zzhyu<MessageType, BuilderType> {
    private static final int zza = Integer.MIN_VALUE;
    private static final int zzb = Integer.MAX_VALUE;
    private static Map<Class<?>, zziar<?, ?>> zzd = new ConcurrentHashMap();
    static final int zzr = Integer.MAX_VALUE;
    static final int zzs = 0;
    private int zzc;
    protected zzidg zzt;

    public zziar() {
        this.zzq = 0;
        this.zzc = -1;
        this.zzt = zzidg.f;
    }

    public static zziar A(zziar zziarVar, byte[] bArr, int i, zziab zziabVar) {
        if (i == 0) {
            return zziarVar;
        }
        zziar t = zziarVar.t();
        try {
            zzicu a2 = zzicm.f8938c.a(t.getClass());
            a2.e(t, bArr, 0, i, new zzhyz(zziabVar));
            a2.b(t);
            return t;
        } catch (zzibg e) {
            if (e.f8917c) {
                throw new IOException(e.getMessage(), e);
            }
            throw e;
        } catch (zzide e2) {
            throw new IOException(e2.getMessage());
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzibg) {
                throw ((zzibg) e3.getCause());
            }
            throw new IOException(e3.getMessage(), e3);
        } catch (IndexOutOfBoundsException unused) {
            throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    public static void C(zziar zziarVar) {
        if (zziarVar != null && !z(zziarVar, true)) {
            throw new IOException(new zzide().getMessage());
        }
    }

    public static Object p(Method method, zziar zziarVar, Object... objArr) {
        try {
            return method.invoke(zziarVar, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    public static zziar q(zziar zziarVar, zzhzq zzhzqVar, zziab zziabVar) {
        zziar t = zziarVar.t();
        try {
            zzicu a2 = zzicm.f8938c.a(t.getClass());
            a2.j(t, zzhzr.x(zzhzqVar), zziabVar);
            a2.b(t);
            return t;
        } catch (zzibg e) {
            if (e.f8917c) {
                throw new IOException(e.getMessage(), e);
            }
            throw e;
        } catch (zzide e2) {
            throw new IOException(e2.getMessage());
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzibg) {
                throw ((zzibg) e3.getCause());
            }
            throw new IOException(e3.getMessage(), e3);
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof zzibg) {
                throw ((zzibg) e4.getCause());
            }
            throw e4;
        }
    }

    public static zziar r(zziar zziarVar, zzhzl zzhzlVar, zziab zziabVar) {
        zzhzq x = zzhzlVar.x();
        zziar q = q(zziarVar, x, zziabVar);
        x.i(0);
        C(q);
        return q;
    }

    public static zziar s(zziar zziarVar, byte[] bArr, zziab zziabVar) {
        zziar A = A(zziarVar, bArr, bArr.length, zziabVar);
        C(A);
        return A;
    }

    public static zziar w(Class cls) {
        zziar<?, ?> zziarVar = zzd.get(cls);
        if (zziarVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zziarVar = zzd.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zziarVar == null) {
            zziar<?, ?> zziarVar2 = (zziar) ((zziar) zzidm.f(cls)).y(zziaq.j, null);
            if (zziarVar2 != null) {
                zzd.put(cls, zziarVar2);
                return zziarVar2;
            }
            throw new IllegalStateException();
        }
        return zziarVar;
    }

    public static void x(Class cls, zziar zziarVar) {
        zziarVar.o();
        zzd.put(cls, zziarVar);
    }

    public static final boolean z(zziar zziarVar, boolean z) {
        zziar zziarVar2 = null;
        byte byteValue = ((Byte) zziarVar.y(zziaq.f8914c, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean f = zzicm.f8938c.a(zziarVar.getClass()).f(zziarVar);
        if (z) {
            if (true == f) {
                zziarVar2 = zziarVar;
            }
            zziarVar.y(zziaq.f, zziarVar2);
        }
        return f;
    }

    @Override // com.google.android.gms.internal.ads.zzicc
    public final zzick a() {
        return (zzick) y(zziaq.k, null);
    }

    @Override // com.google.android.gms.internal.ads.zzicc
    public final void c(zzhzw zzhzwVar) {
        zzhzx zzhzxVar;
        zzicu a2 = zzicm.f8938c.a(getClass());
        Object obj = zzhzwVar.f8900a;
        if (obj != null) {
            zzhzxVar = (zzhzx) obj;
        } else {
            zzhzxVar = new zzhzx(zzhzwVar);
        }
        a2.i(this, zzhzxVar);
    }

    @Override // com.google.android.gms.internal.ads.zzicc
    public final int d() {
        return j(null);
    }

    @Override // com.google.android.gms.internal.ads.zzicd
    public final zziar e() {
        return (zziar) y(zziaq.j, null);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzicm.f8938c.a(getClass()).h(this, (zziar) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzicc
    public final zzicb g() {
        return (zzial) y(zziaq.i, null);
    }

    public final int hashCode() {
        if (n()) {
            return zzicm.f8938c.a(getClass()).g(this);
        }
        if (this.zzq == 0) {
            this.zzq = zzicm.f8938c.a(getClass()).g(this);
        }
        return this.zzq;
    }

    @Override // com.google.android.gms.internal.ads.zzhyu
    public final int i() {
        return this.zzc & Integer.MAX_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzhyu
    public final int j(zzicu zzicuVar) {
        int d;
        int d2;
        if (n()) {
            if (zzicuVar == null) {
                d2 = zzicm.f8938c.a(getClass()).d(this);
            } else {
                d2 = zzicuVar.d(this);
            }
            if (d2 >= 0) {
                return d2;
            }
            throw new IllegalStateException(androidx.work.impl.workers.a.r(d2, "serialized size must be non-negative, was ", new StringBuilder(String.valueOf(d2).length() + 42)));
        }
        if (i() != Integer.MAX_VALUE) {
            return i();
        }
        if (zzicuVar == null) {
            d = zzicm.f8938c.a(getClass()).d(this);
        } else {
            d = zzicuVar.d(this);
        }
        m(d);
        return d;
    }

    public final void m(int i) {
        if (i >= 0) {
            this.zzc = i | (this.zzc & Integer.MIN_VALUE);
            return;
        }
        throw new IllegalStateException(androidx.work.impl.workers.a.r(i, "serialized size must be non-negative, was ", new StringBuilder(String.valueOf(i).length() + 42)));
    }

    public final boolean n() {
        return (this.zzc & Integer.MIN_VALUE) != 0;
    }

    public final void o() {
        this.zzc &= Integer.MAX_VALUE;
    }

    public final zziar t() {
        return (zziar) y(zziaq.h, null);
    }

    public final String toString() {
        String obj = super.toString();
        char[] cArr = zzice.f8932a;
        StringBuilder v = android.support.v4.media.a.v("# ", obj);
        zzice.b(this, v, 0);
        return v.toString();
    }

    public final zzial u() {
        return (zzial) y(zziaq.i, null);
    }

    public final zzial v() {
        zzial zzialVar = (zzial) y(zziaq.i, null);
        zzialVar.n(this);
        return zzialVar;
    }

    public abstract Object y(zziaq zziaqVar, zziar zziarVar);
}
