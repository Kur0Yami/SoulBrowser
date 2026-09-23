package androidx.versionedparcelable;

import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

@RestrictTo
/* loaded from: classes.dex */
public abstract class VersionedParcel {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayMap f1751a;
    public final ArrayMap b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayMap f1752c;

    /* renamed from: androidx.versionedparcelable.VersionedParcel$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends ObjectInputStream {
        @Override // java.io.ObjectInputStream
        public final Class resolveClass(ObjectStreamClass objectStreamClass) {
            Class<?> cls = Class.forName(objectStreamClass.getName(), false, getClass().getClassLoader());
            if (cls != null) {
                return cls;
            }
            return super.resolveClass(objectStreamClass);
        }
    }

    /* loaded from: classes.dex */
    public static class ParcelException extends RuntimeException {
    }

    public VersionedParcel(ArrayMap arrayMap, ArrayMap arrayMap2, ArrayMap arrayMap3) {
        this.f1751a = arrayMap;
        this.b = arrayMap2;
        this.f1752c = arrayMap3;
    }

    public abstract void a();

    public abstract VersionedParcel b();

    public final Class c(Class cls) {
        String name = cls.getName();
        ArrayMap arrayMap = this.f1752c;
        Class cls2 = (Class) arrayMap.get(name);
        if (cls2 == null) {
            Class<?> cls3 = Class.forName(cls.getPackage().getName() + "." + cls.getSimpleName() + "Parcelizer", false, cls.getClassLoader());
            arrayMap.put(cls.getName(), cls3);
            return cls3;
        }
        return cls2;
    }

    public final Method d(String str) {
        ArrayMap arrayMap = this.f1751a;
        Method method = (Method) arrayMap.get(str);
        if (method == null) {
            System.currentTimeMillis();
            Method declaredMethod = Class.forName(str, true, VersionedParcel.class.getClassLoader()).getDeclaredMethod("read", VersionedParcel.class);
            arrayMap.put(str, declaredMethod);
            return declaredMethod;
        }
        return method;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Method e(Class cls) {
        String name = cls.getName();
        ArrayMap arrayMap = this.b;
        Method method = (Method) arrayMap.get(name);
        if (method == null) {
            Class c2 = c(cls);
            System.currentTimeMillis();
            Method declaredMethod = c2.getDeclaredMethod("write", cls, VersionedParcel.class);
            arrayMap.put(cls.getName(), declaredMethod);
            return declaredMethod;
        }
        return method;
    }

    public boolean f() {
        return this instanceof VersionedParcelStream;
    }

    public abstract boolean g();

    public abstract byte[] h();

    public abstract CharSequence i();

    public abstract boolean j(int i);

    public abstract int k();

    public final int l(int i, int i2) {
        if (!j(i2)) {
            return i;
        }
        return k();
    }

    public abstract Parcelable m();

    public abstract String n();

    public final VersionedParcelable o() {
        String n = n();
        if (n == null) {
            return null;
        }
        try {
            return (VersionedParcelable) d(n).invoke(null, b());
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
        } catch (IllegalAccessException e2) {
            throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
        } catch (NoSuchMethodException e3) {
            throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
        } catch (InvocationTargetException e4) {
            if (e4.getCause() instanceof RuntimeException) {
                throw ((RuntimeException) e4.getCause());
            }
            throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
        }
    }

    public abstract void p(int i);

    public void q(boolean z, boolean z2) {
    }

    public abstract void r(boolean z);

    public abstract void s(byte[] bArr);

    public abstract void t(CharSequence charSequence);

    public abstract void u(int i);

    public final void v(int i, int i2) {
        p(i2);
        u(i);
    }

    public abstract void w(Parcelable parcelable);

    public abstract void x(String str);

    public final void y(VersionedParcelable versionedParcelable) {
        if (versionedParcelable == null) {
            x(null);
            return;
        }
        try {
            x(c(versionedParcelable.getClass()).getName());
            VersionedParcel b = b();
            try {
                e(versionedParcelable.getClass()).invoke(null, versionedParcelable, b);
                b.a();
            } catch (ClassNotFoundException e) {
                throw new RuntimeException("VersionedParcel encountered ClassNotFoundException", e);
            } catch (IllegalAccessException e2) {
                throw new RuntimeException("VersionedParcel encountered IllegalAccessException", e2);
            } catch (NoSuchMethodException e3) {
                throw new RuntimeException("VersionedParcel encountered NoSuchMethodException", e3);
            } catch (InvocationTargetException e4) {
                if (e4.getCause() instanceof RuntimeException) {
                    throw ((RuntimeException) e4.getCause());
                }
                throw new RuntimeException("VersionedParcel encountered InvocationTargetException", e4);
            }
        } catch (ClassNotFoundException e5) {
            throw new RuntimeException(versionedParcelable.getClass().getSimpleName().concat(" does not have a Parcelizer"), e5);
        }
    }
}
