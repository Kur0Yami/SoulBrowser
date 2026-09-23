package com.google.android.gms.ads.internal.overlay;

import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.zzbgk;

/* loaded from: classes.dex */
public final class zzu extends FrameLayout implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final ImageButton f3066c;
    public final zzah f;

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0060, code lost:
    
        r0 = null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzu(android.content.Context r6, com.google.android.gms.ads.internal.overlay.zzt r7, @androidx.annotation.Nullable com.google.android.gms.ads.internal.overlay.zzah r8) {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzu.<init>(android.content.Context, com.google.android.gms.ads.internal.overlay.zzt, com.google.android.gms.ads.internal.overlay.zzah):void");
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        zzah zzahVar = this.f;
        if (zzahVar != null) {
            zzahVar.zzd();
        }
    }

    public final void zza(boolean z) {
        ImageButton imageButton = this.f3066c;
        if (z) {
            imageButton.setVisibility(8);
            if (((Long) zzbd.zzc().a(zzbgk.H1)).longValue() > 0) {
                imageButton.animate().cancel();
                imageButton.clearAnimation();
                return;
            }
            return;
        }
        imageButton.setVisibility(0);
    }
}
