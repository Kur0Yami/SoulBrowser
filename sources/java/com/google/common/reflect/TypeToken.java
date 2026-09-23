package com.google.common.reflect;

import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.FluentIterable;
import com.google.common.collect.ForwardingSet;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableMap;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterables;
import com.google.common.collect.Lists;
import com.google.common.collect.ObjectArrays;
import com.google.common.collect.Ordering;
import com.google.common.collect.UnmodifiableListIterator;
import com.google.common.reflect.Invokable;
import com.google.common.reflect.TypeResolver;
import j$.util.Objects;
import java.io.Serializable;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* loaded from: classes3.dex */
public abstract class TypeToken<T> extends TypeCapture<T> implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public final Type f12538c;
    public transient TypeResolver f;

    /* renamed from: com.google.common.reflect.TypeToken$1, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends Invokable.MethodInvokable<Object> {
        @Override // com.google.common.reflect.Invokable
        public final TypeToken a() {
            return null;
        }

        @Override // com.google.common.reflect.Invokable
        public final String toString() {
            throw null;
        }
    }

    /* renamed from: com.google.common.reflect.TypeToken$2, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass2 extends Invokable.ConstructorInvokable<Object> {
        @Override // com.google.common.reflect.Invokable
        public final TypeToken a() {
            return null;
        }

        @Override // com.google.common.reflect.Invokable
        public final String toString() {
            new Joiner(", ");
            throw null;
        }
    }

    /* renamed from: com.google.common.reflect.TypeToken$3, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass3 extends TypeVisitor {
        @Override // com.google.common.reflect.TypeVisitor
        public final void c(GenericArrayType genericArrayType) {
            a(genericArrayType.getGenericComponentType());
        }

        @Override // com.google.common.reflect.TypeVisitor
        public final void d(ParameterizedType parameterizedType) {
            a(parameterizedType.getActualTypeArguments());
            a(parameterizedType.getOwnerType());
        }

        @Override // com.google.common.reflect.TypeVisitor
        public final void e(TypeVariable typeVariable) {
            throw null;
        }

        @Override // com.google.common.reflect.TypeVisitor
        public final void f(WildcardType wildcardType) {
            a(wildcardType.getLowerBounds());
            a(wildcardType.getUpperBounds());
        }
    }

    /* loaded from: classes3.dex */
    public static final class Bounds {
    }

    /* loaded from: classes3.dex */
    public final class ClassSet extends TypeToken<T>.TypeSet {
        public transient ImmutableSet g;

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public final Set B0() {
            throw null;
        }

        /* JADX WARN: Type inference failed for: r0v1, types: [com.google.common.reflect.TypeToken$TypeCollector$3, java.lang.Object] */
        @Override // com.google.common.reflect.TypeToken.TypeSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection
        /* renamed from: y0 */
        public final Set e0() {
            ImmutableSet immutableSet = this.g;
            if (immutableSet == null) {
                FluentIterable c2 = FluentIterable.c(new Object().b(ImmutableList.w(null)));
                ImmutableSet i = FluentIterable.c(Iterables.b(c2.g(), TypeFilter.f12541c)).i();
                this.g = i;
                return i;
            }
            return immutableSet;
        }
    }

    /* loaded from: classes3.dex */
    public final class InterfaceSet extends TypeToken<T>.TypeSet {
        public transient ImmutableSet g;

        @Override // com.google.common.reflect.TypeToken.TypeSet
        public final Set B0() {
            throw null;
        }

        @Override // com.google.common.reflect.TypeToken.TypeSet, com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection
        /* renamed from: y0 */
        public final Set e0() {
            ImmutableSet immutableSet = this.g;
            if (immutableSet == null) {
                FluentIterable c2 = FluentIterable.c(null);
                ImmutableSet i = FluentIterable.c(Iterables.b(c2.g(), TypeFilter.f)).i();
                this.g = i;
                return i;
            }
            return immutableSet;
        }
    }

    /* loaded from: classes3.dex */
    public static final class SimpleTypeToken<T> extends TypeToken<T> {
    }

    /* loaded from: classes3.dex */
    public static abstract class TypeCollector<K> {

        /* renamed from: a, reason: collision with root package name */
        public static final AnonymousClass1 f12539a = new Object();
        public static final AnonymousClass2 b = new Object();

        /* renamed from: com.google.common.reflect.TypeToken$TypeCollector$1, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass1 extends TypeCollector<TypeToken<?>> {
            @Override // com.google.common.reflect.TypeToken.TypeCollector
            public final Iterable c(Object obj) {
                TypeToken typeToken = (TypeToken) obj;
                Type type = typeToken.f12538c;
                if (type instanceof TypeVariable) {
                    return TypeToken.a(((TypeVariable) type).getBounds());
                }
                if (type instanceof WildcardType) {
                    return TypeToken.a(((WildcardType) type).getUpperBounds());
                }
                ImmutableList.Builder r = ImmutableList.r();
                for (Type type2 : typeToken.b().getGenericInterfaces()) {
                    r.e(typeToken.e(type2));
                }
                return r.f();
            }

            @Override // com.google.common.reflect.TypeToken.TypeCollector
            public final Class d(Object obj) {
                return ((TypeToken) obj).b();
            }

            @Override // com.google.common.reflect.TypeToken.TypeCollector
            public final Object e(Object obj) {
                TypeToken typeToken = (TypeToken) obj;
                Type type = typeToken.f12538c;
                if (type instanceof TypeVariable) {
                    TypeToken typeToken2 = new TypeToken(((TypeVariable) type).getBounds()[0]);
                    if (typeToken2.b().isInterface()) {
                        return null;
                    }
                    return typeToken2;
                }
                if (type instanceof WildcardType) {
                    TypeToken typeToken3 = new TypeToken(((WildcardType) type).getUpperBounds()[0]);
                    if (typeToken3.b().isInterface()) {
                        return null;
                    }
                    return typeToken3;
                }
                Type genericSuperclass = typeToken.b().getGenericSuperclass();
                if (genericSuperclass == null) {
                    return null;
                }
                return typeToken.e(genericSuperclass);
            }
        }

        /* renamed from: com.google.common.reflect.TypeToken$TypeCollector$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass2 extends TypeCollector<Class<?>> {
            @Override // com.google.common.reflect.TypeToken.TypeCollector
            public final Iterable c(Object obj) {
                return Arrays.asList(((Class) obj).getInterfaces());
            }

            @Override // com.google.common.reflect.TypeToken.TypeCollector
            public final Class d(Object obj) {
                return (Class) obj;
            }

            @Override // com.google.common.reflect.TypeToken.TypeCollector
            public final Object e(Object obj) {
                return ((Class) obj).getSuperclass();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.google.common.reflect.TypeToken$TypeCollector$3, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass3 extends ForwardingTypeCollector<Object> {
            @Override // com.google.common.reflect.TypeToken.TypeCollector
            public final ImmutableList b(Iterable iterable) {
                ImmutableList.Builder r = ImmutableList.r();
                UnmodifiableListIterator listIterator = ((ImmutableList) iterable).listIterator(0);
                while (listIterator.hasNext()) {
                    Object next = listIterator.next();
                    if (!((TypeToken) next).b().isInterface()) {
                        r.e(next);
                    }
                }
                return super.b(r.f());
            }

            @Override // com.google.common.reflect.TypeToken.TypeCollector.ForwardingTypeCollector, com.google.common.reflect.TypeToken.TypeCollector
            public final Iterable c(Object obj) {
                return ImmutableSet.w();
            }
        }

        /* loaded from: classes3.dex */
        public static class ForwardingTypeCollector<K> extends TypeCollector<K> {
            @Override // com.google.common.reflect.TypeToken.TypeCollector
            public Iterable c(Object obj) {
                return TypeCollector.f12539a.c(obj);
            }

            @Override // com.google.common.reflect.TypeToken.TypeCollector
            public final Class d(Object obj) {
                return ((TypeToken) obj).b();
            }

            @Override // com.google.common.reflect.TypeToken.TypeCollector
            public final Object e(Object obj) {
                return TypeCollector.f12539a.e(obj);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int a(Object obj, HashMap hashMap) {
            Integer num = (Integer) hashMap.get(obj);
            if (num != null) {
                return num.intValue();
            }
            boolean isInterface = d(obj).isInterface();
            Iterator<T> it = c(obj).iterator();
            int i = isInterface;
            while (it.hasNext()) {
                i = Math.max(i, a(it.next(), hashMap));
            }
            Object e = e(obj);
            int i2 = i;
            if (e != null) {
                i2 = Math.max(i, a(e, hashMap));
            }
            int i3 = i2 + 1;
            hashMap.put(obj, Integer.valueOf(i3));
            return i3;
        }

        public ImmutableList b(Iterable iterable) {
            final HashMap hashMap = new HashMap();
            Iterator<T> it = iterable.iterator();
            while (it.hasNext()) {
                a(it.next(), hashMap);
            }
            final Ordering g = Ordering.c().g();
            Ordering<Object> ordering = new Ordering<Object>() { // from class: com.google.common.reflect.TypeToken.TypeCollector.4
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    HashMap hashMap2 = hashMap;
                    Object obj3 = hashMap2.get(obj);
                    Objects.requireNonNull(obj3);
                    Object obj4 = hashMap2.get(obj2);
                    Objects.requireNonNull(obj4);
                    return g.compare(obj3, obj4);
                }
            };
            Collection keySet = hashMap.keySet();
            UnmodifiableListIterator unmodifiableListIterator = ImmutableList.f;
            if (!android.support.v4.media.a.A(keySet)) {
                keySet = Lists.a(keySet.iterator());
            }
            Object[] array = keySet.toArray();
            ObjectArrays.a(array.length, array);
            Arrays.sort(array, ordering);
            return ImmutableList.q(array.length, array);
        }

        public abstract Iterable c(Object obj);

        public abstract Class d(Object obj);

        public abstract Object e(Object obj);
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static abstract class TypeFilter implements Predicate<TypeToken<?>> {

        /* renamed from: c, reason: collision with root package name */
        public static final AnonymousClass1 f12541c;
        public static final AnonymousClass2 f;
        public static final /* synthetic */ TypeFilter[] g;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.reflect.TypeToken$TypeFilter$1] */
        /* JADX WARN: Type inference failed for: r1v0, types: [com.google.common.reflect.TypeToken$TypeFilter$2] */
        static {
            ?? r0 = new TypeFilter() { // from class: com.google.common.reflect.TypeToken.TypeFilter.1
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    Type type = ((TypeToken) obj).f12538c;
                    if (!(type instanceof TypeVariable) && !(type instanceof WildcardType)) {
                        return true;
                    }
                    return false;
                }
            };
            f12541c = r0;
            ?? r1 = new TypeFilter() { // from class: com.google.common.reflect.TypeToken.TypeFilter.2
                @Override // com.google.common.base.Predicate
                public final boolean apply(Object obj) {
                    return ((TypeToken) obj).b().isInterface();
                }
            };
            f = r1;
            g = new TypeFilter[]{r0, r1};
        }

        public static TypeFilter valueOf(String str) {
            return (TypeFilter) Enum.valueOf(TypeFilter.class, str);
        }

        public static TypeFilter[] values() {
            return (TypeFilter[]) g.clone();
        }
    }

    /* loaded from: classes3.dex */
    public class TypeSet extends ForwardingSet<TypeToken<? super T>> implements Serializable {

        /* renamed from: c, reason: collision with root package name */
        public transient ImmutableSet f12542c;

        public TypeSet() {
        }

        public Set B0() {
            return ImmutableSet.t(TypeCollector.b.b(TypeToken.this.c()));
        }

        @Override // com.google.common.collect.ForwardingSet, com.google.common.collect.ForwardingCollection
        /* renamed from: y0 */
        public Set e0() {
            ImmutableSet immutableSet = this.f12542c;
            if (immutableSet == null) {
                FluentIterable c2 = FluentIterable.c(TypeCollector.f12539a.b(ImmutableList.w(TypeToken.this)));
                ImmutableSet i = FluentIterable.c(Iterables.b(c2.g(), TypeFilter.f12541c)).i();
                this.f12542c = i;
                return i;
            }
            return immutableSet;
        }
    }

    public TypeToken(Type type) {
        type.getClass();
        this.f12538c = type;
    }

    public static ImmutableList a(Type[] typeArr) {
        ImmutableList.Builder r = ImmutableList.r();
        for (Type type : typeArr) {
            TypeToken typeToken = new TypeToken(type);
            if (typeToken.b().isInterface()) {
                r.e(typeToken);
            }
        }
        return r.f();
    }

    public static TypeToken d(Class cls) {
        return new TypeToken(cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Class b() {
        Type type = this.f12538c;
        if (type instanceof Class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return (Class) ((ParameterizedType) type).getRawType();
        }
        return (Class) c().iterator().next();
    }

    public final ImmutableSet c() {
        final ImmutableSet.Builder q = ImmutableSet.q();
        new TypeVisitor() { // from class: com.google.common.reflect.TypeToken.4
            @Override // com.google.common.reflect.TypeVisitor
            public final void b(Class cls) {
                ImmutableSet.Builder.this.a(cls);
            }

            @Override // com.google.common.reflect.TypeVisitor
            public final void c(GenericArrayType genericArrayType) {
                Class b = new TypeToken(genericArrayType.getGenericComponentType()).b();
                Joiner joiner = Types.f12544a;
                ImmutableSet.Builder.this.a(Array.newInstance((Class<?>) b, 0).getClass());
            }

            @Override // com.google.common.reflect.TypeVisitor
            public final void d(ParameterizedType parameterizedType) {
                ImmutableSet.Builder.this.a((Class) parameterizedType.getRawType());
            }

            @Override // com.google.common.reflect.TypeVisitor
            public final void e(TypeVariable typeVariable) {
                a(typeVariable.getBounds());
            }

            @Override // com.google.common.reflect.TypeVisitor
            public final void f(WildcardType wildcardType) {
                a(wildcardType.getUpperBounds());
            }
        }.a(this.f12538c);
        return q.f();
    }

    public final TypeToken e(Type type) {
        boolean z;
        TypeResolver typeResolver = this.f;
        if (typeResolver == null) {
            TypeResolver typeResolver2 = new TypeResolver();
            Type type2 = this.f12538c;
            type2.getClass();
            TypeResolver.TypeMappingIntrospector typeMappingIntrospector = new TypeResolver.TypeMappingIntrospector();
            typeMappingIntrospector.a(type2);
            ImmutableMap b = ImmutableMap.b(typeMappingIntrospector.b);
            TypeResolver.TypeTable typeTable = typeResolver2.f12534a;
            typeTable.getClass();
            ImmutableMap.Builder a2 = ImmutableMap.a();
            a2.e(typeTable.f12535a.entrySet());
            Iterator it = b.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                TypeResolver.TypeVariableKey typeVariableKey = (TypeResolver.TypeVariableKey) entry.getKey();
                Type type3 = (Type) entry.getValue();
                if (type3 instanceof TypeVariable) {
                    z = typeVariableKey.a((TypeVariable) type3);
                } else {
                    typeVariableKey.getClass();
                    z = false;
                }
                Preconditions.c("Type variable %s bound to itself", typeVariableKey, !z);
                a2.d(typeVariableKey, type3);
            }
            TypeResolver typeResolver3 = new TypeResolver(new TypeResolver.TypeTable(a2.b(true)));
            this.f = typeResolver3;
            typeResolver = typeResolver3;
        }
        TypeToken typeToken = new TypeToken(typeResolver.a(type));
        typeToken.f = this.f;
        return typeToken;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof TypeToken) {
            return this.f12538c.equals(((TypeToken) obj).f12538c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f12538c.hashCode();
    }

    public final String toString() {
        Joiner joiner = Types.f12544a;
        Type type = this.f12538c;
        if (type instanceof Class) {
            return ((Class) type).getName();
        }
        return type.toString();
    }
}
