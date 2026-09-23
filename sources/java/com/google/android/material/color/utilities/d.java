package com.google.android.material.color.utilities;

import com.google.android.gms.common.ConnectionResult;
import j$.util.function.Function$CC;
import java.lang.reflect.Field;
import java.util.function.Function;

/* loaded from: classes3.dex */
public final /* synthetic */ class d implements Function {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11745a;

    @Override // java.util.function.Function
    /* renamed from: andThen */
    public /* synthetic */ Function mo17andThen(Function function) {
        int i = this.f11745a;
        return Function$CC.$default$andThen(this, function);
    }

    @Override // java.util.function.Function
    public final Object apply(Object obj) {
        switch (this.f11745a) {
            case 0:
                ((DynamicScheme) obj).getClass();
                return null;
            case 1:
                throw null;
            case 2:
                ((DynamicScheme) obj).getClass();
                return null;
            case 3:
                throw null;
            case 4:
                return MaterialDynamicColors.c();
            case 5:
                ((DynamicScheme) obj).getClass();
                return null;
            case 6:
                ((DynamicScheme) obj).getClass();
                throw null;
            case 7:
                ((DynamicScheme) obj).getClass();
                return null;
            case 8:
                ((DynamicScheme) obj).getClass();
                throw null;
            case 9:
                ((DynamicScheme) obj).getClass();
                return null;
            case 10:
                ((DynamicScheme) obj).getClass();
                return null;
            case 11:
                throw null;
            case 12:
                ((DynamicScheme) obj).getClass();
                return null;
            case 13:
                throw null;
            case 14:
                ((DynamicScheme) obj).getClass();
                return null;
            case 15:
                throw null;
            case 16:
                ((DynamicScheme) obj).getClass();
                return null;
            case 17:
                throw null;
            case 18:
                ((DynamicScheme) obj).getClass();
                return null;
            case 19:
                throw null;
            case 20:
                throw null;
            case 21:
                ((DynamicScheme) obj).getClass();
                return null;
            case 22:
                ((DynamicScheme) obj).getClass();
                throw null;
            case ConnectionResult.API_DISABLED /* 23 */:
                ((DynamicScheme) obj).getClass();
                return null;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                throw null;
            case 25:
                ((DynamicScheme) obj).getClass();
                return null;
            case 26:
                throw null;
            case 27:
                ((DynamicScheme) obj).getClass();
                return null;
            case 28:
                throw null;
            default:
                return ((Field) obj).getName();
        }
    }

    @Override // java.util.function.Function
    public /* synthetic */ Function compose(Function function) {
        int i = this.f11745a;
        return Function$CC.$default$compose(this, function);
    }
}
