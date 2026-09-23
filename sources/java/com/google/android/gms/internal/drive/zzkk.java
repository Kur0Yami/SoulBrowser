package com.google.android.gms.internal.drive;

import android.support.v4.media.a;
import com.google.android.gms.internal.drive.zzkk;
import com.google.android.gms.internal.drive.zzkk.zza;
import j$.util.concurrent.ConcurrentHashMap;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class zzkk<MessageType extends zzkk<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zzit<MessageType, BuilderType> {
    private static Map<Object, zzkk<?, ?>> zzrs = new ConcurrentHashMap();
    protected zzmy zzrq;
    private int zzrr;

    /* loaded from: classes.dex */
    public static abstract class zza<MessageType extends zzkk<MessageType, BuilderType>, BuilderType extends zza<MessageType, BuilderType>> extends zziu<MessageType, BuilderType> {

        /* renamed from: c, reason: collision with root package name */
        public final zzkk f10220c;
        public zzkk f;
        public boolean g = false;

        public zza(zzkk zzkkVar) {
            this.f10220c = zzkkVar;
            this.f = (zzkk) zzkkVar.i(4, null);
        }

        @Override // com.google.android.gms.internal.drive.zzlr
        public final zzkk G() {
            zzkk i = i();
            if (i.isInitialized()) {
                return i;
            }
            throw new RuntimeException("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
        }

        @Override // com.google.android.gms.internal.drive.zzls
        public final /* synthetic */ zzlq b() {
            throw null;
        }

        @Override // com.google.android.gms.internal.drive.zziu
        public final Object clone() {
            zza zzaVar = (zza) this.f10220c.i(5, null);
            zzkk i = i();
            zzaVar.h();
            zzkk zzkkVar = zzaVar.f;
            zzmd.f10242c.b(zzkkVar).e(zzkkVar, i);
            return zzaVar;
        }

        @Override // com.google.android.gms.internal.drive.zziu
        /* renamed from: f */
        public final /* synthetic */ zza clone() {
            return (zza) clone();
        }

        public final zza g(zzit zzitVar) {
            h();
            zzkk zzkkVar = this.f;
            zzmd.f10242c.b(zzkkVar).e(zzkkVar, (zzkk) zzitVar);
            return this;
        }

        public final void h() {
            if (this.g) {
                zzkk zzkkVar = (zzkk) this.f.i(4, null);
                zzkk zzkkVar2 = this.f;
                zzmd zzmdVar = zzmd.f10242c;
                zzmdVar.getClass();
                zzmdVar.a(zzkkVar.getClass()).e(zzkkVar, zzkkVar2);
                this.f = zzkkVar;
                this.g = false;
            }
        }

        public final zzkk i() {
            if (this.g) {
                return this.f;
            }
            zzkk zzkkVar = this.f;
            zzkkVar.getClass();
            zzmd zzmdVar = zzmd.f10242c;
            zzmdVar.getClass();
            zzmdVar.a(zzkkVar.getClass()).a(zzkkVar);
            this.g = true;
            return this.f;
        }
    }

    /* loaded from: classes.dex */
    public static class zzb<T extends zzkk<T, ?>> extends zziv<T> {
    }

    /* loaded from: classes.dex */
    public static abstract class zzc<MessageType extends zzc<MessageType, BuilderType>, BuilderType> extends zzkk<MessageType, BuilderType> implements zzls {
        protected zzkb<Object> zzrw;
    }

    /* loaded from: classes.dex */
    public static class zzd<ContainingType extends zzlq, Type> extends zzjv<ContainingType, Type> {
    }

    /* loaded from: classes.dex */
    public enum zze {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f10221a = {1, 2, 3, 4, 5, 6, 7};
    }

    public zzkk() {
        this.zzne = 0;
        this.zzrq = zzmy.e;
        this.zzrr = -1;
    }

    public static Object j(Method method, zzkk zzkkVar, Object... objArr) {
        try {
            return method.invoke(zzkkVar, objArr);
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

    public static void k(Class cls, zzkk zzkkVar) {
        zzrs.put(cls, zzkkVar);
    }

    public static zzkk l(Class cls) {
        zzkk<?, ?> zzkkVar = zzrs.get(cls);
        if (zzkkVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzkkVar = zzrs.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzkkVar == null) {
            zzkk<?, ?> zzkkVar2 = (zzkk) ((zzkk) zznd.i(cls)).i(6, null);
            if (zzkkVar2 != null) {
                zzrs.put(cls, zzkkVar2);
                return zzkkVar2;
            }
            throw new IllegalStateException();
        }
        return zzkkVar;
    }

    @Override // com.google.android.gms.internal.drive.zzls
    public final /* synthetic */ zzlq b() {
        return (zzkk) i(6, null);
    }

    @Override // com.google.android.gms.internal.drive.zzlq
    public final void c(zzjr zzjrVar) {
        zzmf a2 = zzmd.f10242c.a(getClass());
        zzjt zzjtVar = zzjrVar.f10208a;
        if (zzjtVar == null) {
            zzjtVar = new zzjt(zzjrVar);
        }
        a2.b(this, zzjtVar);
    }

    @Override // com.google.android.gms.internal.drive.zzlq
    public final int d() {
        if (this.zzrr == -1) {
            zzmd zzmdVar = zzmd.f10242c;
            zzmdVar.getClass();
            this.zzrr = zzmdVar.a(getClass()).c(this);
        }
        return this.zzrr;
    }

    @Override // com.google.android.gms.internal.drive.zzlq
    public final zza e() {
        zza zzaVar = (zza) i(5, null);
        zzaVar.h();
        zzkk zzkkVar = zzaVar.f;
        zzmd.f10242c.b(zzkkVar).e(zzkkVar, this);
        return zzaVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!((zzkk) i(6, null)).getClass().isInstance(obj)) {
            return false;
        }
        zzmd zzmdVar = zzmd.f10242c;
        zzmdVar.getClass();
        return zzmdVar.a(getClass()).f(this, (zzkk) obj);
    }

    @Override // com.google.android.gms.internal.drive.zzit
    public final int g() {
        return this.zzrr;
    }

    @Override // com.google.android.gms.internal.drive.zzit
    public final void h(int i) {
        this.zzrr = i;
    }

    public final int hashCode() {
        int i = this.zzne;
        if (i != 0) {
            return i;
        }
        zzmd zzmdVar = zzmd.f10242c;
        zzmdVar.getClass();
        int d = zzmdVar.a(getClass()).d(this);
        this.zzne = d;
        return d;
    }

    public abstract Object i(int i, zzkk zzkkVar);

    @Override // com.google.android.gms.internal.drive.zzls
    public final boolean isInitialized() {
        zzkk<MessageType, BuilderType> zzkkVar = null;
        byte byteValue = ((Byte) i(1, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        zzmd zzmdVar = zzmd.f10242c;
        zzmdVar.getClass();
        boolean g = zzmdVar.a(getClass()).g(this);
        if (g) {
            zzkkVar = this;
        }
        i(2, zzkkVar);
        return g;
    }

    public final String toString() {
        StringBuilder v = a.v("# ", super.toString());
        zzlt.a(this, v, 0);
        return v.toString();
    }
}
