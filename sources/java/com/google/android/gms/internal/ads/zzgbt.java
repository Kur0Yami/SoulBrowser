package com.google.android.gms.internal.ads;

import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public final class zzgbt implements zzgby {

    /* renamed from: a, reason: collision with root package name */
    public final byte[] f7808a;

    public zzgbt(byte[] bArr) {
        this.f7808a = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgby
    public final /* synthetic */ void a(Object obj, FileOutputStream fileOutputStream) {
        fileOutputStream.write((byte[]) obj);
    }

    @Override // com.google.android.gms.internal.ads.zzgby
    public final Object b(FileInputStream fileInputStream) {
        try {
            return zzgwd.a(fileInputStream);
        } catch (IOException e) {
            throw new RuntimeException("Cannot read bytes.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgby
    public final /* synthetic */ Object zzc() {
        return this.f7808a;
    }
}
