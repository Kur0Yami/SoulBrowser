package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.api.Releasable;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import javax.annotation.ParametersAreNonnullByDefault;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public abstract class zzcgx implements Releasable {

    /* renamed from: c, reason: collision with root package name */
    public final Context f5142c;
    public final String f;
    public final WeakReference g;

    public zzcgx(zzcfk zzcfkVar) {
        Context context = zzcfkVar.getContext();
        this.f5142c = context;
        this.f = com.google.android.gms.ads.internal.zzt.zzc().zze(context, zzcfkVar.zzs().afmaVersion);
        this.g = new WeakReference(zzcfkVar);
    }

    public abstract boolean g(String str);

    public boolean h(String str, String[] strArr) {
        return g(str);
    }

    public boolean i(String str, String[] strArr, zzcgp zzcgpVar) {
        return g(str);
    }

    public void j(int i) {
    }

    public void k(int i) {
    }

    public void l(int i) {
    }

    public void m(int i) {
    }

    public abstract void o();

    public final void p(String str, String str2, String str3, String str4) {
        com.google.android.gms.ads.internal.util.client.zzf.zza.post(new zzcgw(this, str, str2, str3, str4));
    }

    public final /* synthetic */ void q(HashMap hashMap) {
        zzcfk zzcfkVar = (zzcfk) this.g.get();
        if (zzcfkVar != null) {
            zzcfkVar.S("onPrecacheEvent", hashMap);
        }
    }

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
    }
}
