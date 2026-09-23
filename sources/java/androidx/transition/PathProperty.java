package androidx.transition;

import android.util.Property;

/* loaded from: classes.dex */
class PathProperty<T> extends Property<T, Float> {

    /* renamed from: a, reason: collision with root package name */
    public float f1694a;

    @Override // android.util.Property
    public final Float get(Object obj) {
        return Float.valueOf(this.f1694a);
    }

    @Override // android.util.Property
    public final void set(Object obj, Float f) {
        this.f1694a = f.floatValue();
        throw null;
    }
}
