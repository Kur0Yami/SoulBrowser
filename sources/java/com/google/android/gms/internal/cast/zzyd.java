package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.cast.zzya;
import com.google.android.gms.internal.cast.zzyd;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public abstract class zzyd<MessageType extends zzyd<MessageType, BuilderType>, BuilderType extends zzya<MessageType, BuilderType>> extends zzwz<MessageType, BuilderType> {
    private static final Map zzd = new ConcurrentHashMap();
    private int zzb;
    protected zzaae zzc;

    public zzyd() {
        this.zza = 0;
        this.zzb = -1;
        this.zzc = zzaae.e;
    }

    public static zzyd g(Class cls) {
        Map map = zzd;
        zzyd zzydVar = (zzyd) map.get(cls);
        if (zzydVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzydVar = (zzyd) map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzydVar == null) {
            zzyd zzydVar2 = (zzyd) ((zzyd) zzaak.e(cls)).j(6, null);
            if (zzydVar2 != null) {
                map.put(cls, zzydVar2);
                return zzydVar2;
            }
            throw new IllegalStateException();
        }
        return zzydVar;
    }

    public static void h(Class cls, zzyd zzydVar) {
        zzydVar.m();
        zzd.put(cls, zzydVar);
    }

    public static Object i(Method method, zzyd zzydVar, Object... objArr) {
        try {
            return method.invoke(zzydVar, objArr);
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

    @Override // com.google.android.gms.internal.cast.zzwz
    public final int b(zzzs zzzsVar) {
        if (l()) {
            int d = zzzsVar.d(this);
            if (d >= 0) {
                return d;
            }
            StringBuilder sb = new StringBuilder(androidx.work.impl.workers.a.a(d, 42));
            sb.append("serialized size must be non-negative, was ");
            sb.append(d);
            throw new IllegalStateException(sb.toString());
        }
        int i = this.zzb & Integer.MAX_VALUE;
        if (i == Integer.MAX_VALUE) {
            int d2 = zzzsVar.d(this);
            if (d2 >= 0) {
                this.zzb = (this.zzb & IntCompanionObject.MIN_VALUE) | d2;
                return d2;
            }
            StringBuilder sb2 = new StringBuilder(androidx.work.impl.workers.a.a(d2, 42));
            sb2.append("serialized size must be non-negative, was ");
            sb2.append(d2);
            throw new IllegalStateException(sb2.toString());
        }
        return i;
    }

    public final zzya d() {
        return (zzya) j(5, null);
    }

    public final void e() {
        this.zzb = (this.zzb & IntCompanionObject.MIN_VALUE) | Integer.MAX_VALUE;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzzp.f9899c.a(getClass()).e(this, (zzyd) obj);
    }

    public final void f(zzxp zzxpVar) {
        zzxq zzxqVar;
        zzzs a2 = zzzp.f9899c.a(getClass());
        Object obj = zzxpVar.f9872a;
        if (obj != null) {
            zzxqVar = (zzxq) obj;
        } else {
            zzxqVar = new zzxq(zzxpVar);
        }
        a2.g(this, zzxqVar);
    }

    public final int hashCode() {
        if (!l()) {
            int i = this.zza;
            if (i == 0) {
                int f = zzzp.f9899c.a(getClass()).f(this);
                this.zza = f;
                return f;
            }
            return i;
        }
        return zzzp.f9899c.a(getClass()).f(this);
    }

    public abstract Object j(int i, zzyd zzydVar);

    @Override // com.google.android.gms.internal.cast.zzzi
    public final /* synthetic */ zzya k() {
        return (zzya) j(5, null);
    }

    public final boolean l() {
        return (this.zzb & IntCompanionObject.MIN_VALUE) != 0;
    }

    public final void m() {
        this.zzb &= Integer.MAX_VALUE;
    }

    public final String toString() {
        String obj = super.toString();
        char[] cArr = zzzk.f9893a;
        StringBuilder v = android.support.v4.media.a.v("# ", obj);
        zzzk.b(this, v, 0);
        return v.toString();
    }

    @Override // com.google.android.gms.internal.cast.zzzi
    public final int zzE() {
        if (l()) {
            int d = zzzp.f9899c.a(getClass()).d(this);
            if (d >= 0) {
                return d;
            }
            StringBuilder sb = new StringBuilder(androidx.work.impl.workers.a.a(d, 42));
            sb.append("serialized size must be non-negative, was ");
            sb.append(d);
            throw new IllegalStateException(sb.toString());
        }
        int i = this.zzb & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int d2 = zzzp.f9899c.a(getClass()).d(this);
        if (d2 >= 0) {
            this.zzb = (this.zzb & IntCompanionObject.MIN_VALUE) | d2;
            return d2;
        }
        StringBuilder sb2 = new StringBuilder(androidx.work.impl.workers.a.a(d2, 42));
        sb2.append("serialized size must be non-negative, was ");
        sb2.append(d2);
        throw new IllegalStateException(sb2.toString());
    }

    @Override // com.google.android.gms.internal.cast.zzzj
    public final /* synthetic */ zzyd zzx() {
        return (zzyd) j(6, null);
    }
}
