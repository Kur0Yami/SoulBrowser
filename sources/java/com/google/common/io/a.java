package com.google.common.io;

import com.google.common.io.Closer;
import com.google.common.io.TempFileCreator;
import java.nio.file.Path;
import java.nio.file.attribute.FileAttribute;

/* loaded from: classes3.dex */
public final /* synthetic */ class a implements Closer.Suppressor, TempFileCreator.JavaNioCreator.PermissionSupplier {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f12485a;

    public /* synthetic */ a(int i) {
        this.f12485a = i;
    }

    public static /* bridge */ /* synthetic */ Path a(Object obj) {
        return (Path) obj;
    }

    @Override // com.google.common.io.TempFileCreator.JavaNioCreator.PermissionSupplier
    public FileAttribute get() {
        switch (this.f12485a) {
            case 1:
                return TempFileCreator.JavaNioCreator.b();
            default:
                TempFileCreator.JavaNioCreator.c();
                throw null;
        }
    }
}
