package org.mozilla.universalchardet.prober.statemachine;

/* loaded from: classes4.dex */
public abstract class SMModel {

    /* renamed from: a, reason: collision with root package name */
    public final PkgInt f22683a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final PkgInt f22684c;
    public final int[] d;
    public final String e;

    public SMModel(PkgInt pkgInt, int i, PkgInt pkgInt2, int[] iArr, String str) {
        this.f22683a = pkgInt;
        this.b = i;
        this.f22684c = pkgInt2;
        this.d = (int[]) iArr.clone();
        this.e = str;
    }
}
