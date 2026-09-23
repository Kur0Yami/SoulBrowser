package com.google.android.material.color.utilities;

import j$.util.function.Function$CC;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final /* synthetic */ class b implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11743a;
    public final /* synthetic */ MaterialDynamicColors b;

    public /* synthetic */ b(MaterialDynamicColors materialDynamicColors, int i) {
        this.f11743a = i;
        this.b = materialDynamicColors;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo17andThen(Function function) {
        int i = this.f11743a;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f11743a) {
            case 0:
                MaterialDynamicColors materialDynamicColors = this.b;
                materialDynamicColors.e();
                materialDynamicColors.d();
                return new Object();
            case 1:
                MaterialDynamicColors materialDynamicColors2 = this.b;
                materialDynamicColors2.i();
                materialDynamicColors2.h();
                return new Object();
            case 2:
                MaterialDynamicColors materialDynamicColors3 = this.b;
                materialDynamicColors3.g();
                materialDynamicColors3.f();
                return new Object();
            case 3:
                MaterialDynamicColors materialDynamicColors4 = this.b;
                materialDynamicColors4.e();
                materialDynamicColors4.d();
                return new Object();
            case 4:
                return this.b.d();
            case 5:
                return this.b.a();
            case 6:
                return this.b.e();
            case 7:
                MaterialDynamicColors materialDynamicColors5 = this.b;
                materialDynamicColors5.i();
                materialDynamicColors5.h();
                return new Object();
            case 8:
                return this.b.f();
            case 9:
                MaterialDynamicColors materialDynamicColors6 = this.b;
                materialDynamicColors6.g();
                materialDynamicColors6.f();
                return new Object();
            case 10:
                return this.b.h();
            case 11:
                return this.b.i();
            case 12:
                return this.b.g();
            case 13:
                MaterialDynamicColors materialDynamicColors7 = this.b;
                materialDynamicColors7.b();
                materialDynamicColors7.a();
                return new Object();
            case 14:
                return this.b.b();
            default:
                MaterialDynamicColors materialDynamicColors8 = this.b;
                materialDynamicColors8.b();
                materialDynamicColors8.a();
                return new Object();
        }
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        int i = this.f11743a;
        return Function$CC.$default$compose(this, function);
    }
}
