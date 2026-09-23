package com.google.android.gms.internal.play_billing;

import android.support.v4.media.a;
import com.google.android.gms.internal.play_billing.zzfr;
import com.google.android.gms.internal.play_billing.zzfv;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes3.dex */
public abstract class zzfv<MessageType extends zzfv<MessageType, BuilderType>, BuilderType extends zzfr<MessageType, BuilderType>> extends zzeg<MessageType, BuilderType> {
    private static final Map zzb = new ConcurrentHashMap();
    protected zzid zzc;
    private int zzd;

    public zzfv() {
        this.zza = 0;
        this.zzd = -1;
        this.zzc = zzid.f;
    }

    public static void e(Class cls, zzfv zzfvVar) {
        zzfvVar.d();
        zzb.put(cls, zzfvVar);
    }

    public static final boolean h(zzfv zzfvVar, boolean z) {
        byte byteValue = ((Byte) zzfvVar.i(1)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean b = zzhj.f11527c.a(zzfvVar.getClass()).b(zzfvVar);
        if (z) {
            zzfvVar.i(2);
        }
        return b;
    }

    public static zzfv l(Class cls) {
        Map map = zzb;
        zzfv zzfvVar = (zzfv) map.get(cls);
        if (zzfvVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzfvVar = (zzfv) map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzfvVar == null) {
            zzfv zzfvVar2 = (zzfv) ((zzfv) zzij.g(cls)).i(6);
            if (zzfvVar2 != null) {
                map.put(cls, zzfvVar2);
                return zzfvVar2;
            }
            throw new IllegalStateException();
        }
        return zzfvVar;
    }

    public static zzfv n(zzfv zzfvVar, byte[] bArr, zzfh zzfhVar) {
        int length = bArr.length;
        if (length != 0) {
            zzfv m = zzfvVar.m();
            try {
                zzhm a2 = zzhj.f11527c.a(m.getClass());
                a2.e(m, bArr, 0, length, new zzej(zzfhVar));
                a2.a(m);
                zzfvVar = m;
            } catch (zzgd e) {
                throw e;
            } catch (zzib e2) {
                throw new IOException(e2.getMessage());
            } catch (IOException e3) {
                if (e3.getCause() instanceof zzgd) {
                    throw ((zzgd) e3.getCause());
                }
                throw new IOException(e3.getMessage(), e3);
            } catch (IndexOutOfBoundsException unused) {
                throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
        }
        if (zzfvVar != null && !h(zzfvVar, true)) {
            throw new IOException(new zzib().getMessage());
        }
        return zzfvVar;
    }

    public static Object o(Method method, zzfv zzfvVar, Object... objArr) {
        try {
            return method.invoke(zzfvVar, objArr);
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

    @Override // com.google.android.gms.internal.play_billing.zzhc
    public final void a(zzfc zzfcVar) {
        zzfd zzfdVar;
        zzhm a2 = zzhj.f11527c.a(getClass());
        Object obj = zzfcVar.f11494a;
        if (obj != null) {
            zzfdVar = (zzfd) obj;
        } else {
            zzfdVar = new zzfd(zzfcVar);
        }
        a2.h(this, zzfdVar);
    }

    @Override // com.google.android.gms.internal.play_billing.zzeg
    public final int c(zzhm zzhmVar) {
        if (g()) {
            int d = zzhmVar.d(this);
            if (d >= 0) {
                return d;
            }
            throw new IllegalStateException(a.e(d, "serialized size must be non-negative, was "));
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i == Integer.MAX_VALUE) {
            int d2 = zzhmVar.d(this);
            if (d2 >= 0) {
                this.zzd = (this.zzd & IntCompanionObject.MIN_VALUE) | d2;
                return d2;
            }
            throw new IllegalStateException(a.e(d2, "serialized size must be non-negative, was "));
        }
        return i;
    }

    public final void d() {
        this.zzd &= Integer.MAX_VALUE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzhj.f11527c.a(getClass()).c(this, (zzfv) obj);
    }

    public final void f() {
        this.zzd = (this.zzd & IntCompanionObject.MIN_VALUE) | Integer.MAX_VALUE;
    }

    public final boolean g() {
        return (this.zzd & IntCompanionObject.MIN_VALUE) != 0;
    }

    public final int hashCode() {
        if (!g()) {
            int i = this.zza;
            if (i == 0) {
                int g = zzhj.f11527c.a(getClass()).g(this);
                this.zza = g;
                return g;
            }
            return i;
        }
        return zzhj.f11527c.a(getClass()).g(this);
    }

    public abstract Object i(int i);

    public final zzfr j() {
        return (zzfr) i(5);
    }

    public final zzfr k() {
        zzfr zzfrVar = (zzfr) i(5);
        if (!zzfrVar.f11504c.equals(this)) {
            if (!zzfrVar.f.g()) {
                zzfrVar.f();
            }
            zzfv zzfvVar = zzfrVar.f;
            zzhj.f11527c.a(zzfvVar.getClass()).f(zzfvVar, this);
        }
        return zzfrVar;
    }

    public final zzfv m() {
        return (zzfv) i(4);
    }

    public final void p() {
        zzhj.f11527c.a(getClass()).a(this);
        d();
    }

    public final String toString() {
        String obj = super.toString();
        char[] cArr = zzhe.f11521a;
        StringBuilder v = a.v("# ", obj);
        zzhe.c(this, v, 0);
        return v.toString();
    }

    @Override // com.google.android.gms.internal.play_billing.zzhd
    public final /* synthetic */ zzfv zzl() {
        return (zzfv) i(6);
    }

    @Override // com.google.android.gms.internal.play_billing.zzhc
    public final int zzn() {
        if (g()) {
            int d = zzhj.f11527c.a(getClass()).d(this);
            if (d >= 0) {
                return d;
            }
            throw new IllegalStateException(a.e(d, "serialized size must be non-negative, was "));
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int d2 = zzhj.f11527c.a(getClass()).d(this);
        if (d2 >= 0) {
            this.zzd = (this.zzd & IntCompanionObject.MIN_VALUE) | d2;
            return d2;
        }
        throw new IllegalStateException(a.e(d2, "serialized size must be non-negative, was "));
    }

    @Override // com.google.android.gms.internal.play_billing.zzhc
    public final /* synthetic */ zzfr zzw() {
        return (zzfr) i(5);
    }
}
