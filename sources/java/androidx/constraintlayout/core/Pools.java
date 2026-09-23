package androidx.constraintlayout.core;

/* loaded from: classes.dex */
final class Pools {

    /* loaded from: classes.dex */
    public interface Pool<T> {
    }

    /* loaded from: classes.dex */
    public static class SimplePool<T> implements Pool<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Object[] f501a = new Object[256];
        public int b;

        public final boolean a(ArrayRow arrayRow) {
            int i = this.b;
            Object[] objArr = this.f501a;
            if (i < objArr.length) {
                objArr[i] = arrayRow;
                this.b = i + 1;
                return true;
            }
            return false;
        }
    }
}
