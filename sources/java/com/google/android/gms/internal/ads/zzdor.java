package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.common.util.Clock;
import java.lang.ref.WeakReference;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzdor implements View.OnClickListener {

    /* renamed from: c, reason: collision with root package name */
    public final zzdsp f5971c;
    public final Clock f;
    public zzblp g;
    public zzbnn h;
    public String i;
    public Long j;
    public WeakReference k;

    public zzdor(zzdsp zzdspVar, Clock clock) {
        this.f5971c = zzdspVar;
        this.f = clock;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        View view2;
        WeakReference weakReference = this.k;
        if (weakReference != null && weakReference.get() == view) {
            if (this.i != null && this.j != null) {
                HashMap hashMap = new HashMap();
                hashMap.put("id", this.i);
                hashMap.put("time_interval", String.valueOf(this.f.currentTimeMillis() - this.j.longValue()));
                hashMap.put("messageType", "onePointFiveClick");
                this.f5971c.d(hashMap);
            }
            this.i = null;
            this.j = null;
            WeakReference weakReference2 = this.k;
            if (weakReference2 != null && (view2 = (View) weakReference2.get()) != null) {
                view2.setClickable(false);
                view2.setOnClickListener(null);
                this.k = null;
            }
        }
    }
}
