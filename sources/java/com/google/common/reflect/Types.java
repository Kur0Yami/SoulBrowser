package com.google.common.reflect;

import com.google.common.base.Function;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicates;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.Iterables;
import com.google.common.collect.UnmodifiableListIterator;
import com.google.common.reflect.Types;
import j$.util.Objects;
import java.io.Serializable;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.GenericDeclaration;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.security.AccessControlException;
import java.util.Arrays;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.text.Typography;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class Types {

    /* renamed from: a, reason: collision with root package name */
    public static final Joiner f12544a = new Joiner(", ").f();

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static abstract class ClassOwnership {

        /* renamed from: c, reason: collision with root package name */
        public static final ClassOwnership f12545c;
        public static final /* synthetic */ ClassOwnership[] f = {new ClassOwnership() { // from class: com.google.common.reflect.Types.ClassOwnership.1
            @Override // com.google.common.reflect.Types.ClassOwnership
            public final Class a(Class cls) {
                return cls.getEnclosingClass();
            }
        }, new ClassOwnership() { // from class: com.google.common.reflect.Types.ClassOwnership.2
            @Override // com.google.common.reflect.Types.ClassOwnership
            public final Class a(Class cls) {
                if (cls.isLocalClass()) {
                    return null;
                }
                return cls.getEnclosingClass();
            }
        }};

        /* JADX INFO: Fake field, exist only in values array */
        ClassOwnership EF2;

        /* renamed from: com.google.common.reflect.Types$ClassOwnership$1LocalClass, reason: invalid class name */
        /* loaded from: classes3.dex */
        class C1LocalClass<T> {
        }

        /* renamed from: com.google.common.reflect.Types$ClassOwnership$3, reason: invalid class name */
        /* loaded from: classes3.dex */
        class AnonymousClass3 extends C1LocalClass<String> {
        }

        static {
            ParameterizedType parameterizedType = (ParameterizedType) AnonymousClass3.class.getGenericSuperclass();
            Objects.requireNonNull(parameterizedType);
            for (ClassOwnership classOwnership : values()) {
                if (classOwnership.a(C1LocalClass.class) == parameterizedType.getOwnerType()) {
                    f12545c = classOwnership;
                    return;
                }
            }
            throw new AssertionError();
        }

        public static ClassOwnership valueOf(String str) {
            return (ClassOwnership) Enum.valueOf(ClassOwnership.class, str);
        }

        public static ClassOwnership[] values() {
            return (ClassOwnership[]) f.clone();
        }

        public abstract Class a(Class cls);
    }

    /* loaded from: classes3.dex */
    public static final class GenericArrayTypeImpl implements GenericArrayType, Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final Type f12546c;

        public GenericArrayTypeImpl(Type type) {
            this.f12546c = JavaVersion.f.d(type);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof GenericArrayType) {
                return Objects.equals(this.f12546c, ((GenericArrayType) obj).getGenericComponentType());
            }
            return false;
        }

        @Override // java.lang.reflect.GenericArrayType
        public final Type getGenericComponentType() {
            return this.f12546c;
        }

        public final int hashCode() {
            return this.f12546c.hashCode();
        }

        public final String toString() {
            String obj;
            StringBuilder sb = new StringBuilder();
            Joiner joiner = Types.f12544a;
            Type type = this.f12546c;
            if (type instanceof Class) {
                obj = ((Class) type).getName();
            } else {
                obj = type.toString();
            }
            return android.support.v4.media.a.p(sb, obj, "[]");
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static abstract class JavaVersion {

        /* renamed from: c, reason: collision with root package name */
        public static final AnonymousClass2 f12547c;
        public static final JavaVersion f;
        public static final /* synthetic */ JavaVersion[] g;

        /* renamed from: com.google.common.reflect.Types$JavaVersion$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        public enum AnonymousClass2 extends JavaVersion {
            public AnonymousClass2() {
                super("JAVA7", 1);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            public final Type a(Type type) {
                if (type instanceof Class) {
                    Joiner joiner = Types.f12544a;
                    return Array.newInstance((Class<?>) type, 0).getClass();
                }
                return new GenericArrayTypeImpl(type);
            }

            @Override // com.google.common.reflect.Types.JavaVersion
            public final Type d(Type type) {
                type.getClass();
                return type;
            }
        }

        /* renamed from: com.google.common.reflect.Types$JavaVersion$5, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass5 extends TypeCapture<Map.Entry<String, int[][]>> {
        }

        /* renamed from: com.google.common.reflect.Types$JavaVersion$6, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass6 extends TypeCapture<int[]> {
        }

        static {
            JavaVersion javaVersion = new JavaVersion() { // from class: com.google.common.reflect.Types.JavaVersion.1
                @Override // com.google.common.reflect.Types.JavaVersion
                public final Type a(Type type) {
                    return new GenericArrayTypeImpl(type);
                }

                @Override // com.google.common.reflect.Types.JavaVersion
                public final Type d(Type type) {
                    type.getClass();
                    if (type instanceof Class) {
                        Class cls = (Class) type;
                        if (cls.isArray()) {
                            return new GenericArrayTypeImpl(cls.getComponentType());
                        }
                        return type;
                    }
                    return type;
                }
            };
            AnonymousClass2 anonymousClass2 = new AnonymousClass2();
            f12547c = anonymousClass2;
            JavaVersion javaVersion2 = new JavaVersion() { // from class: com.google.common.reflect.Types.JavaVersion.3
                @Override // com.google.common.reflect.Types.JavaVersion
                public final Type a(Type type) {
                    return JavaVersion.f12547c.a(type);
                }

                @Override // com.google.common.reflect.Types.JavaVersion
                public final String b(Type type) {
                    return type.getTypeName();
                }

                @Override // com.google.common.reflect.Types.JavaVersion
                public final Type d(Type type) {
                    type.getClass();
                    return type;
                }
            };
            JavaVersion javaVersion3 = new JavaVersion() { // from class: com.google.common.reflect.Types.JavaVersion.4
                @Override // com.google.common.reflect.Types.JavaVersion
                public final Type a(Type type) {
                    return JavaVersion.f12547c.a(type);
                }

                @Override // com.google.common.reflect.Types.JavaVersion
                public final String b(Type type) {
                    return type.getTypeName();
                }

                @Override // com.google.common.reflect.Types.JavaVersion
                public final Type d(Type type) {
                    type.getClass();
                    return type;
                }
            };
            g = new JavaVersion[]{javaVersion, anonymousClass2, javaVersion2, javaVersion3};
            if (AnnotatedElement.class.isAssignableFrom(TypeVariable.class)) {
                Type genericSuperclass = AnonymousClass5.class.getGenericSuperclass();
                Preconditions.c("%s isn't parameterized", genericSuperclass, genericSuperclass instanceof ParameterizedType);
                if (((ParameterizedType) genericSuperclass).getActualTypeArguments()[0].toString().contains("java.util.Map.java.util.Map")) {
                    f = javaVersion2;
                    return;
                } else {
                    f = javaVersion3;
                    return;
                }
            }
            Type genericSuperclass2 = AnonymousClass6.class.getGenericSuperclass();
            Preconditions.c("%s isn't parameterized", genericSuperclass2, genericSuperclass2 instanceof ParameterizedType);
            if (((ParameterizedType) genericSuperclass2).getActualTypeArguments()[0] instanceof Class) {
                f = anonymousClass2;
            } else {
                f = javaVersion;
            }
        }

        public static JavaVersion valueOf(String str) {
            return (JavaVersion) Enum.valueOf(JavaVersion.class, str);
        }

        public static JavaVersion[] values() {
            return (JavaVersion[]) g.clone();
        }

        public abstract Type a(Type type);

        public String b(Type type) {
            Joiner joiner = Types.f12544a;
            if (type instanceof Class) {
                return ((Class) type).getName();
            }
            return type.toString();
        }

        public final ImmutableList c(Type[] typeArr) {
            ImmutableList.Builder r = ImmutableList.r();
            for (Type type : typeArr) {
                r.e(d(type));
            }
            return r.f();
        }

        public abstract Type d(Type type);
    }

    /* loaded from: classes3.dex */
    public static final class NativeTypeVariableEquals<X> {

        /* renamed from: a, reason: collision with root package name */
        public static final boolean f12548a = !NativeTypeVariableEquals.class.getTypeParameters()[0].equals(Types.d(NativeTypeVariableEquals.class, "X", new Type[0]));
    }

    /* loaded from: classes3.dex */
    public static final class ParameterizedTypeImpl implements ParameterizedType, Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final Type f12549c;
        public final ImmutableList f;
        public final Class g;

        public ParameterizedTypeImpl(Type type, Class cls, Type[] typeArr) {
            boolean z;
            cls.getClass();
            if (typeArr.length == cls.getTypeParameters().length) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.d(z);
            Types.b(typeArr, "type parameter");
            this.f12549c = type;
            this.g = cls;
            this.f = JavaVersion.f.c(typeArr);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) obj;
                if (this.g.equals(parameterizedType.getRawType()) && Objects.equals(this.f12549c, parameterizedType.getOwnerType())) {
                    Joiner joiner = Types.f12544a;
                    if (Arrays.equals((Type[]) this.f.toArray(new Type[0]), parameterizedType.getActualTypeArguments())) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type[] getActualTypeArguments() {
            Joiner joiner = Types.f12544a;
            return (Type[]) this.f.toArray(new Type[0]);
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getOwnerType() {
            return this.f12549c;
        }

        @Override // java.lang.reflect.ParameterizedType
        public final Type getRawType() {
            return this.g;
        }

        public final int hashCode() {
            int hashCode;
            Type type = this.f12549c;
            if (type == null) {
                hashCode = 0;
            } else {
                hashCode = type.hashCode();
            }
            return (hashCode ^ this.f.hashCode()) ^ this.g.hashCode();
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            Type type = this.f12549c;
            if (type != null) {
                JavaVersion javaVersion = JavaVersion.f;
                javaVersion.getClass();
                if (!(javaVersion instanceof JavaVersion.AnonymousClass4)) {
                    sb.append(javaVersion.b(type));
                    sb.append('.');
                }
            }
            sb.append(this.g.getName());
            sb.append(Typography.less);
            Joiner joiner = Types.f12544a;
            final JavaVersion javaVersion2 = JavaVersion.f;
            Objects.requireNonNull(javaVersion2);
            sb.append(joiner.b(Iterables.f(this.f, new Function() { // from class: com.google.common.reflect.b
                @Override // com.google.common.base.Function
                public final Object apply(Object obj) {
                    return Types.JavaVersion.this.b((Type) obj);
                }
            })));
            sb.append(Typography.greater);
            return sb.toString();
        }
    }

    /* loaded from: classes3.dex */
    public static final class TypeVariableImpl<D extends GenericDeclaration> {

        /* renamed from: a, reason: collision with root package name */
        public final GenericDeclaration f12550a;
        public final String b;

        /* renamed from: c, reason: collision with root package name */
        public final ImmutableList f12551c;

        public TypeVariableImpl(GenericDeclaration genericDeclaration, String str, Type[] typeArr) {
            Types.b(typeArr, "bound for type variable");
            genericDeclaration.getClass();
            this.f12550a = genericDeclaration;
            str.getClass();
            this.b = str;
            this.f12551c = ImmutableList.t(typeArr);
        }

        public final boolean equals(Object obj) {
            boolean z = NativeTypeVariableEquals.f12548a;
            GenericDeclaration genericDeclaration = this.f12550a;
            String str = this.b;
            if (z) {
                if (obj != null && Proxy.isProxyClass(obj.getClass()) && (Proxy.getInvocationHandler(obj) instanceof TypeVariableInvocationHandler)) {
                    TypeVariableImpl typeVariableImpl = ((TypeVariableInvocationHandler) Proxy.getInvocationHandler(obj)).f12552a;
                    if (str.equals(typeVariableImpl.b) && genericDeclaration.equals(typeVariableImpl.f12550a) && this.f12551c.equals(typeVariableImpl.f12551c)) {
                        return true;
                    }
                }
                return false;
            }
            if (obj instanceof TypeVariable) {
                TypeVariable typeVariable = (TypeVariable) obj;
                if (str.equals(typeVariable.getName()) && genericDeclaration.equals(typeVariable.getGenericDeclaration())) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return this.f12550a.hashCode() ^ this.b.hashCode();
        }

        public final String toString() {
            return this.b;
        }
    }

    /* loaded from: classes3.dex */
    public static final class TypeVariableInvocationHandler implements InvocationHandler {
        public static final ImmutableMap b;

        /* renamed from: a, reason: collision with root package name */
        public final TypeVariableImpl f12552a;

        static {
            ImmutableMap.Builder a2 = ImmutableMap.a();
            for (Method method : TypeVariableImpl.class.getMethods()) {
                if (method.getDeclaringClass().equals(TypeVariableImpl.class)) {
                    try {
                        method.setAccessible(true);
                    } catch (AccessControlException unused) {
                    }
                    a2.d(method.getName(), method);
                }
            }
            b = a2.b(false);
        }

        public TypeVariableInvocationHandler(TypeVariableImpl typeVariableImpl) {
            this.f12552a = typeVariableImpl;
        }

        @Override // java.lang.reflect.InvocationHandler
        public final Object invoke(Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            Method method2 = (Method) b.get(name);
            if (method2 != null) {
                try {
                    return method2.invoke(this.f12552a, objArr);
                } catch (InvocationTargetException e) {
                    throw e.getCause();
                }
            }
            throw new UnsupportedOperationException(name);
        }
    }

    /* loaded from: classes3.dex */
    public static final class WildcardTypeImpl implements WildcardType, Serializable {

        /* renamed from: c, reason: collision with root package name */
        public final ImmutableList f12553c;
        public final ImmutableList f;

        public WildcardTypeImpl(Type[] typeArr, Type[] typeArr2) {
            Types.b(typeArr, "lower bound for wildcard");
            Types.b(typeArr2, "upper bound for wildcard");
            JavaVersion javaVersion = JavaVersion.f;
            this.f12553c = javaVersion.c(typeArr);
            this.f = javaVersion.c(typeArr2);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof WildcardType) {
                WildcardType wildcardType = (WildcardType) obj;
                if (this.f12553c.equals(Arrays.asList(wildcardType.getLowerBounds()))) {
                    if (this.f.equals(Arrays.asList(wildcardType.getUpperBounds()))) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getLowerBounds() {
            Joiner joiner = Types.f12544a;
            return (Type[]) this.f12553c.toArray(new Type[0]);
        }

        @Override // java.lang.reflect.WildcardType
        public final Type[] getUpperBounds() {
            Joiner joiner = Types.f12544a;
            return (Type[]) this.f.toArray(new Type[0]);
        }

        public final int hashCode() {
            return this.f12553c.hashCode() ^ this.f.hashCode();
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("?");
            UnmodifiableListIterator listIterator = this.f12553c.listIterator(0);
            while (listIterator.hasNext()) {
                Type type = (Type) listIterator.next();
                sb.append(" super ");
                sb.append(JavaVersion.f.b(type));
            }
            Joiner joiner = Types.f12544a;
            for (Type type2 : Iterables.b(this.f, Predicates.g(Predicates.d(Object.class)))) {
                sb.append(" extends ");
                sb.append(JavaVersion.f.b(type2));
            }
            return sb.toString();
        }
    }

    public static Type a(Type[] typeArr) {
        for (Type type : typeArr) {
            type.getClass();
            final AtomicReference atomicReference = new AtomicReference();
            new TypeVisitor() { // from class: com.google.common.reflect.Types.1
                @Override // com.google.common.reflect.TypeVisitor
                public final void b(Class cls) {
                    atomicReference.set(cls.getComponentType());
                }

                @Override // com.google.common.reflect.TypeVisitor
                public final void c(GenericArrayType genericArrayType) {
                    atomicReference.set(genericArrayType.getGenericComponentType());
                }

                @Override // com.google.common.reflect.TypeVisitor
                public final void e(TypeVariable typeVariable) {
                    atomicReference.set(Types.a(typeVariable.getBounds()));
                }

                @Override // com.google.common.reflect.TypeVisitor
                public final void f(WildcardType wildcardType) {
                    atomicReference.set(Types.a(wildcardType.getUpperBounds()));
                }
            }.a(type);
            Type type2 = (Type) atomicReference.get();
            if (type2 != null) {
                if (type2 instanceof Class) {
                    Class cls = (Class) type2;
                    if (cls.isPrimitive()) {
                        return cls;
                    }
                }
                return new WildcardTypeImpl(new Type[0], new Type[]{type2});
            }
        }
        return null;
    }

    public static void b(Type[] typeArr, String str) {
        for (Type type : typeArr) {
            if (type instanceof Class) {
                Preconditions.f(!r2.isPrimitive(), "Primitive type '%s' used as %s", (Class) type, str);
            }
        }
    }

    public static Type c(Type type) {
        boolean z;
        boolean z2;
        if (type instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type;
            Type[] lowerBounds = wildcardType.getLowerBounds();
            if (lowerBounds.length <= 1) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.e(z, "Wildcard cannot have more than one lower bounds.");
            if (lowerBounds.length == 1) {
                return new WildcardTypeImpl(new Type[]{c(lowerBounds[0])}, new Type[]{Object.class});
            }
            Type[] upperBounds = wildcardType.getUpperBounds();
            if (upperBounds.length == 1) {
                z2 = true;
            } else {
                z2 = false;
            }
            Preconditions.e(z2, "Wildcard should have only one upper bound.");
            return new WildcardTypeImpl(new Type[0], new Type[]{c(upperBounds[0])});
        }
        return JavaVersion.f.a(type);
    }

    public static TypeVariable d(GenericDeclaration genericDeclaration, String str, Type... typeArr) {
        if (typeArr.length == 0) {
            typeArr = new Type[]{Object.class};
        }
        TypeVariableInvocationHandler typeVariableInvocationHandler = new TypeVariableInvocationHandler(new TypeVariableImpl(genericDeclaration, str, typeArr));
        Preconditions.c("%s is not an interface", TypeVariable.class, TypeVariable.class.isInterface());
        return (TypeVariable) TypeVariable.class.cast(Proxy.newProxyInstance(TypeVariable.class.getClassLoader(), new Class[]{TypeVariable.class}, typeVariableInvocationHandler));
    }

    public static ParameterizedType e(Type type, Class cls, Type... typeArr) {
        boolean z;
        if (type == null) {
            return new ParameterizedTypeImpl(ClassOwnership.f12545c.a(cls), cls, typeArr);
        }
        if (cls.getEnclosingClass() != null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.c("Owner type for unenclosed %s", cls, z);
        return new ParameterizedTypeImpl(type, cls, typeArr);
    }
}
