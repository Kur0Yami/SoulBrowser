package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.PointF;
import android.net.Uri;
import android.os.Handler;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzcdo;
import com.google.android.gms.internal.ads.zzeag;
import com.google.android.gms.internal.ads.zzeak;
import com.google.android.gms.internal.ads.zzgyw;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzat {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3111a;
    public final zzeak b;

    /* renamed from: c, reason: collision with root package name */
    public String f3112c;
    public String d;
    public String e;
    public String f;
    public int g;
    public final int h;
    public PointF i;
    public PointF j;
    public final Handler k;
    public final Runnable l;

    public zzat(Context context) {
        this.g = 0;
        this.l = new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzas
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzat zzatVar = zzat.this;
                zzatVar.g = 4;
                zzatVar.zzb();
            }
        };
        this.f3111a = context;
        this.h = ViewConfiguration.get(context).getScaledTouchSlop();
        com.google.android.gms.ads.internal.zzt.zzs().zza();
        this.k = com.google.android.gms.ads.internal.zzt.zzs().zzb();
        this.b = com.google.android.gms.ads.internal.zzt.zzo().zzb();
    }

    public static final int c(ArrayList arrayList, String str, boolean z) {
        if (!z) {
            return -1;
        }
        arrayList.add(str);
        return arrayList.size() - 1;
    }

    public final boolean a(float f, float f2, float f3, float f4) {
        float abs = Math.abs(this.i.x - f);
        int i = this.h;
        if (abs < i && Math.abs(this.i.y - f2) < i && Math.abs(this.j.x - f3) < i && Math.abs(this.j.y - f4) < i) {
            return true;
        }
        return false;
    }

    public final void b(Context context) {
        final int i;
        ArrayList arrayList = new ArrayList();
        int c2 = c(arrayList, "None", true);
        final int c3 = c(arrayList, "Shake", true);
        final int c4 = c(arrayList, "Flick", true);
        int ordinal = this.b.r.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                i = c2;
            } else {
                i = c4;
            }
        } else {
            i = c3;
        }
        com.google.android.gms.ads.internal.zzt.zzc();
        AlertDialog.Builder zzP = zzs.zzP(context);
        final AtomicInteger atomicInteger = new AtomicInteger(i);
        zzP.setTitle("Setup gesture");
        zzP.setSingleChoiceItems((CharSequence[]) arrayList.toArray(new String[0]), i, new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzaj
            @Override // android.content.DialogInterface.OnClickListener
            public final /* synthetic */ void onClick(DialogInterface dialogInterface, int i2) {
                atomicInteger.set(i2);
            }
        });
        zzP.setNegativeButton("Dismiss", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzak
            @Override // android.content.DialogInterface.OnClickListener
            public final /* synthetic */ void onClick(DialogInterface dialogInterface, int i2) {
                zzat.this.zzb();
            }
        });
        zzP.setPositiveButton("Save", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzal
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i2) {
                zzat zzatVar = zzat.this;
                zzeak zzeakVar = zzatVar.b;
                AtomicInteger atomicInteger2 = atomicInteger;
                if (atomicInteger2.get() != i) {
                    if (atomicInteger2.get() == c3) {
                        zzeakVar.i(zzeag.f, true);
                    } else if (atomicInteger2.get() == c4) {
                        zzeakVar.i(zzeag.g, true);
                    } else {
                        zzeakVar.i(zzeag.f6309c, true);
                    }
                }
                zzatVar.zzb();
            }
        });
        zzP.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.google.android.gms.ads.internal.util.zzam
            @Override // android.content.DialogInterface.OnCancelListener
            public final /* synthetic */ void onCancel(DialogInterface dialogInterface) {
                zzat.this.zzb();
            }
        });
        zzP.create().show();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(100);
        sb.append("{Dialog: ");
        sb.append(this.f3112c);
        sb.append(",DebugSignal: ");
        sb.append(this.f);
        sb.append(",AFMA Version: ");
        sb.append(this.e);
        sb.append(",Ad Unit ID: ");
        return a.p(sb, this.d, "}");
    }

    public final void zza(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        int historySize = motionEvent.getHistorySize();
        int pointerCount = motionEvent.getPointerCount();
        if (actionMasked == 0) {
            this.g = 0;
            this.i = new PointF(motionEvent.getX(0), motionEvent.getY(0));
            return;
        }
        int i = this.g;
        if (i != -1) {
            Runnable runnable = this.l;
            Handler handler = this.k;
            if (i == 0) {
                if (actionMasked == 5) {
                    this.g = 5;
                    this.j = new PointF(motionEvent.getX(1), motionEvent.getY(1));
                    handler.postDelayed(runnable, ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.L5)).longValue());
                    return;
                }
                return;
            }
            if (i == 5) {
                if (pointerCount == 2) {
                    if (actionMasked == 2) {
                        boolean z = false;
                        for (int i2 = 0; i2 < historySize; i2++) {
                            z |= !a(motionEvent.getHistoricalX(0, i2), motionEvent.getHistoricalY(0, i2), motionEvent.getHistoricalX(1, i2), motionEvent.getHistoricalY(1, i2));
                        }
                        if (a(motionEvent.getX(), motionEvent.getY(), motionEvent.getX(1), motionEvent.getY(1)) && !z) {
                            return;
                        }
                    } else {
                        return;
                    }
                }
                this.g = -1;
                handler.removeCallbacks(runnable);
            }
        }
    }

    public final void zzb() {
        try {
            Context context = this.f3111a;
            if (!(context instanceof Activity)) {
                int i = zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Can not create dialog without Activity Context");
                return;
            }
            String str = "Creative preview (enabled)";
            if (true == TextUtils.isEmpty(com.google.android.gms.ads.internal.zzt.zzo().zzi())) {
                str = "Creative preview";
            }
            String str2 = "Troubleshooting (enabled)";
            if (true != com.google.android.gms.ads.internal.zzt.zzo().zzm()) {
                str2 = "Troubleshooting";
            }
            ArrayList arrayList = new ArrayList();
            final int c2 = c(arrayList, "Ad information", true);
            final int c3 = c(arrayList, str, true);
            final int c4 = c(arrayList, str2, true);
            boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Aa)).booleanValue();
            final int c5 = c(arrayList, "Open ad inspector", booleanValue);
            final int c6 = c(arrayList, "Ad inspector settings", booleanValue);
            com.google.android.gms.ads.internal.zzt.zzc();
            AlertDialog.Builder zzP = zzs.zzP(context);
            zzP.setTitle("Select a debug mode").setItems((CharSequence[]) arrayList.toArray(new String[0]), new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzad
                @Override // android.content.DialogInterface.OnClickListener
                public final /* synthetic */ void onClick(DialogInterface dialogInterface, int i2) {
                    final zzat zzatVar = zzat.this;
                    zzeak zzeakVar = zzatVar.b;
                    if (i2 == c2) {
                        Context context2 = zzatVar.f3111a;
                        if (!(context2 instanceof Activity)) {
                            int i3 = zze.zza;
                            com.google.android.gms.ads.internal.util.client.zzo.zzh("Can not create dialog without Activity Context");
                            return;
                        }
                        String str3 = zzatVar.f3112c;
                        final String str4 = "No debug information";
                        if (!TextUtils.isEmpty(str3)) {
                            Uri build = new Uri.Builder().encodedQuery(str3.replaceAll("\\+", "%20")).build();
                            StringBuilder sb = new StringBuilder();
                            com.google.android.gms.ads.internal.zzt.zzc();
                            Map zzV = zzs.zzV(build);
                            for (String str5 : zzV.keySet()) {
                                sb.append(str5);
                                sb.append(" = ");
                                sb.append((String) zzV.get(str5));
                                sb.append("\n\n");
                            }
                            String trim = sb.toString().trim();
                            if (!TextUtils.isEmpty(trim)) {
                                str4 = trim;
                            }
                        }
                        com.google.android.gms.ads.internal.zzt.zzc();
                        AlertDialog.Builder zzP2 = zzs.zzP(context2);
                        zzP2.setMessage(str4);
                        zzP2.setTitle("Ad Information");
                        zzP2.setPositiveButton("Share", new DialogInterface.OnClickListener() { // from class: com.google.android.gms.ads.internal.util.zzan
                            @Override // android.content.DialogInterface.OnClickListener
                            public final /* synthetic */ void onClick(DialogInterface dialogInterface2, int i4) {
                                zzat zzatVar2 = zzat.this;
                                zzatVar2.getClass();
                                com.google.android.gms.ads.internal.zzt.zzc();
                                zzs.zzaa(zzatVar2.f3111a, Intent.createChooser(new Intent("android.intent.action.SEND").setType("text/plain").putExtra("android.intent.extra.TEXT", str4), "Share via"));
                            }
                        });
                        zzP2.setNegativeButton("Close", zzao.f3106c);
                        zzP2.create().show();
                        return;
                    }
                    if (i2 == c3) {
                        int i4 = zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzd("Debug mode [Creative Preview] selected.");
                        zzcdo.f5068a.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzaf
                            @Override // java.lang.Runnable
                            public final void run() {
                                boolean z;
                                String str6;
                                zzat zzatVar2 = zzat.this;
                                zzax zzo = com.google.android.gms.ads.internal.zzt.zzo();
                                Context context3 = zzatVar2.f3111a;
                                String str7 = zzatVar2.d;
                                String str8 = zzatVar2.e;
                                zzo.getClass();
                                String b = zzax.b(context3, zzo.c(context3, (String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.N5), str7, str8).toString(), str8);
                                if (TextUtils.isEmpty(b)) {
                                    int i5 = zze.zza;
                                    com.google.android.gms.ads.internal.util.client.zzo.zzd("Not linked for in app preview.");
                                } else {
                                    try {
                                        JSONObject jSONObject = new JSONObject(b.trim());
                                        String optString = jSONObject.optString("gct");
                                        zzo.f = jSONObject.optString("status");
                                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Aa)).booleanValue()) {
                                            String str9 = zzo.f;
                                            if ("0".equals(str9) || "2".equals(str9)) {
                                                z = true;
                                            } else {
                                                z = false;
                                            }
                                            zzo.zzj(z);
                                            zzj i6 = com.google.android.gms.ads.internal.zzt.zzh().i();
                                            if (!z) {
                                                str6 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                                            } else {
                                                str6 = str7;
                                            }
                                            i6.zzM(str6);
                                        }
                                        synchronized (zzo.f3116a) {
                                            zzo.f3117c = optString;
                                        }
                                        String str10 = zzo.f;
                                        if ("2".equals(str10)) {
                                            int i7 = zze.zza;
                                            com.google.android.gms.ads.internal.util.client.zzo.zzd("Creative is not pushed for this device.");
                                            zzo.a(context3, "There was no creative pushed from DFP to the device.", false, false);
                                            return;
                                        } else if ("1".equals(str10)) {
                                            int i8 = zze.zza;
                                            com.google.android.gms.ads.internal.util.client.zzo.zzd("The app is not linked for creative preview.");
                                            zzo.zzf(context3, str7, str8);
                                            return;
                                        } else {
                                            if ("0".equals(str10)) {
                                                int i9 = zze.zza;
                                                com.google.android.gms.ads.internal.util.client.zzo.zzd("Device is linked for in app preview.");
                                                zzo.a(context3, "The device is successfully linked for creative preview.", false, true);
                                                return;
                                            }
                                            return;
                                        }
                                    } catch (JSONException e) {
                                        int i10 = zze.zza;
                                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Fail to get in app preview response json.", e);
                                    }
                                }
                                zzo.a(context3, "In-app preview failed to load because of a system error. Please try again later.", true, true);
                            }
                        });
                        return;
                    }
                    if (i2 == c4) {
                        int i5 = zze.zza;
                        com.google.android.gms.ads.internal.util.client.zzo.zzd("Debug mode [Troubleshooting] selected.");
                        zzcdo.f5068a.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzag
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzax zzo = com.google.android.gms.ads.internal.zzt.zzo();
                                zzat zzatVar2 = zzat.this;
                                String str6 = zzatVar2.d;
                                String str7 = zzatVar2.e;
                                String str8 = zzatVar2.f;
                                boolean zzm = zzo.zzm();
                                Context context3 = zzatVar2.f3111a;
                                zzo.zzl(zzo.zze(context3, str6, str7));
                                if (zzo.zzm()) {
                                    if (!zzm && !TextUtils.isEmpty(str8)) {
                                        zzo.zzh(context3, str7, str8, str6);
                                    }
                                    int i6 = zze.zza;
                                    com.google.android.gms.ads.internal.util.client.zzo.zzd("Device is linked for debug signals.");
                                    zzo.a(context3, "The device is successfully linked for troubleshooting.", false, true);
                                    return;
                                }
                                zzo.zzf(context3, str6, str7);
                            }
                        });
                        return;
                    }
                    if (i2 == c5) {
                        final zzgyw zzgywVar = zzcdo.f;
                        zzgyw zzgywVar2 = zzcdo.f5068a;
                        if (zzeakVar.g()) {
                            zzgywVar.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzaq
                                @Override // java.lang.Runnable
                                public final /* synthetic */ void run() {
                                    zzat zzatVar2 = zzat.this;
                                    zzatVar2.getClass();
                                    com.google.android.gms.ads.internal.zzt.zzo().zzc(zzatVar2.f3111a);
                                }
                            });
                            return;
                        } else {
                            zzgywVar2.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzap
                                @Override // java.lang.Runnable
                                public final /* synthetic */ void run() {
                                    zzax zzo = com.google.android.gms.ads.internal.zzt.zzo();
                                    final zzat zzatVar2 = zzat.this;
                                    Context context3 = zzatVar2.f3111a;
                                    if (!zzo.zze(context3, zzatVar2.d, zzatVar2.e)) {
                                        com.google.android.gms.ads.internal.zzt.zzo().zzf(context3, zzatVar2.d, zzatVar2.e);
                                    } else {
                                        zzgywVar.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzai
                                            @Override // java.lang.Runnable
                                            public final /* synthetic */ void run() {
                                                zzat zzatVar3 = zzat.this;
                                                zzatVar3.getClass();
                                                com.google.android.gms.ads.internal.zzt.zzo().zzc(zzatVar3.f3111a);
                                            }
                                        });
                                    }
                                }
                            });
                            return;
                        }
                    }
                    if (i2 == c6) {
                        final zzgyw zzgywVar3 = zzcdo.f;
                        zzgyw zzgywVar4 = zzcdo.f5068a;
                        if (zzeakVar.g()) {
                            zzgywVar3.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzae
                                @Override // java.lang.Runnable
                                public final /* synthetic */ void run() {
                                    zzat zzatVar2 = zzat.this;
                                    zzatVar2.b(zzatVar2.f3111a);
                                }
                            });
                        } else {
                            zzgywVar4.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzar
                                @Override // java.lang.Runnable
                                public final /* synthetic */ void run() {
                                    zzax zzo = com.google.android.gms.ads.internal.zzt.zzo();
                                    final zzat zzatVar2 = zzat.this;
                                    Context context3 = zzatVar2.f3111a;
                                    if (!zzo.zze(context3, zzatVar2.d, zzatVar2.e)) {
                                        com.google.android.gms.ads.internal.zzt.zzo().zzf(context3, zzatVar2.d, zzatVar2.e);
                                    } else {
                                        zzgywVar3.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.util.zzah
                                            @Override // java.lang.Runnable
                                            public final /* synthetic */ void run() {
                                                zzat zzatVar3 = zzat.this;
                                                zzatVar3.b(zzatVar3.f3111a);
                                            }
                                        });
                                    }
                                }
                            });
                        }
                    }
                }
            });
            zzP.create().show();
        } catch (WindowManager.BadTokenException e) {
            zze.zzb(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
        }
    }

    public final void zzc(String str) {
        this.d = str;
    }

    public final void zzd(String str) {
        this.e = str;
    }

    public final void zze(String str) {
        this.f3112c = str;
    }

    public final void zzf(String str) {
        this.f = str;
    }

    public zzat(Context context, String str) {
        this(context);
        this.f3112c = str;
    }
}
