package com.google.android.material.color.utilities;

import androidx.annotation.RestrictTo;
import java.util.HashMap;
import java.util.function.Function;

@RestrictTo
/* loaded from: classes3.dex */
public final class DynamicColor {

    /* renamed from: a, reason: collision with root package name */
    public final Function f11737a;
    public final Function b;

    /* renamed from: c, reason: collision with root package name */
    public final Function f11738c;
    public final Function d;

    public DynamicColor(String str, Function function, Function function2, boolean z, Function function3, ContrastCurve contrastCurve, Function function4) {
        new HashMap();
        this.f11737a = function;
        this.b = function2;
        this.f11738c = function3;
        this.d = function4;
    }

    public static DynamicColor a(String str, Function function, Function function2) {
        return new DynamicColor(str, function, function2, false, null, null, null);
    }

    public DynamicColor(a aVar, a aVar2, a aVar3) {
        new HashMap();
        this.f11737a = aVar;
        this.b = aVar2;
        this.f11738c = null;
        this.d = null;
    }
}
