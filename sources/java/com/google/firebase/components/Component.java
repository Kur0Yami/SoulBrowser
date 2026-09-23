package com.google.firebase.components;

import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
public final class Component<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Set f12604a;
    public final Set b;

    /* renamed from: c, reason: collision with root package name */
    public final int f12605c;
    public final ComponentFactory d;
    public final Set e;

    /* loaded from: classes3.dex */
    public static class Builder<T> {

        /* renamed from: a, reason: collision with root package name */
        public final HashSet f12607a;
        public final HashSet b;

        /* renamed from: c, reason: collision with root package name */
        public int f12608c;
        public ComponentFactory d;
        public final HashSet e;

        public Builder(Class cls, Class[] clsArr) {
            HashSet hashSet = new HashSet();
            this.f12607a = hashSet;
            this.b = new HashSet();
            this.f12608c = 0;
            this.e = new HashSet();
            hashSet.add(cls);
            for (Class cls2 : clsArr) {
                if (cls2 == null) {
                    throw new NullPointerException("Null interface");
                }
            }
            Collections.addAll(this.f12607a, clsArr);
        }

        public final void a(Dependency dependency) {
            if (!this.f12607a.contains(dependency.f12622a)) {
                this.b.add(dependency);
                return;
            }
            throw new IllegalArgumentException("Components are not allowed to depend on interfaces they themselves provide.");
        }

        public final Component b() {
            boolean z;
            if (this.d != null) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                return new Component(new HashSet(this.f12607a), new HashSet(this.b), this.f12608c, this.d, this.e);
            }
            throw new IllegalStateException("Missing required property: factory.");
        }
    }

    public Component(HashSet hashSet, HashSet hashSet2, int i, ComponentFactory componentFactory, HashSet hashSet3) {
        this.f12604a = DesugarCollections.unmodifiableSet(hashSet);
        this.b = DesugarCollections.unmodifiableSet(hashSet2);
        this.f12605c = i;
        this.d = componentFactory;
        this.e = DesugarCollections.unmodifiableSet(hashSet3);
    }

    public static Builder a(Class cls) {
        return new Builder(cls, new Class[0]);
    }

    public static Component b(final Object obj, Class cls, Class... clsArr) {
        Builder builder = new Builder(cls, clsArr);
        builder.d = new ComponentFactory(obj) { // from class: com.google.firebase.components.Component$$Lambda$2

            /* renamed from: a, reason: collision with root package name */
            public final Object f12606a;

            {
                this.f12606a = obj;
            }

            @Override // com.google.firebase.components.ComponentFactory
            public final Object a(ComponentContainer componentContainer) {
                return this.f12606a;
            }
        };
        return builder.b();
    }

    public final String toString() {
        return "Component<" + Arrays.toString(this.f12604a.toArray()) + ">{0, type=" + this.f12605c + ", deps=" + Arrays.toString(this.b.toArray()) + "}";
    }
}
