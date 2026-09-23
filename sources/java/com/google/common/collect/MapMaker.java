package com.google.common.collect;

import com.google.common.annotations.GwtCompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Ascii;
import com.google.common.base.MoreObjects;
import com.google.common.base.Preconditions;
import com.google.common.collect.MapMakerInternalMap;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

@J2ktIncompatible
@GwtCompatible
/* loaded from: classes3.dex */
public final class MapMaker {

    /* renamed from: a, reason: collision with root package name */
    public boolean f12327a;
    public MapMakerInternalMap.Strength.AnonymousClass2 b;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes3.dex */
    public static final class Dummy {

        /* renamed from: c, reason: collision with root package name */
        public static final Dummy f12328c;
        public static final /* synthetic */ Dummy[] f;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.common.collect.MapMaker$Dummy] */
        static {
            ?? r0 = new Enum("VALUE", 0);
            f12328c = r0;
            f = new Dummy[]{r0};
        }

        public static Dummy valueOf(String str) {
            return (Dummy) Enum.valueOf(Dummy.class, str);
        }

        public static Dummy[] values() {
            return (Dummy[]) f.clone();
        }
    }

    public final ConcurrentMap a() {
        if (!this.f12327a) {
            return new ConcurrentHashMap(16, 0.75f, 4);
        }
        MapMakerInternalMap.AnonymousClass1 anonymousClass1 = MapMakerInternalMap.n;
        MapMakerInternalMap.Strength.AnonymousClass2 anonymousClass2 = this.b;
        MapMakerInternalMap.Strength.AnonymousClass1 anonymousClass12 = MapMakerInternalMap.Strength.f12336c;
        if (((MapMakerInternalMap.Strength) MoreObjects.a(anonymousClass2, anonymousClass12)) == anonymousClass12) {
            return new MapMakerInternalMap(this, MapMakerInternalMap.StrongKeyStrongValueEntry.Helper.f12337a);
        }
        if (((MapMakerInternalMap.Strength) MoreObjects.a(this.b, anonymousClass12)) == MapMakerInternalMap.Strength.f) {
            return new MapMakerInternalMap(this, MapMakerInternalMap.WeakKeyStrongValueEntry.Helper.f12339a);
        }
        throw new AssertionError();
    }

    public final void b() {
        boolean z;
        MapMakerInternalMap.Strength.AnonymousClass2 anonymousClass2 = this.b;
        if (anonymousClass2 == null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.k("Key strength was already set to %s", anonymousClass2, z);
        this.b = MapMakerInternalMap.Strength.f;
        this.f12327a = true;
    }

    public final String toString() {
        MoreObjects.ToStringHelper b = MoreObjects.b(this);
        MapMakerInternalMap.Strength.AnonymousClass2 anonymousClass2 = this.b;
        if (anonymousClass2 != null) {
            b.b(Ascii.c(anonymousClass2.toString()), "keyStrength");
        }
        return b.toString();
    }
}
