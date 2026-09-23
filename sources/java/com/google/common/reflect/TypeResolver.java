package com.google.common.reflect;

import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableMap;
import com.google.common.reflect.Types;
import j$.util.Objects;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public final class TypeResolver {

    /* renamed from: a, reason: collision with root package name */
    public final TypeTable f12534a;

    /* renamed from: com.google.common.reflect.TypeResolver$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends TypeVisitor {
        @Override // com.google.common.reflect.TypeVisitor
        public final void b(Class cls) {
            throw new IllegalArgumentException("No type mapping from " + cls + " to null");
        }

        @Override // com.google.common.reflect.TypeVisitor
        public final void c(GenericArrayType genericArrayType) {
            Joiner joiner = Types.f12544a;
            throw null;
        }

        @Override // com.google.common.reflect.TypeVisitor
        public final void d(ParameterizedType parameterizedType) {
            throw null;
        }

        @Override // com.google.common.reflect.TypeVisitor
        public final void e(TypeVariable typeVariable) {
            throw null;
        }

        @Override // com.google.common.reflect.TypeVisitor
        public final void f(WildcardType wildcardType) {
            throw null;
        }
    }

    /* loaded from: classes3.dex */
    public static final class TypeMappingIntrospector extends TypeVisitor {
        public final HashMap b = new HashMap();

        @Override // com.google.common.reflect.TypeVisitor
        public final void b(Class cls) {
            a(cls.getGenericSuperclass());
            a(cls.getGenericInterfaces());
        }

        @Override // com.google.common.reflect.TypeVisitor
        public final void d(ParameterizedType parameterizedType) {
            boolean z;
            boolean z2;
            TypeVariableKey typeVariableKey;
            Class cls = (Class) parameterizedType.getRawType();
            TypeVariable[] typeParameters = cls.getTypeParameters();
            Type[] actualTypeArguments = parameterizedType.getActualTypeArguments();
            if (typeParameters.length == actualTypeArguments.length) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.l(z);
            for (int i = 0; i < typeParameters.length; i++) {
                TypeVariableKey typeVariableKey2 = new TypeVariableKey(typeParameters[i]);
                Type type = actualTypeArguments[i];
                HashMap hashMap = this.b;
                if (!hashMap.containsKey(typeVariableKey2)) {
                    Type type2 = type;
                    while (true) {
                        if (type2 != null) {
                            boolean z3 = type2 instanceof TypeVariable;
                            if (z3) {
                                z2 = typeVariableKey2.a((TypeVariable) type2);
                            } else {
                                z2 = false;
                            }
                            TypeVariableKey typeVariableKey3 = null;
                            if (z2) {
                                while (type != null) {
                                    if (type instanceof TypeVariable) {
                                        typeVariableKey = new TypeVariableKey((TypeVariable) type);
                                    } else {
                                        typeVariableKey = null;
                                    }
                                    type = (Type) hashMap.remove(typeVariableKey);
                                }
                            } else {
                                if (z3) {
                                    typeVariableKey3 = new TypeVariableKey((TypeVariable) type2);
                                }
                                type2 = (Type) hashMap.get(typeVariableKey3);
                            }
                        } else {
                            hashMap.put(typeVariableKey2, type);
                            break;
                        }
                    }
                }
            }
            a(cls);
            a(parameterizedType.getOwnerType());
        }

        @Override // com.google.common.reflect.TypeVisitor
        public final void e(TypeVariable typeVariable) {
            a(typeVariable.getBounds());
        }

        @Override // com.google.common.reflect.TypeVisitor
        public final void f(WildcardType wildcardType) {
            a(wildcardType.getUpperBounds());
        }
    }

    /* loaded from: classes3.dex */
    public static final class TypeVariableKey {

        /* renamed from: a, reason: collision with root package name */
        public final TypeVariable f12537a;

        public TypeVariableKey(TypeVariable typeVariable) {
            typeVariable.getClass();
            this.f12537a = typeVariable;
        }

        public final boolean a(TypeVariable typeVariable) {
            TypeVariable typeVariable2 = this.f12537a;
            if (typeVariable2.getGenericDeclaration().equals(typeVariable.getGenericDeclaration()) && typeVariable2.getName().equals(typeVariable.getName())) {
                return true;
            }
            return false;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof TypeVariableKey) {
                return a(((TypeVariableKey) obj).f12537a);
            }
            return false;
        }

        public final int hashCode() {
            TypeVariable typeVariable = this.f12537a;
            return Objects.hash(typeVariable.getGenericDeclaration(), typeVariable.getName());
        }

        public final String toString() {
            return this.f12537a.toString();
        }
    }

    /* loaded from: classes3.dex */
    public static class WildcardCapturer {

        /* renamed from: com.google.common.reflect.TypeResolver$WildcardCapturer$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass1 extends WildcardCapturer {
        }

        static {
            new AtomicInteger();
        }
    }

    public TypeResolver() {
        this.f12534a = new TypeTable();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.common.reflect.TypeResolver$TypeTable$1] */
    public final Type a(Type type) {
        Type a2;
        type.getClass();
        if (type instanceof TypeVariable) {
            final TypeVariable typeVariable = (TypeVariable) type;
            final TypeTable typeTable = this.f12534a;
            typeTable.getClass();
            return typeTable.a(typeVariable, new TypeTable() { // from class: com.google.common.reflect.TypeResolver.TypeTable.1
                @Override // com.google.common.reflect.TypeResolver.TypeTable
                public final Type a(TypeVariable typeVariable2, AnonymousClass1 anonymousClass1) {
                    if (typeVariable2.getGenericDeclaration().equals(typeVariable.getGenericDeclaration())) {
                        return typeVariable2;
                    }
                    return typeTable.a(typeVariable2, anonymousClass1);
                }
            });
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Type ownerType = parameterizedType.getOwnerType();
            if (ownerType == null) {
                a2 = null;
            } else {
                a2 = a(ownerType);
            }
            return Types.e(a2, (Class) a(parameterizedType.getRawType()), b(parameterizedType.getActualTypeArguments()));
        }
        if (type instanceof GenericArrayType) {
            return Types.c(a(((GenericArrayType) type).getGenericComponentType()));
        }
        if (type instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type;
            return new Types.WildcardTypeImpl(b(wildcardType.getLowerBounds()), b(wildcardType.getUpperBounds()));
        }
        return type;
    }

    public final Type[] b(Type[] typeArr) {
        Type[] typeArr2 = new Type[typeArr.length];
        for (int i = 0; i < typeArr.length; i++) {
            typeArr2[i] = a(typeArr[i]);
        }
        return typeArr2;
    }

    /* loaded from: classes3.dex */
    public static class TypeTable {

        /* renamed from: a, reason: collision with root package name */
        public final ImmutableMap f12535a;

        public TypeTable() {
            this.f12535a = ImmutableMap.k();
        }

        public Type a(TypeVariable typeVariable, AnonymousClass1 anonymousClass1) {
            Type type = (Type) this.f12535a.get(new TypeVariableKey(typeVariable));
            if (type == null) {
                Type[] bounds = typeVariable.getBounds();
                if (bounds.length != 0) {
                    Type[] b = new TypeResolver(anonymousClass1).b(bounds);
                    if (!Types.NativeTypeVariableEquals.f12548a || !Arrays.equals(bounds, b)) {
                        return Types.d(typeVariable.getGenericDeclaration(), typeVariable.getName(), b);
                    }
                }
                return typeVariable;
            }
            return new TypeResolver(anonymousClass1).a(type);
        }

        public TypeTable(ImmutableMap immutableMap) {
            this.f12535a = immutableMap;
        }
    }

    public TypeResolver(TypeTable typeTable) {
        this.f12534a = typeTable;
    }
}
