package com.google.android.gms.internal.ads;

import java.io.File;
import java.util.concurrent.ExecutorService;
import java.util.function.Function;

/* loaded from: classes.dex */
public final class zzgca {

    /* renamed from: a, reason: collision with root package name */
    public final ExecutorService f7814a;

    public zzgca(ExecutorService executorService) {
        this.f7814a = executorService;
    }

    public final zzgbz a(File file, byte[] bArr, Function function) {
        return new zzgbz(file, this.f7814a, new zzgbt(bArr), function);
    }
}
