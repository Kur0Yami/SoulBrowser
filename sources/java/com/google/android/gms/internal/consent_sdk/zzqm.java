package com.google.android.gms.internal.consent_sdk;

import android.support.v4.media.a;
import com.google.android.gms.internal.consent_sdk.zzqj;
import com.google.android.gms.internal.consent_sdk.zzqm;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public abstract class zzqm<MessageType extends zzqm<MessageType, BuilderType>, BuilderType extends zzqj<MessageType, BuilderType>> extends zzpa<MessageType, BuilderType> {
    private static final Map zzb = new ConcurrentHashMap();
    protected zzsq zzc;
    private int zzd;

    public zzqm() {
        this.zza = 0;
        this.zzd = -1;
        this.zzc = zzsq.e;
    }

    public static zzqm h(Class cls) {
        Map map = zzb;
        zzqm zzqmVar = (zzqm) map.get(cls);
        if (zzqmVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzqmVar = (zzqm) map.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzqmVar == null) {
            zzqm zzqmVar2 = (zzqm) ((zzqm) zzsw.g(cls)).f(6);
            if (zzqmVar2 != null) {
                map.put(cls, zzqmVar2);
                return zzqmVar2;
            }
            throw new IllegalStateException();
        }
        return zzqmVar;
    }

    public static Object i(Method method, zzqm zzqmVar, Object... objArr) {
        try {
            return method.invoke(zzqmVar, objArr);
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

    public static void l(Class cls, zzqm zzqmVar) {
        zzqmVar.k();
        zzb.put(cls, zzqmVar);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzrq
    public final void a(zzpv zzpvVar) {
        zzpw zzpwVar;
        zzsa a2 = zzrx.f10104c.a(getClass());
        Object obj = zzpvVar.f10076a;
        if (obj != null) {
            zzpwVar = (zzpw) obj;
        } else {
            zzpwVar = new zzpw(zzpvVar);
        }
        a2.g(this, zzpwVar);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpa
    public final int c(zzsa zzsaVar) {
        if (e()) {
            int f = zzsaVar.f(this);
            if (f >= 0) {
                return f;
            }
            throw new IllegalStateException(a.e(f, "serialized size must be non-negative, was "));
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i == Integer.MAX_VALUE) {
            int f2 = zzsaVar.f(this);
            if (f2 >= 0) {
                this.zzd = (this.zzd & IntCompanionObject.MIN_VALUE) | f2;
                return f2;
            }
            throw new IllegalStateException(a.e(f2, "serialized size must be non-negative, was "));
        }
        return i;
    }

    public final void d() {
        this.zzd = (this.zzd & IntCompanionObject.MIN_VALUE) | Integer.MAX_VALUE;
    }

    public final boolean e() {
        return (this.zzd & IntCompanionObject.MIN_VALUE) != 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzrx.f10104c.a(getClass()).d(this, (zzqm) obj);
    }

    public abstract Object f(int i);

    public final zzqj g() {
        return (zzqj) f(5);
    }

    public final int hashCode() {
        if (!e()) {
            int i = this.zza;
            if (i == 0) {
                int c2 = zzrx.f10104c.a(getClass()).c(this);
                this.zza = c2;
                return c2;
            }
            return i;
        }
        return zzrx.f10104c.a(getClass()).c(this);
    }

    public final void j() {
        zzrx.f10104c.a(getClass()).a(this);
        k();
    }

    public final void k() {
        this.zzd &= Integer.MAX_VALUE;
    }

    public final String toString() {
        String obj = super.toString();
        char[] cArr = zzrs.f10098a;
        StringBuilder v = a.v("# ", obj);
        zzrs.c(this, v, 0);
        return v.toString();
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzrr
    public final /* synthetic */ zzqm zzl() {
        return (zzqm) f(6);
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzrq
    public final int zzn() {
        if (e()) {
            int f = zzrx.f10104c.a(getClass()).f(this);
            if (f >= 0) {
                return f;
            }
            throw new IllegalStateException(a.e(f, "serialized size must be non-negative, was "));
        }
        int i = this.zzd & Integer.MAX_VALUE;
        if (i != Integer.MAX_VALUE) {
            return i;
        }
        int f2 = zzrx.f10104c.a(getClass()).f(this);
        if (f2 >= 0) {
            this.zzd = (this.zzd & IntCompanionObject.MIN_VALUE) | f2;
            return f2;
        }
        throw new IllegalStateException(a.e(f2, "serialized size must be non-negative, was "));
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzrq
    public final /* synthetic */ zzqj zzu() {
        return (zzqj) f(5);
    }
}
