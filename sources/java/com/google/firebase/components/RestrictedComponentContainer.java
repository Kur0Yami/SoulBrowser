package com.google.firebase.components;

import com.google.firebase.events.Publisher;
import com.google.firebase.inject.Provider;
import j$.util.DesugarCollections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes3.dex */
final class RestrictedComponentContainer extends AbstractComponentContainer {

    /* renamed from: a, reason: collision with root package name */
    public final Set f12634a;
    public final Set b;

    /* renamed from: c, reason: collision with root package name */
    public final Set f12635c;
    public final Set d;
    public final ComponentContainer e;

    /* loaded from: classes3.dex */
    public static class RestrictedPublisher implements Publisher {

        /* renamed from: a, reason: collision with root package name */
        public final Publisher f12636a;

        public RestrictedPublisher(Publisher publisher) {
            this.f12636a = publisher;
        }
    }

    public RestrictedComponentContainer(Component component, ComponentContainer componentContainer) {
        boolean z;
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        Set<Dependency> set = component.b;
        Set set2 = component.e;
        for (Dependency dependency : set) {
            int i = dependency.f12623c;
            int i2 = dependency.b;
            if (i == 0) {
                z = true;
            } else {
                z = false;
            }
            Class cls = dependency.f12622a;
            if (z) {
                if (i2 == 2) {
                    hashSet4.add(cls);
                } else {
                    hashSet.add(cls);
                }
            } else if (i == 2) {
                hashSet3.add(cls);
            } else if (i2 == 2) {
                hashSet5.add(cls);
            } else {
                hashSet2.add(cls);
            }
        }
        if (!set2.isEmpty()) {
            hashSet.add(Publisher.class);
        }
        this.f12634a = DesugarCollections.unmodifiableSet(hashSet);
        this.b = DesugarCollections.unmodifiableSet(hashSet2);
        DesugarCollections.unmodifiableSet(hashSet3);
        this.f12635c = DesugarCollections.unmodifiableSet(hashSet4);
        this.d = DesugarCollections.unmodifiableSet(hashSet5);
        this.e = componentContainer;
    }

    @Override // com.google.firebase.components.AbstractComponentContainer, com.google.firebase.components.ComponentContainer
    public final Object a(Class cls) {
        if (this.f12634a.contains(cls)) {
            Object a2 = this.e.a(cls);
            if (!cls.equals(Publisher.class)) {
                return a2;
            }
            return new RestrictedPublisher((Publisher) a2);
        }
        throw new RuntimeException("Attempting to request an undeclared dependency " + cls + ".");
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final Provider b(Class cls) {
        if (this.b.contains(cls)) {
            return this.e.b(cls);
        }
        throw new RuntimeException("Attempting to request an undeclared dependency Provider<" + cls + ">.");
    }

    @Override // com.google.firebase.components.ComponentContainer
    public final Provider c(Class cls) {
        if (this.d.contains(cls)) {
            return this.e.c(cls);
        }
        throw new RuntimeException("Attempting to request an undeclared dependency Provider<Set<" + cls + ">>.");
    }

    @Override // com.google.firebase.components.AbstractComponentContainer, com.google.firebase.components.ComponentContainer
    public final Set d(Class cls) {
        if (this.f12635c.contains(cls)) {
            return this.e.d(cls);
        }
        throw new RuntimeException("Attempting to request an undeclared dependency Set<" + cls + ">.");
    }
}
