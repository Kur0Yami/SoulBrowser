package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
final class zzgtu implements Iterator {

    /* renamed from: c, reason: collision with root package name */
    public static final zzgtu f8252c;
    public static final /* synthetic */ zzgtu[] f;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.google.android.gms.internal.ads.zzgtu] */
    static {
        ?? r0 = new Enum("INSTANCE", 0);
        f8252c = r0;
        f = new zzgtu[]{r0};
    }

    public static zzgtu[] values() {
        return (zzgtu[]) f.clone();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        throw new NoSuchElementException();
    }

    @Override // java.util.Iterator
    public final void remove() {
        zzgqa.g("no calls to next() since the last call to remove()", false);
    }
}
