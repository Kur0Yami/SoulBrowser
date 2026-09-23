package com.google.android.gms.internal.measurement;

import android.support.v4.media.a;
import com.google.android.gms.internal.measurement.zzjy;
import com.google.android.gms.internal.measurement.zzkc;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

/* loaded from: classes3.dex */
public abstract class zzkc<MessageType extends zzkc<MessageType, BuilderType>, BuilderType extends zzjy<MessageType, BuilderType>> extends zzil<MessageType, BuilderType> {
    private static final Map zza = new ConcurrentHashMap();
    protected zzmm zzc;
    protected int zzd;

    public static zzkc c(Class cls) {
        Map map = zza;
        zzkc zzkcVar = (zzkc) map.get(cls);
        if (zzkcVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzkcVar = (zzkc) map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzkcVar == null) {
            zzkc zzkcVar2 = (zzkc) ((zzkc) zzmv.c(cls)).e();
            if (zzkcVar2 != null) {
                map.put(cls, zzkcVar2);
                return zzkcVar2;
            }
            throw new IllegalStateException();
        }
        return zzkcVar;
    }

    public static Object d(Method method, zzkc zzkcVar, Object... objArr) {
        try {
            return method.invoke(zzkcVar, objArr);
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

    @Override // com.google.android.gms.internal.measurement.zzlk
    public final /* synthetic */ zzlj a() {
        return (zzkc) e();
    }

    public abstract Object e();

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzlr.f10396c.a(getClass()).b(this, (zzkc) obj);
    }

    public final int hashCode() {
        int i = this.zzb;
        if (i != 0) {
            return i;
        }
        int a2 = zzlr.f10396c.a(getClass()).a(this);
        this.zzb = a2;
        return a2;
    }

    public final String toString() {
        StringBuilder v = a.v("# ", super.toString());
        zzll.c(this, v, 0);
        return v.toString();
    }
}
