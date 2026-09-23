package com.google.common.reflect;

import com.google.common.base.Optional;
import com.google.common.collect.FluentIterable;
import com.google.common.collect.Lists;
import java.lang.annotation.Annotation;
import java.lang.reflect.AnnotatedElement;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes3.dex */
public final class Parameter implements AnnotatedElement {
    public final boolean equals(Object obj) {
        if (!(obj instanceof Parameter)) {
            return false;
        }
        throw null;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final Annotation getAnnotation(Class cls) {
        cls.getClass();
        throw null;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final Annotation[] getAnnotations() {
        throw null;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final Annotation[] getAnnotationsByType(Class cls) {
        return getDeclaredAnnotationsByType(cls);
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final Annotation getDeclaredAnnotation(Class cls) {
        Optional a2;
        cls.getClass();
        Iterator it = FluentIterable.c(null).a(cls).g().iterator();
        if (it.hasNext()) {
            a2 = Optional.b(it.next());
        } else {
            a2 = Optional.a();
        }
        return (Annotation) a2.d();
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final Annotation[] getDeclaredAnnotations() {
        throw null;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final Annotation[] getDeclaredAnnotationsByType(Class cls) {
        Collection a2;
        Iterable g = FluentIterable.c(null).a(cls).g();
        Object[] objArr = (Object[]) Array.newInstance((Class<?>) cls, 0);
        if (g instanceof Collection) {
            a2 = (Collection) g;
        } else {
            a2 = Lists.a(g.iterator());
        }
        return (Annotation[]) a2.toArray(objArr);
    }

    public final int hashCode() {
        return 0;
    }

    @Override // java.lang.reflect.AnnotatedElement
    public final boolean isAnnotationPresent(Class cls) {
        cls.getClass();
        throw null;
    }

    public final String toString() {
        return "null arg0";
    }
}
