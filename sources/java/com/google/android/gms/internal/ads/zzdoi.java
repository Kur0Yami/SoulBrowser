package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.ViewGroup;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
final class zzdoi implements zzbjl {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzbcc f5960a;
    public final /* synthetic */ ViewGroup b;

    /* JADX WARN: Multi-variable type inference failed */
    public zzdoi(zzdpj zzdpjVar, ViewGroup viewGroup) {
        this.f5960a = (zzbcc) zzdpjVar;
        this.b = viewGroup;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzbcc, android.view.View$OnTouchListener] */
    @Override // com.google.android.gms.internal.ads.zzbjl
    public final void a(MotionEvent motionEvent) {
        this.f5960a.onTouch(null, motionEvent);
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzbcc, android.view.View$OnClickListener, com.google.android.gms.internal.ads.zzdpj] */
    @Override // com.google.android.gms.internal.ads.zzbjl
    public final void zza() {
        zzgtd zzgtdVar = zzdoh.s;
        ?? r1 = this.f5960a;
        Map zzk = r1.zzk();
        if (zzk != null) {
            zzguy zzguyVar = (zzguy) zzgtdVar;
            int i = zzguyVar.h;
            int i2 = 0;
            while (i2 < i) {
                Object obj = zzk.get((String) zzguyVar.get(i2));
                i2++;
                if (obj != null) {
                    r1.onClick(this.b);
                    return;
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdpj] */
    @Override // com.google.android.gms.internal.ads.zzbjl
    public final JSONObject zzc() {
        return this.f5960a.zzp();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzbcc, com.google.android.gms.internal.ads.zzdpj] */
    @Override // com.google.android.gms.internal.ads.zzbjl
    public final JSONObject zzd() {
        return this.f5960a.zzq();
    }
}
