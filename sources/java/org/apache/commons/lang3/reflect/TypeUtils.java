package org.apache.commons.lang3.reflect;

import j$.util.Map;
import j$.util.Objects;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import kotlin.io.path.f;
import org.apache.commons.lang3.AppendableJoiner;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.builder.Builder;

/* loaded from: classes4.dex */
public class TypeUtils {

    /* renamed from: a, reason: collision with root package name */
    public static final AppendableJoiner f22387a;
    public static final AppendableJoiner b;

    /* loaded from: classes4.dex */
    public static final class GenericArrayTypeImpl implements GenericArrayType {
        public final boolean equals(Object obj) {
            if (obj != this) {
                if (obj instanceof GenericArrayType) {
                    AppendableJoiner appendableJoiner = TypeUtils.f22387a;
                    if (!TypeUtils.c(null, ((GenericArrayType) obj).getGenericComponentType())) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return true;
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return null;
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            return TypeUtils.p(this);
        }
    }

    /* loaded from: classes4.dex */
    public static final class ParameterizedTypeImpl implements ParameterizedType {
        public final boolean equals(Object obj) {
            if (obj != this) {
                if (!(obj instanceof ParameterizedType) || !TypeUtils.b(this, (ParameterizedType) obj)) {
                    return false;
                }
                return true;
            }
            return true;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            throw null;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return null;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return null;
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            return TypeUtils.p(this);
        }
    }

    /* loaded from: classes4.dex */
    public static class WildcardTypeBuilder implements Builder<WildcardType> {
    }

    /* loaded from: classes4.dex */
    public static final class WildcardTypeImpl implements WildcardType {
        public final boolean equals(Object obj) {
            if (obj != this) {
                if (!(obj instanceof WildcardType) || !TypeUtils.d(this, (WildcardType) obj)) {
                    return false;
                }
                return true;
            }
            return true;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            throw null;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            throw null;
        }

        public final int hashCode() {
            return Arrays.hashCode((Object[]) null) | ((Arrays.hashCode((Object[]) null) | 18688) << 8);
        }

        public final String toString() {
            return TypeUtils.p(this);
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [org.apache.commons.lang3.AppendableJoiner$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v2, types: [org.apache.commons.lang3.AppendableJoiner$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v3, types: [org.apache.commons.lang3.AppendableJoiner$Builder, java.lang.Object] */
    static {
        ?? obj = new Object();
        obj.g = " & ";
        obj.h = new f(3);
        f22387a = obj.get();
        ?? obj2 = new Object();
        obj2.g = ", ";
        obj2.h = new f(4);
        obj2.get();
        ?? obj3 = new Object();
        obj3.f22334c = "<";
        obj3.f = ">";
        obj3.g = ", ";
        obj3.h = new f(5);
        b = obj3.get();
    }

    public static String a(Class cls) {
        if (cls.isArray()) {
            return p(cls.getComponentType()) + "[]";
        }
        for (TypeVariable typeVariable : cls.getTypeParameters()) {
            for (Type type : typeVariable.getBounds()) {
                if (type.getTypeName().contains(cls.getName())) {
                    return cls.getSimpleName().concat("(cycle)");
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        if (cls.getEnclosingClass() != null) {
            sb.append(a(cls.getEnclosingClass()));
            sb.append('.');
            sb.append(cls.getSimpleName());
        } else {
            sb.append(cls.getName());
        }
        if (cls.getTypeParameters().length > 0) {
            b.a(sb, cls.getTypeParameters());
        }
        return sb.toString();
    }

    public static boolean b(ParameterizedType parameterizedType, Type type) {
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType2 = (ParameterizedType) type;
            if (c(parameterizedType.getRawType(), parameterizedType2.getRawType()) && c(parameterizedType.getOwnerType(), parameterizedType2.getOwnerType())) {
                return e(parameterizedType.getActualTypeArguments(), parameterizedType2.getActualTypeArguments());
            }
            return false;
        }
        return false;
    }

    public static boolean c(Type type, Type type2) {
        if (Objects.equals(type, type2)) {
            return true;
        }
        if (type instanceof ParameterizedType) {
            return b((ParameterizedType) type, type2);
        }
        if (type instanceof GenericArrayType) {
            GenericArrayType genericArrayType = (GenericArrayType) type;
            if ((type2 instanceof GenericArrayType) && c(genericArrayType.getGenericComponentType(), ((GenericArrayType) type2).getGenericComponentType())) {
                return true;
            }
            return false;
        }
        if (!(type instanceof WildcardType)) {
            return false;
        }
        return d((WildcardType) type, type2);
    }

    public static boolean d(WildcardType wildcardType, Type type) {
        if (type instanceof WildcardType) {
            WildcardType wildcardType2 = (WildcardType) type;
            if (e(g(wildcardType), g(wildcardType2)) && e(h(wildcardType), h(wildcardType2))) {
                return true;
            }
        }
        return false;
    }

    public static boolean e(Type[] typeArr, Type[] typeArr2) {
        if (typeArr.length != typeArr2.length) {
            return false;
        }
        for (int i = 0; i < typeArr.length; i++) {
            if (!c(typeArr[i], typeArr2[i])) {
                return false;
            }
        }
        return true;
    }

    public static Type f(Class cls, Class cls2) {
        Class cls3;
        if (cls2.isInterface()) {
            Type type = null;
            for (Type type2 : cls.getGenericInterfaces()) {
                if (type2 instanceof ParameterizedType) {
                    cls3 = i((ParameterizedType) type2);
                } else if (type2 instanceof Class) {
                    cls3 = (Class) type2;
                } else {
                    throw new IllegalStateException("Unexpected generic interface type found: " + type2);
                }
                if (l(cls3, cls2) && n(type, cls3)) {
                    type = type2;
                }
            }
            if (type != null) {
                return type;
            }
        }
        return cls.getGenericSuperclass();
    }

    public static Type[] g(WildcardType wildcardType) {
        Objects.requireNonNull(wildcardType, "wildcardType");
        Type[] lowerBounds = wildcardType.getLowerBounds();
        if (lowerBounds.length == 0) {
            return new Type[]{null};
        }
        return lowerBounds;
    }

    public static Type[] h(WildcardType wildcardType) {
        Objects.requireNonNull(wildcardType, "wildcardType");
        return o(wildcardType.getUpperBounds());
    }

    public static Class i(ParameterizedType parameterizedType) {
        Type rawType = parameterizedType.getRawType();
        if (rawType instanceof Class) {
            return (Class) rawType;
        }
        throw new IllegalStateException("Type of rawType: " + rawType);
    }

    public static Map j(ParameterizedType parameterizedType, Class cls, Map map) {
        Map hashMap;
        Class i = i(parameterizedType);
        if (!l(i, cls)) {
            return null;
        }
        Type ownerType = parameterizedType.getOwnerType();
        if (ownerType instanceof ParameterizedType) {
            ParameterizedType parameterizedType2 = (ParameterizedType) ownerType;
            hashMap = j(parameterizedType2, i(parameterizedType2), map);
        } else if (map == null) {
            hashMap = new HashMap();
        } else {
            hashMap = new HashMap(map);
        }
        Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
        TypeVariable[] typeParameters = i.getTypeParameters();
        for (int i2 = 0; i2 < typeParameters.length; i2++) {
            Type type = actualTypeArguments[i2];
            hashMap.put(typeParameters[i2], (Type) Map.EL.getOrDefault(hashMap, type, type));
        }
        if (cls.equals(i)) {
            return hashMap;
        }
        return k(f(i, cls), cls, hashMap);
    }

    public static java.util.Map k(Type type, Class cls, java.util.Map map) {
        HashMap hashMap;
        if (type instanceof Class) {
            Class cls2 = (Class) type;
            if (l(cls2, cls)) {
                if (cls2.isPrimitive()) {
                    if (cls.isPrimitive()) {
                        return new HashMap();
                    }
                    cls2 = ClassUtils.c(cls2);
                }
                if (map == null) {
                    hashMap = new HashMap();
                } else {
                    hashMap = new HashMap(map);
                }
                if (cls.equals(cls2)) {
                    return hashMap;
                }
                return k(f(cls2, cls), cls, hashMap);
            }
            return null;
        }
        if (type instanceof ParameterizedType) {
            return j((ParameterizedType) type, cls, map);
        }
        if (type instanceof GenericArrayType) {
            Type genericComponentType = ((GenericArrayType) type).getGenericComponentType();
            if (cls.isArray()) {
                cls = cls.getComponentType();
            }
            return k(genericComponentType, cls, map);
        }
        int i = 0;
        if (type instanceof WildcardType) {
            Type[] h = h((WildcardType) type);
            int length = h.length;
            while (i < length) {
                Type type2 = h[i];
                if (l(type2, cls)) {
                    return k(type2, cls, map);
                }
                i++;
            }
            return null;
        }
        if (type instanceof TypeVariable) {
            Type[] o = o(((TypeVariable) type).getBounds());
            int length2 = o.length;
            while (i < length2) {
                Type type3 = o[i];
                if (l(type3, cls)) {
                    return k(type3, cls, map);
                }
                i++;
            }
            return null;
        }
        throw new IllegalStateException("found an unhandled type: " + type);
    }

    public static boolean l(Type type, Class cls) {
        if (type == null) {
            if (cls == null || !cls.isPrimitive()) {
                return true;
            }
            return false;
        }
        if (cls == null) {
            return false;
        }
        if (cls.equals(type)) {
            return true;
        }
        if (type instanceof Class) {
            return ClassUtils.b((Class) type, cls, true);
        }
        if (type instanceof ParameterizedType) {
            return l(i((ParameterizedType) type), cls);
        }
        if (type instanceof TypeVariable) {
            for (Type type2 : ((TypeVariable) type).getBounds()) {
                if (l(type2, cls)) {
                    return true;
                }
            }
            return false;
        }
        if (type instanceof GenericArrayType) {
            if (cls.equals(Object.class) || (cls.isArray() && l(((GenericArrayType) type).getGenericComponentType(), cls.getComponentType()))) {
                return true;
            }
            return false;
        }
        if (type instanceof WildcardType) {
            return false;
        }
        throw new IllegalStateException("found an unhandled type: " + type);
    }

    public static boolean m(Type type, TypeVariable typeVariable) {
        if (type != null) {
            if (typeVariable == null) {
                return false;
            }
            if (!typeVariable.equals(type)) {
                if (type instanceof TypeVariable) {
                    for (Type type2 : o(((TypeVariable) type).getBounds())) {
                        if (m(type2, typeVariable)) {
                            return true;
                        }
                    }
                }
                if ((type instanceof Class) || (type instanceof ParameterizedType) || (type instanceof GenericArrayType) || (type instanceof WildcardType)) {
                    return false;
                }
                throw new IllegalStateException("found an unhandled type: " + type);
            }
            return true;
        }
        return true;
    }

    public static boolean n(Type type, Type type2) {
        Type type3;
        Type type4;
        if (type2 != null && !(type2 instanceof Class)) {
            if (type2 instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type2;
                if (type != null) {
                    if (type instanceof GenericArrayType) {
                        return false;
                    }
                    if (!parameterizedType.equals(type)) {
                        Class i = i(parameterizedType);
                        java.util.Map k = k(type, i, null);
                        if (k != null) {
                            if (!k.isEmpty()) {
                                java.util.Map j = j(parameterizedType, i, null);
                                for (TypeVariable typeVariable : j.keySet()) {
                                    TypeVariable typeVariable2 = typeVariable;
                                    while (true) {
                                        type3 = (Type) j.get(typeVariable2);
                                        if (!(type3 instanceof TypeVariable) || type3.equals(typeVariable2)) {
                                            break;
                                        }
                                        typeVariable2 = (TypeVariable) type3;
                                    }
                                    while (true) {
                                        type4 = (Type) k.get(typeVariable);
                                        if (!(type4 instanceof TypeVariable) || type4.equals(typeVariable)) {
                                            break;
                                        }
                                        typeVariable = (TypeVariable) type4;
                                    }
                                    if (type3 != null || !(type4 instanceof Class)) {
                                        if (type4 == null) {
                                            continue;
                                        } else if (type3 == null) {
                                            continue;
                                        } else if (type3.equals(type4)) {
                                            continue;
                                        } else if ((type3 instanceof WildcardType) && n(type4, type3)) {
                                        }
                                    }
                                }
                                return true;
                            }
                            return true;
                        }
                    } else {
                        return true;
                    }
                } else {
                    return true;
                }
            } else if (type2 instanceof GenericArrayType) {
                GenericArrayType genericArrayType = (GenericArrayType) type2;
                if (type != null && !genericArrayType.equals(type)) {
                    Type genericComponentType = genericArrayType.getGenericComponentType();
                    if (type instanceof Class) {
                        Class cls = (Class) type;
                        if (cls.isArray() && n(cls.getComponentType(), genericComponentType)) {
                            return true;
                        }
                    } else {
                        if (type instanceof GenericArrayType) {
                            return n(((GenericArrayType) type).getGenericComponentType(), genericComponentType);
                        }
                        if (type instanceof WildcardType) {
                            for (Type type5 : h((WildcardType) type)) {
                                if (n(type5, genericArrayType)) {
                                    return true;
                                }
                            }
                        } else if (type instanceof TypeVariable) {
                            for (Type type6 : o(((TypeVariable) type).getBounds())) {
                                if (n(type6, genericArrayType)) {
                                    return true;
                                }
                            }
                        } else {
                            if (type instanceof ParameterizedType) {
                                return false;
                            }
                            throw new IllegalStateException("found an unhandled type: " + type);
                        }
                    }
                } else {
                    return true;
                }
            } else if (type2 instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) type2;
                if (type != null && !wildcardType.equals(type)) {
                    Type[] h = h(wildcardType);
                    Type[] g = g(wildcardType);
                    if (type instanceof WildcardType) {
                        WildcardType wildcardType2 = (WildcardType) type;
                        Type[] h2 = h(wildcardType2);
                        Type[] g2 = g(wildcardType2);
                        int length = h.length;
                        int i2 = 0;
                        loop5: while (true) {
                            if (i2 < length) {
                                Type type7 = h[i2];
                                for (Type type8 : h2) {
                                    if (!n(type8, type7)) {
                                        break loop5;
                                    }
                                }
                                i2++;
                            } else {
                                for (Type type9 : g) {
                                    for (Type type10 : g2) {
                                        if (n(type9, type10)) {
                                        }
                                    }
                                }
                                return true;
                            }
                        }
                    } else {
                        int length2 = h.length;
                        int i3 = 0;
                        while (true) {
                            if (i3 < length2) {
                                if (!n(type, h[i3])) {
                                    break;
                                }
                                i3++;
                            } else {
                                for (Type type11 : g) {
                                    if (n(type11, type)) {
                                    }
                                }
                                return true;
                            }
                        }
                    }
                } else {
                    return true;
                }
            } else {
                if (type2 instanceof TypeVariable) {
                    return m(type, (TypeVariable) type2);
                }
                throw new IllegalStateException("found an unhandled type: " + type2);
            }
            return false;
        }
        return l(type, (Class) type2);
    }

    public static Type[] o(Type[] typeArr) {
        if (typeArr.length == 0) {
            return new Type[]{Object.class};
        }
        if (typeArr.length < 2) {
            return typeArr;
        }
        HashSet hashSet = new HashSet(typeArr.length);
        for (Type type : typeArr) {
            int length = typeArr.length;
            int i = 0;
            while (true) {
                if (i < length) {
                    Type type2 = typeArr[i];
                    if (type == type2 || !n(type2, type)) {
                        i++;
                    }
                } else {
                    hashSet.add(type);
                    break;
                }
            }
        }
        return (Type[]) hashSet.toArray(ArrayUtils.f22337c);
    }

    /* JADX WARN: Code restructure failed: missing block: B:112:0x01b8, code lost:
    
        if (((java.lang.Class) r1).isInterface() != false) goto L102;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String p(java.lang.reflect.Type r11) {
        /*
            Method dump skipped, instructions count: 527
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.lang3.reflect.TypeUtils.p(java.lang.reflect.Type):java.lang.String");
    }
}
