package com.frostwire.jlibtorrent;

import com.frostwire.jlibtorrent.swig.storage_mode_t;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* loaded from: classes.dex */
public final class StorageMode {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ StorageMode[] f2624c;

    /* JADX INFO: Fake field, exist only in values array */
    StorageMode EF0;

    /* JADX WARN: Multi-variable type inference failed */
    static {
        int i = storage_mode_t.f2731c.f2732a;
        Enum r0 = new Enum("STORAGE_MODE_ALLOCATE", 0);
        int i2 = storage_mode_t.d.f2732a;
        f2624c = new StorageMode[]{r0, new Enum("STORAGE_MODE_SPARSE", 1), new Enum("UNKNOWN", 2)};
    }

    public static StorageMode valueOf(String str) {
        return (StorageMode) Enum.valueOf(StorageMode.class, str);
    }

    public static StorageMode[] values() {
        return (StorageMode[]) f2624c.clone();
    }
}
