package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public final class RecursiveDeleteOption {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ RecursiveDeleteOption[] f12481c = {new Enum("ALLOW_INSECURE", 0)};

    /* JADX INFO: Fake field, exist only in values array */
    RecursiveDeleteOption EF5;

    public static RecursiveDeleteOption valueOf(String str) {
        return (RecursiveDeleteOption) Enum.valueOf(RecursiveDeleteOption.class, str);
    }

    public static RecursiveDeleteOption[] values() {
        return (RecursiveDeleteOption[]) f12481c.clone();
    }
}
