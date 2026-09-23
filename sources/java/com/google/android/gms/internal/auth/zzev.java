package com.google.android.gms.internal.auth;

import android.support.v4.media.a;
import com.google.android.gms.internal.auth.zzet;
import com.google.android.gms.internal.auth.zzev;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public abstract class zzev<MessageType extends zzev<MessageType, BuilderType>, BuilderType extends zzet<MessageType, BuilderType>> extends zzdq<MessageType, BuilderType> {
    private static final Map zzb = new ConcurrentHashMap();
    protected zzha zzc;
    private int zzd;

    public zzev() {
        this.zza = 0;
        this.zzd = -1;
        this.zzc = zzha.e;
    }

    public static zzev a(Class cls) {
        Map map = zzb;
        zzev zzevVar = (zzev) map.get(cls);
        if (zzevVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzevVar = (zzev) map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzevVar == null) {
            zzev zzevVar2 = (zzev) ((zzev) zzhj.c(cls)).h(6);
            if (zzevVar2 != null) {
                map.put(cls, zzevVar2);
                return zzevVar2;
            }
            throw new IllegalStateException();
        }
        return zzevVar;
    }

    public static Object c(Method method, zzev zzevVar, Object... objArr) {
        try {
            return method.invoke(zzevVar, objArr);
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

    public static void e(zzhs zzhsVar) {
        zzhsVar.d();
        zzb.put(zzhs.class, zzhsVar);
    }

    public final zzev b() {
        return (zzev) h(4);
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
        return zzgf.f9553c.a(getClass()).d(this, (zzev) obj);
    }

    public final void f() {
        this.zzd = (this.zzd & IntCompanionObject.MIN_VALUE) | Integer.MAX_VALUE;
    }

    public final boolean g() {
        return (this.zzd & IntCompanionObject.MIN_VALUE) != 0;
    }

    public abstract Object h(int i);

    public final int hashCode() {
        if (!g()) {
            int i = this.zza;
            if (i == 0) {
                int e = zzgf.f9553c.a(getClass()).e(this);
                this.zza = e;
                return e;
            }
            return i;
        }
        return zzgf.f9553c.a(getClass()).e(this);
    }

    public final String toString() {
        String obj = super.toString();
        char[] cArr = zzfz.f9547a;
        StringBuilder v = a.v("# ", obj);
        zzfz.c(this, v, 0);
        return v.toString();
    }

    @Override // com.google.android.gms.internal.auth.zzfy
    public final /* synthetic */ zzev zze() {
        return (zzev) h(6);
    }
}
