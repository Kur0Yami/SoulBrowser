package com.google.android.gms.internal.ads;

import java.io.FileInputStream;
import java.io.FileOutputStream;

/* loaded from: classes.dex */
public final class zzgbx implements zzgby {

    /* renamed from: a, reason: collision with root package name */
    public final zzicc f7811a;

    public zzgbx(zzicc zziccVar) {
        this.f7811a = zziccVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgby
    public final /* synthetic */ void a(Object obj, FileOutputStream fileOutputStream) {
        ((zzicc) obj).f(fileOutputStream);
    }

    @Override // com.google.android.gms.internal.ads.zzgby
    public final Object b(FileInputStream fileInputStream) {
        try {
            zzick a2 = this.f7811a.a();
            zziab zziabVar = zziab.b;
            int i = zzhyy.f8889a;
            return a2.a(fileInputStream, zziab.f8905c);
        } catch (zzibg e) {
            throw new RuntimeException("Cannot read proto.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgby
    public final /* synthetic */ Object zzc() {
        return this.f7811a;
    }
}
