package com.google.android.material.color.utilities;

import com.google.android.gms.common.ConnectionResult;
import j$.util.function.Function$CC;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11742a;

    public /* synthetic */ a(int i) {
        this.f11742a = i;
    }

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo17andThen(Function function) {
        int i = this.f11742a;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        DynamicScheme dynamicScheme = (DynamicScheme) obj;
        switch (this.f11742a) {
            case 0:
                dynamicScheme.getClass();
                return null;
            case 1:
                dynamicScheme.getClass();
                throw null;
            case 2:
                dynamicScheme.getClass();
                return null;
            case 3:
                dynamicScheme.getClass();
                throw null;
            case 4:
                dynamicScheme.getClass();
                return null;
            case 5:
                throw null;
            case 6:
                dynamicScheme.getClass();
                return null;
            case 7:
                throw null;
            case 8:
                dynamicScheme.getClass();
                return null;
            case 9:
                throw null;
            case 10:
                dynamicScheme.getClass();
                return null;
            case 11:
                throw null;
            case 12:
                dynamicScheme.getClass();
                return null;
            case 13:
                throw null;
            case 14:
                throw null;
            case 15:
                dynamicScheme.getClass();
                return null;
            case 16:
                throw null;
            case 17:
                throw null;
            case 18:
                dynamicScheme.getClass();
                return null;
            case 19:
                dynamicScheme.getClass();
                throw null;
            case 20:
                dynamicScheme.getClass();
                return null;
            case 21:
                throw null;
            case 22:
                dynamicScheme.getClass();
                return null;
            case ConnectionResult.API_DISABLED /* 23 */:
                dynamicScheme.getClass();
                return null;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                throw null;
            case 25:
                dynamicScheme.getClass();
                return null;
            case 26:
                throw null;
            case 27:
                return new DynamicColor("background", new a(20), new a(21), true, null, null, null);
            case 28:
                dynamicScheme.getClass();
                return null;
            default:
                throw null;
        }
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        int i = this.f11742a;
        return Function$CC.$default$compose(this, function);
    }
}
