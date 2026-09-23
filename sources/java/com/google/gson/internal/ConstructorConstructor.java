package com.google.gson.internal;

import java.lang.reflect.Modifier;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes3.dex */
public final class ConstructorConstructor {

    /* renamed from: a, reason: collision with root package name */
    public final Map f12678a;
    public final List b;

    public ConstructorConstructor() {
        Map map = Collections.EMPTY_MAP;
        List list = Collections.EMPTY_LIST;
        this.f12678a = map;
        this.b = list;
    }

    public static String a(Class cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            return "Interfaces can't be instantiated! Register an InstanceCreator or a TypeAdapter for this type. Interface name: ".concat(cls.getName());
        }
        if (Modifier.isAbstract(modifiers)) {
            return "Abstract classes can't be instantiated! Adjust the R8 configuration or register an InstanceCreator or a TypeAdapter for this type. Class name: " + cls.getName() + "\nSee " + "https://github.com/google/gson/blob/main/Troubleshooting.md#".concat("r8-abstract-class");
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:58:0x0141, code lost:
    
        if (com.google.gson.internal.GsonTypes.e(r0[0]) != java.lang.String.class) goto L70;
     */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00cd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00ce  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.gson.internal.ObjectConstructor b(com.google.gson.reflect.TypeToken r12, boolean r13) {
        /*
            Method dump skipped, instructions count: 459
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.ConstructorConstructor.b(com.google.gson.reflect.TypeToken, boolean):com.google.gson.internal.ObjectConstructor");
    }

    public final String toString() {
        return this.f12678a.toString();
    }
}
