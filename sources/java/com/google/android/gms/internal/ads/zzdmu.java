package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public final class zzdmu extends zzbju {

    /* renamed from: c, reason: collision with root package name */
    public final zzdnm f5921c;
    public IObjectWrapper f;

    public zzdmu(zzdnm zzdnmVar) {
        super("com.google.android.gms.ads.internal.formats.client.IMediaContent");
        this.f5921c = zzdnmVar;
    }

    public static float c5(IObjectWrapper iObjectWrapper) {
        Drawable drawable;
        if (iObjectWrapper != null && (drawable = (Drawable) ObjectWrapper.f2(iObjectWrapper)) != null && drawable.getIntrinsicWidth() != -1 && drawable.getIntrinsicHeight() != -1) {
            return drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbjv
    public final float zze() {
        float f;
        float f2;
        zzclb zzN;
        int i;
        int i2;
        zzdnm zzdnmVar = this.f5921c;
        synchronized (zzdnmVar) {
            f = zzdnmVar.x;
        }
        if (f != 0.0f) {
            return zzdnmVar.v();
        }
        if (zzdnmVar.U() != null) {
            try {
                return zzdnmVar.U().zzm();
            } catch (RemoteException e) {
                int i3 = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Remote exception getting video controller aspect ratio.", e);
                return 0.0f;
            }
        }
        IObjectWrapper iObjectWrapper = this.f;
        if (iObjectWrapper != null) {
            return c5(iObjectWrapper);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Jd)).booleanValue() && zzdnmVar.q() != null && (zzN = zzdnmVar.q().zzN()) != null && (i = zzN.f5235c) >= 0 && (i2 = zzN.b) > 0) {
            return i / i2;
        }
        zzbjy d = zzdnmVar.d();
        if (d == null) {
            return 0.0f;
        }
        if (d.zze() != -1 && d.zzf() != -1) {
            f2 = d.zze() / d.zzf();
        } else {
            f2 = 0.0f;
        }
        if (f2 == 0.0f) {
            return c5(d.zzb());
        }
        return f2;
    }

    @Override // com.google.android.gms.internal.ads.zzbjv
    public final void zzf(IObjectWrapper iObjectWrapper) {
        this.f = iObjectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.zzbjv
    public final IObjectWrapper zzg() {
        IObjectWrapper iObjectWrapper = this.f;
        if (iObjectWrapper != null) {
            return iObjectWrapper;
        }
        zzbjy d = this.f5921c.d();
        if (d == null) {
            return null;
        }
        return d.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzbjv
    public final float zzh() {
        zzdnm zzdnmVar = this.f5921c;
        if (zzdnmVar.U() != null) {
            return zzdnmVar.U().zzj();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbjv
    public final float zzi() {
        zzdnm zzdnmVar = this.f5921c;
        if (zzdnmVar.U() != null) {
            return zzdnmVar.U().zzk();
        }
        return 0.0f;
    }

    @Override // com.google.android.gms.internal.ads.zzbjv
    public final com.google.android.gms.ads.internal.client.zzed zzj() {
        return this.f5921c.U();
    }

    @Override // com.google.android.gms.internal.ads.zzbjv
    public final boolean zzk() {
        if (this.f5921c.U() != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbjv
    public final boolean zzl() {
        zzcir zzcirVar;
        zzdnm zzdnmVar = this.f5921c;
        synchronized (zzdnmVar) {
            zzcirVar = zzdnmVar.j;
        }
        if (zzcirVar != null) {
            return true;
        }
        return false;
    }
}
