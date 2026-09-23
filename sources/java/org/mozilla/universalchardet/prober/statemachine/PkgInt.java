package org.mozilla.universalchardet.prober.statemachine;

/* loaded from: classes4.dex */
public class PkgInt {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f22682a;

    public PkgInt(int[] iArr) {
        this.f22682a = (int[]) iArr.clone();
    }

    public static int a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        return i | (i2 << 4) | (((i4 << 4) | i3) << 8) | (((((i8 << 4) | i7) << 8) | ((i6 << 4) | i5)) << 16);
    }
}
