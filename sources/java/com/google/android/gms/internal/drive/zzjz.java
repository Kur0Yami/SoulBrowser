package com.google.android.gms.internal.drive;

import com.google.android.gms.internal.drive.zzkk;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzjz extends zzjy<Object> {
    @Override // com.google.android.gms.internal.drive.zzjy
    public final int a(Map.Entry entry) {
        entry.getKey();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.drive.zzjy
    public final void b(Map.Entry entry) {
        entry.getKey();
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.internal.drive.zzjy
    public final zzkb c(Object obj) {
        return ((zzkk.zzc) obj).zzrw;
    }

    @Override // com.google.android.gms.internal.drive.zzjy
    public final zzkb d(Object obj) {
        zzkk.zzc zzcVar = (zzkk.zzc) obj;
        zzkb<Object> zzkbVar = zzcVar.zzrw;
        if (zzkbVar.b) {
            zzcVar.zzrw = (zzkb) zzkbVar.clone();
        }
        return zzcVar.zzrw;
    }

    @Override // com.google.android.gms.internal.drive.zzjy
    public final void e(Object obj) {
        zzkb<Object> zzkbVar = ((zzkk.zzc) obj).zzrw;
        if (zzkbVar.b) {
            return;
        }
        zzkbVar.f10213a.e();
        zzkbVar.b = true;
    }

    @Override // com.google.android.gms.internal.drive.zzjy
    public final boolean f(zzlq zzlqVar) {
        return zzlqVar instanceof zzkk.zzc;
    }
}
