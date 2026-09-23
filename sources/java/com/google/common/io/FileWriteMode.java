package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
public final class FileWriteMode {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ FileWriteMode[] f12476c = {new Enum("APPEND", 0)};

    /* JADX INFO: Fake field, exist only in values array */
    FileWriteMode EF5;

    public static FileWriteMode valueOf(String str) {
        return (FileWriteMode) Enum.valueOf(FileWriteMode.class, str);
    }

    public static FileWriteMode[] values() {
        return (FileWriteMode[]) f12476c.clone();
    }
}
