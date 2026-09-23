package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.common.internal.Preconditions;
import java.util.HashMap;
import javax.annotation.ParametersAreNonnullByDefault;
import kotlin.uuid.Uuid;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzcey extends FrameLayout implements zzcep {

    /* renamed from: c, reason: collision with root package name */
    public final zzcfk f5094c;
    public final FrameLayout f;
    public final View g;
    public final zzbgz h;
    public final zzcfm i;
    public final long j;
    public final zzceq k;
    public boolean l;
    public boolean m;
    public boolean n;
    public boolean o;
    public long p;
    public long q;
    public String r;
    public String[] s;
    public Bitmap t;
    public final ImageView u;
    public boolean v;

    public zzcey(Context context, zzcfk zzcfkVar, int i, boolean z, zzbgz zzbgzVar, zzcfj zzcfjVar, zzdxe zzdxeVar) {
        super(context);
        zzceq zzceoVar;
        zzceq zzceqVar;
        String str;
        this.f5094c = zzcfkVar;
        this.h = zzbgzVar;
        FrameLayout frameLayout = new FrameLayout(context);
        this.f = frameLayout;
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1));
        Preconditions.checkNotNull(zzcfkVar.zzk());
        zzcer zzcerVar = zzcfkVar.zzk().zza;
        zzcfl zzcflVar = new zzcfl(context, zzcfkVar.zzs(), zzcfkVar.zzm(), zzbgzVar, zzcfkVar.zzi());
        if (i == 3) {
            zzceqVar = new zzcig(context, zzcflVar);
        } else {
            if (i == 2) {
                zzcfkVar.zzN().getClass();
                zzceoVar = new zzcgc(context, zzcflVar, zzcfkVar, z, zzcfjVar, zzdxeVar);
            } else {
                zzceoVar = new zzceo(context, zzcfkVar, z, zzcfkVar.zzN().b(), new zzcfl(context, zzcfkVar.zzs(), zzcfkVar.zzm(), zzbgzVar, zzcfkVar.zzi()), zzdxeVar);
            }
            zzceqVar = zzceoVar;
        }
        this.k = zzceqVar;
        View view = new View(context);
        this.g = view;
        view.setBackgroundColor(0);
        frameLayout.addView(zzceqVar, new FrameLayout.LayoutParams(-1, -1, 17));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.n0)).booleanValue()) {
            frameLayout.addView(view, new FrameLayout.LayoutParams(-1, -1));
            frameLayout.bringChildToFront(view);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.k0)).booleanValue()) {
            a();
        }
        this.u = new ImageView(context);
        this.j = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.p0)).longValue();
        boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.m0)).booleanValue();
        this.o = booleanValue;
        if (true != booleanValue) {
            str = "0";
        } else {
            str = "1";
        }
        zzbgzVar.c("spinner_used", str);
        this.i = new zzcfm(this);
        zzceqVar.i(this);
    }

    public final void a() {
        String string;
        zzceq zzceqVar = this.k;
        if (zzceqVar == null) {
            return;
        }
        TextView textView = new TextView(zzceqVar.getContext());
        Resources e = com.google.android.gms.ads.internal.zzt.zzh().e();
        if (e == null) {
            string = "AdMob - ";
        } else {
            string = e.getString(R.string.watermark_label_prefix);
        }
        textView.setText(String.valueOf(string).concat(zzceqVar.h()));
        textView.setTextColor(-65536);
        textView.setBackgroundColor(-256);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2, 17);
        FrameLayout frameLayout = this.f;
        frameLayout.addView(textView, layoutParams);
        frameLayout.bringChildToFront(textView);
    }

    public final void b() {
        zzceq zzceqVar = this.k;
        if (zzceqVar != null) {
            long o = zzceqVar.o();
            if (this.p != o && o > 0) {
                float f = ((float) o) / 1000.0f;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.u2)).booleanValue()) {
                    c("timeupdate", "time", String.valueOf(f), "totalBytes", String.valueOf(zzceqVar.v()), "qoeCachedBytes", String.valueOf(zzceqVar.u()), "qoeLoadedBytes", String.valueOf(zzceqVar.t()), "droppedFrames", String.valueOf(zzceqVar.w()), "reportTime", String.valueOf(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis()));
                } else {
                    c("timeupdate", "time", String.valueOf(f));
                }
                this.p = o;
            }
        }
    }

    public final void c(String str, String... strArr) {
        Integer num;
        HashMap hashMap = new HashMap();
        zzceq zzceqVar = this.k;
        if (zzceqVar != null) {
            num = zzceqVar.x();
        } else {
            num = null;
        }
        if (num != null) {
            hashMap.put("playerId", num.toString());
        }
        hashMap.put("event", str);
        String str2 = null;
        for (String str3 : strArr) {
            if (str2 == null) {
                str2 = str3;
            } else {
                hashMap.put(str2, str3);
                str2 = null;
            }
        }
        this.f5094c.S("onVideoEvent", hashMap);
    }

    public final void d() {
        zzcfk zzcfkVar = this.f5094c;
        if (zzcfkVar.zzj() != null && this.m && !this.n) {
            zzcfkVar.zzj().getWindow().clearFlags(Uuid.SIZE_BITS);
            this.m = false;
        }
    }

    public final void e() {
        zzcfm zzcfmVar = this.i;
        zzcfmVar.f = false;
        zzfxl zzfxlVar = com.google.android.gms.ads.internal.util.zzs.zza;
        zzfxlVar.removeCallbacks(zzcfmVar);
        zzfxlVar.postDelayed(zzcfmVar, 250L);
        zzfxlVar.post(new zzces(this));
    }

    public final void f() {
        zzceq zzceqVar = this.k;
        if (zzceqVar != null && this.q == 0) {
            c("canplaythrough", "duration", String.valueOf(zzceqVar.n() / 1000.0f), "videoWidth", String.valueOf(zzceqVar.r()), "videoHeight", String.valueOf(zzceqVar.s()));
        }
    }

    public final void finalize() {
        try {
            this.i.a();
            final zzceq zzceqVar = this.k;
            if (zzceqVar != null) {
                ((zzcdn) zzcdo.f).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcev
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzceq.this.k();
                    }
                });
            }
        } finally {
            super.finalize();
        }
    }

    public final void g() {
        boolean z = false;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.w2)).booleanValue()) {
            zzcfm zzcfmVar = this.i;
            zzcfmVar.f = false;
            zzfxl zzfxlVar = com.google.android.gms.ads.internal.util.zzs.zza;
            zzfxlVar.removeCallbacks(zzcfmVar);
            zzfxlVar.postDelayed(zzcfmVar, 250L);
        }
        zzcfk zzcfkVar = this.f5094c;
        if (zzcfkVar.zzj() != null && !this.m) {
            if ((zzcfkVar.zzj().getWindow().getAttributes().flags & Uuid.SIZE_BITS) != 0) {
                z = true;
            }
            this.n = z;
            if (!z) {
                zzcfkVar.zzj().getWindow().addFlags(Uuid.SIZE_BITS);
                this.m = true;
            }
        }
        this.l = true;
    }

    public final void h() {
        c("pause", new String[0]);
        d();
        this.l = false;
    }

    public final void i() {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.w2)).booleanValue()) {
            this.i.a();
        }
        c("ended", new String[0]);
        d();
    }

    public final void j(String str, String str2) {
        c("error", "what", str, "extra", str2);
    }

    public final void k() {
        if (this.v && this.t != null) {
            ImageView imageView = this.u;
            if (imageView.getParent() == null) {
                imageView.setImageBitmap(this.t);
                imageView.invalidate();
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                FrameLayout frameLayout = this.f;
                frameLayout.addView(imageView, layoutParams);
                frameLayout.bringChildToFront(imageView);
            }
        }
        this.i.a();
        this.q = this.p;
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzcet(this));
    }

    public final void l(int i, int i2) {
        if (this.o) {
            zzbgb zzbgbVar = zzbgk.o0;
            int max = Math.max(i / ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).intValue(), 1);
            int max2 = Math.max(i2 / ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgbVar)).intValue(), 1);
            Bitmap bitmap = this.t;
            if (bitmap != null && bitmap.getWidth() == max && this.t.getHeight() == max2) {
                return;
            }
            this.t = Bitmap.createBitmap(max, max2, Bitmap.Config.ARGB_8888);
            this.v = false;
        }
    }

    public final void m() {
        this.g.setVisibility(4);
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcew
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzcey.this.c("firstFrameRendered", new String[0]);
            }
        });
    }

    public final void n(int i, int i2, int i3, int i4) {
        if (com.google.android.gms.ads.internal.util.zze.zzc()) {
            int length = String.valueOf(i).length();
            StringBuilder sb = new StringBuilder(length + 25 + String.valueOf(i2).length() + 3 + String.valueOf(i3).length() + 3 + String.valueOf(i4).length());
            androidx.work.impl.workers.a.A(sb, "Set video bounds to x:", i, ";y:", i2);
            sb.append(";w:");
            sb.append(i3);
            sb.append(";h:");
            sb.append(i4);
            com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
        }
        if (i3 != 0 && i4 != 0) {
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i3, i4);
            layoutParams.setMargins(i, i2, 0, 0);
            this.f.setLayoutParams(layoutParams);
            requestLayout();
        }
    }

    @Override // android.view.View
    public final void onWindowFocusChanged(final boolean z) {
        super.onWindowFocusChanged(z);
        zzcfm zzcfmVar = this.i;
        if (z) {
            zzcfmVar.f = false;
            zzfxl zzfxlVar = com.google.android.gms.ads.internal.util.zzs.zza;
            zzfxlVar.removeCallbacks(zzcfmVar);
            zzfxlVar.postDelayed(zzcfmVar, 250L);
        } else {
            zzcfmVar.a();
            this.q = this.p;
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcex
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzcey zzceyVar = zzcey.this;
                zzceyVar.getClass();
                zzceyVar.c("windowFocusChanged", "hasWindowFocus", String.valueOf(z));
            }
        });
    }

    @Override // android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        boolean z = false;
        zzcfm zzcfmVar = this.i;
        if (i == 0) {
            zzcfmVar.f = false;
            zzfxl zzfxlVar = com.google.android.gms.ads.internal.util.zzs.zza;
            zzfxlVar.removeCallbacks(zzcfmVar);
            zzfxlVar.postDelayed(zzcfmVar, 250L);
            z = true;
        } else {
            zzcfmVar.a();
            this.q = this.p;
        }
        com.google.android.gms.ads.internal.util.zzs.zza.post(new zzceu(this, z));
    }

    @Override // com.google.android.gms.internal.ads.zzcep
    public final void zzi() {
        if (this.l) {
            ImageView imageView = this.u;
            if (imageView.getParent() != null) {
                this.f.removeView(imageView);
            }
        }
        zzceq zzceqVar = this.k;
        if (zzceqVar != null && this.t != null) {
            long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime();
            if (zzceqVar.getBitmap(this.t) != null) {
                this.v = true;
            }
            long elapsedRealtime2 = com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - elapsedRealtime;
            if (com.google.android.gms.ads.internal.util.zze.zzc()) {
                StringBuilder sb = new StringBuilder(String.valueOf(elapsedRealtime2).length() + 26);
                sb.append("Spinner frame grab took ");
                sb.append(elapsedRealtime2);
                sb.append("ms");
                com.google.android.gms.ads.internal.util.zze.zza(sb.toString());
            }
            if (elapsedRealtime2 > this.j) {
                com.google.android.gms.ads.internal.util.client.zzo.zzi("Spinner frame grab crossed jank threshold! Suspending spinner.");
                this.o = false;
                this.t = null;
                zzbgz zzbgzVar = this.h;
                if (zzbgzVar != null) {
                    zzbgzVar.c("spinner_jank", Long.toString(elapsedRealtime2));
                }
            }
        }
    }
}
