package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import android.view.Display;
import android.view.WindowManager;
import android.view.accessibility.CaptioningManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzzu extends zzaaa implements zzmj {
    public static final zzgux k = new zzgsm();

    /* renamed from: c, reason: collision with root package name */
    public final Object f9420c;
    public final Context d;
    public zzzf e;
    public Thread f;
    public zzzj g;
    public zzd h;
    public Boolean i;
    public final zzyn j;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzyn] */
    public zzzu(Context context) {
        Context context2;
        ?? obj = new Object();
        zzzf zzzfVar = zzzf.F;
        this.f9420c = new Object();
        if (context != null) {
            context2 = context.getApplicationContext();
        } else {
            context2 = null;
        }
        this.d = context2;
        this.j = obj;
        if (zzzfVar != null) {
            this.e = zzzfVar;
        } else {
            zzze zzzeVar = new zzze(zzzfVar);
            zzzeVar.a(zzzfVar);
            this.e = new zzzf(zzzeVar);
        }
        this.h = zzd.b;
        if (this.e.A && context == null) {
            zzee.c("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
        }
    }

    public static String i(String str) {
        if (!TextUtils.isEmpty(str) && !TextUtils.equals(str, "und")) {
            return str;
        }
        return null;
    }

    public static int j(zzv zzvVar, String str, boolean z) {
        if (!TextUtils.isEmpty(str) && str.equals(zzvVar.d)) {
            return 4;
        }
        String i = i(str);
        String i2 = i(zzvVar.d);
        if (i2 != null && i != null) {
            if (!i2.startsWith(i) && !i.startsWith(i2)) {
                String str2 = zzfj.f7405a;
                if (!i2.split("-", 2)[0].equals(i.split("-", 2)[0])) {
                    return 0;
                }
                return 2;
            }
            return 3;
        }
        if (!z || i2 != null) {
            return 0;
        }
        return 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0027, code lost:
    
        r1 = r1 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ int k(com.google.android.gms.internal.ads.zzv r5, com.google.android.gms.internal.ads.zzgtd r6) {
        /*
            r0 = 0
            r1 = r0
        L2:
            int r2 = r6.size()
            if (r1 >= r2) goto L2a
            r2 = r0
        L9:
            com.google.android.gms.internal.ads.zzgtd r3 = r5.f9309c
            int r4 = r3.size()
            if (r2 >= r4) goto L27
            java.lang.Object r3 = r3.get(r2)
            com.google.android.gms.internal.ads.zzx r3 = (com.google.android.gms.internal.ads.zzx) r3
            java.lang.String r3 = r3.b
            java.lang.Object r4 = r6.get(r1)
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L24
            return r1
        L24:
            int r2 = r2 + 1
            goto L9
        L27:
            int r1 = r1 + 1
            goto L2
        L2a:
            r5 = 2147483647(0x7fffffff, float:NaN)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzzu.k(com.google.android.gms.internal.ads.zzv, com.google.android.gms.internal.ads.zzgtd):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v8, types: [com.google.android.gms.internal.ads.zzgtd] */
    public static final Pair m(int i, zzzz zzzzVar, int[][][] iArr, zzzl zzzlVar, Comparator comparator) {
        int i2;
        ?? arrayList;
        zzzz zzzzVar2 = zzzzVar;
        ArrayList arrayList2 = new ArrayList();
        int i3 = 0;
        while (i3 < 2) {
            if (i == zzzzVar2.f9423a[i3]) {
                zzyh zzyhVar = zzzzVar2.b[i3];
                for (int i4 = 0; i4 < zzyhVar.f9388a; i4++) {
                    zzbg a2 = zzyhVar.a(i4);
                    List a3 = zzzlVar.a(i3, a2, iArr[i3][i4]);
                    int i5 = a2.f4645a;
                    boolean[] zArr = new boolean[i5];
                    int i6 = 0;
                    while (i6 < i5) {
                        int i7 = i6 + 1;
                        zzguy zzguyVar = (zzguy) a3;
                        zzzm zzzmVar = (zzzm) zzguyVar.get(i6);
                        int zza = zzzmVar.zza();
                        if (zArr[i6] || zza == 0) {
                            i2 = i3;
                        } else {
                            if (zza == 1) {
                                arrayList = zzgtd.r(zzzmVar);
                            } else {
                                arrayList = new ArrayList();
                                arrayList.add(zzzmVar);
                                int i8 = i7;
                                while (i8 < i5) {
                                    zzzm zzzmVar2 = (zzzm) zzguyVar.get(i8);
                                    int i9 = i3;
                                    if (zzzmVar2.zza() == 2 && zzzmVar.a(zzzmVar2)) {
                                        arrayList.add(zzzmVar2);
                                        zArr[i8] = true;
                                    }
                                    i8++;
                                    i3 = i9;
                                }
                            }
                            i2 = i3;
                            arrayList2.add(arrayList);
                        }
                        i6 = i7;
                        i3 = i2;
                    }
                }
            }
            i3++;
            zzzzVar2 = zzzzVar;
        }
        if (arrayList2.isEmpty()) {
            return null;
        }
        List list = (List) Collections.max(arrayList2, comparator);
        int[] iArr2 = new int[list.size()];
        for (int i10 = 0; i10 < list.size(); i10++) {
            iArr2[i10] = ((zzzm) list.get(i10)).g;
        }
        zzzm zzzmVar3 = (zzzm) list.get(0);
        return Pair.create(new zzzv(zzzmVar3.f, iArr2), Integer.valueOf(zzzmVar3.f9414c));
    }

    @Override // com.google.android.gms.internal.ads.zzaad
    public final void a() {
        zzzj zzzjVar;
        boolean z;
        synchronized (this.f9420c) {
            try {
                Thread thread = this.f;
                if (thread != null) {
                    if (thread == Thread.currentThread()) {
                        z = true;
                    } else {
                        z = false;
                    }
                    zzgqa.g("DefaultTrackSelector is accessed on the wrong thread.", z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (Build.VERSION.SDK_INT >= 32 && (zzzjVar = this.g) != null) {
            zzzjVar.d();
            this.g = null;
        }
        super.a();
    }

    @Override // com.google.android.gms.internal.ads.zzaad
    public final void c(zzd zzdVar) {
        if (this.h.equals(zzdVar)) {
            return;
        }
        this.h = zzdVar;
        l();
    }

    @Override // com.google.android.gms.internal.ads.zzaad
    public final zzmj d() {
        return this;
    }

    /* JADX WARN: Type inference failed for: r11v14, types: [com.google.android.gms.internal.ads.zzgqs, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    @Override // com.google.android.gms.internal.ads.zzaaa
    public final Pair g(zzzz zzzzVar, int[][][] iArr, final int[] iArr2) {
        final zzzf zzzfVar;
        int i;
        final boolean z;
        final String str;
        int i2;
        final Point point;
        Pair pair;
        final String str2;
        long j;
        zzml zzmlVar;
        int[] iArr3;
        int length;
        zzyq zzyqVar;
        zzgtd f;
        long j2;
        zzyn zzynVar;
        double d;
        long j3;
        Object obj;
        zzzg zzzgVar;
        int i3;
        zzzv zzzvVar;
        int i4;
        Context context;
        CaptioningManager captioningManager;
        Locale locale;
        Context context2;
        Display display;
        Point point2;
        String l;
        Context context3;
        int[][][] iArr4 = iArr;
        synchronized (this.f9420c) {
            this.f = Thread.currentThread();
            zzzfVar = this.e;
        }
        if (this.i == null && (context3 = this.d) != null) {
            this.i = Boolean.valueOf(zzfj.h(context3));
        }
        if (zzzfVar.A && Build.VERSION.SDK_INT >= 32 && this.g == null) {
            this.g = new zzzj(this.d, this, this.i);
        }
        int i5 = 2;
        zzzv[] zzzvVarArr = new zzzv[2];
        int i6 = 0;
        while (true) {
            i = 1;
            if (i6 < 2) {
                if (zzzzVar.f9423a[i6] == 2 && zzzzVar.b[i6].f9388a > 0) {
                    z = true;
                    break;
                }
                i6++;
            } else {
                z = false;
                break;
            }
        }
        Pair m = m(1, zzzzVar, iArr4, new zzzl() { // from class: com.google.android.gms.internal.ads.zzyw
            /* JADX WARN: Type inference failed for: r8v0, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
            @Override // com.google.android.gms.internal.ads.zzzl
            public final List a(int i7, zzbg zzbgVar, int[] iArr5) {
                zzzu zzzuVar = zzzu.this;
                zzzf zzzfVar2 = zzzfVar;
                zzyz zzyzVar = new zzyz(zzzuVar, zzzfVar2);
                int i8 = iArr2[i7];
                zzgvs zzgvsVar = zzgtd.f;
                ?? zzgsxVar = new zzgsx(4);
                for (int i9 = 0; i9 < zzbgVar.f4645a; i9++) {
                    zzgsxVar.c(new zzyr(i7, zzbgVar, i9, zzzfVar2, iArr5[i9], z, zzyzVar));
                }
                return zzgsxVar.f();
            }
        }, zzys.f9394c);
        if (m != null) {
            zzzvVarArr[((Integer) m.second).intValue()] = (zzzv) m.first;
        }
        if (m == null) {
            str = null;
        } else {
            zzzv zzzvVar2 = (zzzv) m.first;
            str = zzzvVar2.f9421a.d[zzzvVar2.b[0]].d;
        }
        zzzfVar.q.getClass();
        if (zzzfVar.g && (context2 = this.d) != null) {
            String str3 = zzfj.f7405a;
            DisplayManager displayManager = (DisplayManager) context2.getSystemService("display");
            if (displayManager != null) {
                display = displayManager.getDisplay(0);
            } else {
                display = null;
            }
            if (display == null) {
                WindowManager windowManager = (WindowManager) context2.getSystemService("window");
                windowManager.getClass();
                display = windowManager.getDefaultDisplay();
            }
            if (display.getDisplayId() == 0 && zzfj.h(context2)) {
                if (Build.VERSION.SDK_INT < 28) {
                    l = zzfj.l("sys.display-size");
                } else {
                    l = zzfj.l("vendor.display-size");
                }
                if (!TextUtils.isEmpty(l)) {
                    try {
                        i2 = 0;
                        try {
                            String[] split2 = l.trim().split("x", -1);
                            if (split2.length == 2) {
                                int parseInt = Integer.parseInt(split2[0]);
                                int parseInt2 = Integer.parseInt(split2[1]);
                                if (parseInt > 0 && parseInt2 > 0) {
                                    point = new Point(parseInt, parseInt2);
                                }
                            }
                        } catch (NumberFormatException unused) {
                        }
                    } catch (NumberFormatException unused2) {
                        i2 = 0;
                    }
                    zzee.e("Util", "Invalid display size: ".concat(String.valueOf(l)));
                } else {
                    i2 = 0;
                }
                if ("Sony".equals(Build.MANUFACTURER) && Build.MODEL.startsWith("BRAVIA") && context2.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                    point2 = new Point(3840, 2160);
                    point = point2;
                }
            } else {
                i2 = 0;
            }
            point2 = new Point();
            Display.Mode mode = display.getMode();
            point2.x = mode.getPhysicalWidth();
            point2.y = mode.getPhysicalHeight();
            point = point2;
        } else {
            i2 = 0;
            point = null;
        }
        Pair m2 = m(2, zzzzVar, iArr4, new zzzl() { // from class: com.google.android.gms.internal.ads.zzzb
            /* JADX WARN: Removed duplicated region for block: B:25:0x0054  */
            /* JADX WARN: Removed duplicated region for block: B:37:0x005f  */
            /* JADX WARN: Type inference failed for: r11v0, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
            @Override // com.google.android.gms.internal.ads.zzzl
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.util.List a(int r17, com.google.android.gms.internal.ads.zzbg r18, int[] r19) {
                /*
                    Method dump skipped, instructions count: 194
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzzb.a(int, com.google.android.gms.internal.ads.zzbg, int[]):java.util.List");
            }
        }, zzyv.f9397c);
        int i7 = 4;
        if (m2 == null) {
            pair = m(4, zzzzVar, iArr4, new zzzl() { // from class: com.google.android.gms.internal.ads.zzyy
                /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
                @Override // com.google.android.gms.internal.ads.zzzl
                public final List a(int i8, zzbg zzbgVar, int[] iArr5) {
                    zzgux zzguxVar = zzzu.k;
                    zzgvs zzgvsVar = zzgtd.f;
                    ?? zzgsxVar = new zzgsx(4);
                    for (int i9 = 0; i9 < zzbgVar.f4645a; i9++) {
                        zzgsxVar.c(new zzzc(i8, zzbgVar, i9, zzzf.this, iArr5[i9]));
                    }
                    return zzgsxVar.f();
                }
            }, zzyt.f9395c);
        } else {
            pair = null;
        }
        if (pair != null) {
            zzzvVarArr[((Integer) pair.second).intValue()] = (zzzv) pair.first;
        } else if (m2 != null) {
            zzzvVarArr[((Integer) m2.second).intValue()] = (zzzv) m2.first;
        }
        if (!zzzfVar.t || (context = this.d) == null || (captioningManager = (CaptioningManager) context.getSystemService("captioning")) == null || !captioningManager.isEnabled() || (locale = captioningManager.getLocale()) == null) {
            str2 = null;
        } else {
            String str4 = zzfj.f7405a;
            str2 = locale.toLanguageTag();
        }
        int i8 = 3;
        Pair m3 = m(3, zzzzVar, iArr4, new zzzl() { // from class: com.google.android.gms.internal.ads.zzyx
            /* JADX WARN: Type inference failed for: r0v2, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
            @Override // com.google.android.gms.internal.ads.zzzl
            public final List a(int i9, zzbg zzbgVar, int[] iArr5) {
                zzgux zzguxVar = zzzu.k;
                zzgvs zzgvsVar = zzgtd.f;
                ?? zzgsxVar = new zzgsx(4);
                for (int i10 = 0; i10 < zzbgVar.f4645a; i10++) {
                    zzgsxVar.c(new zzzk(i9, zzbgVar, i10, zzzf.this, iArr5[i10], str, str2));
                }
                return zzgsxVar.f();
            }
        }, zzyu.f9396c);
        if (m3 != null) {
            zzzvVarArr[((Integer) m3.second).intValue()] = (zzzv) m3.first;
        }
        int i9 = i2;
        while (i9 < i5) {
            int i10 = zzzzVar.f9423a[i9];
            if (i10 != i5 && i10 != i && i10 != i8 && i10 != i7) {
                zzyh zzyhVar = zzzzVar.b[i9];
                int[][] iArr5 = iArr4[i9];
                int i11 = i2;
                int i12 = i11;
                zzbg zzbgVar = null;
                zzzd zzzdVar = null;
                while (i11 < zzyhVar.f9388a) {
                    zzbg a2 = zzyhVar.a(i11);
                    int[] iArr6 = iArr5[i11];
                    int i13 = i2;
                    zzzd zzzdVar2 = zzzdVar;
                    while (i13 < a2.f4645a) {
                        if (a.n(iArr6[i13], zzzfVar.B)) {
                            zzzd zzzdVar3 = new zzzd(a2.d[i13], iArr6[i13]);
                            if (zzzdVar2 != null) {
                                i4 = i9;
                                if (zzgsq.f8237a.d(zzzdVar3.f, zzzdVar2.f).d(zzzdVar3.f9409c, zzzdVar2.f9409c).e() <= 0) {
                                }
                            } else {
                                i4 = i9;
                            }
                            zzbgVar = a2;
                            zzzdVar2 = zzzdVar3;
                            i12 = i13;
                        } else {
                            i4 = i9;
                        }
                        i13++;
                        i9 = i4;
                    }
                    i11++;
                    zzzdVar = zzzdVar2;
                }
                i3 = i9;
                if (zzbgVar == null) {
                    zzzvVar = null;
                } else {
                    zzzvVar = new zzzv(zzbgVar, new int[]{i12});
                }
                zzzvVarArr[i3] = zzzvVar;
            } else {
                i3 = i9;
            }
            i9 = i3 + 1;
            iArr4 = iArr;
            i5 = 2;
            i7 = 4;
            i8 = 3;
            i = 1;
        }
        Object obj2 = null;
        HashMap hashMap = new HashMap();
        for (int i14 = i2; i14 < 2; i14++) {
            zzyh zzyhVar2 = zzzzVar.b[i14];
            for (int i15 = i2; i15 < zzyhVar2.f9388a; i15++) {
                if (((zzbh) zzzfVar.u.get(zzyhVar2.a(i15))) != null) {
                    throw null;
                }
            }
        }
        zzyh zzyhVar3 = zzzzVar.d;
        for (int i16 = i2; i16 < zzyhVar3.f9388a; i16++) {
            if (((zzbh) zzzfVar.u.get(zzyhVar3.a(i16))) != null) {
                throw null;
            }
        }
        int i17 = i2;
        while (true) {
            int i18 = 2;
            if (i17 < 2) {
                if (((zzbh) hashMap.get(Integer.valueOf(zzzzVar.f9423a[i17]))) == null) {
                    i17++;
                } else {
                    throw null;
                }
            } else {
                int i19 = i2;
                while (i19 < i18) {
                    zzyh zzyhVar4 = zzzzVar.b[i19];
                    Map map = (Map) zzzfVar.D.get(i19);
                    if (map != null && map.containsKey(zzyhVar4)) {
                        Map map2 = (Map) zzzfVar.D.get(i19);
                        if (map2 != null) {
                            zzzgVar = (zzzg) map2.get(zzyhVar4);
                        } else {
                            zzzgVar = null;
                        }
                        if (zzzgVar == null) {
                            zzzvVarArr[i19] = null;
                        } else {
                            throw null;
                        }
                    }
                    i19++;
                    i18 = 2;
                }
                int i20 = i2;
                while (i20 < i18) {
                    int i21 = zzzzVar.f9423a[i20];
                    if (zzzfVar.E.get(i20) || zzzfVar.v.contains(Integer.valueOf(i21))) {
                        zzzvVarArr[i20] = null;
                    }
                    i20++;
                    i18 = 2;
                }
                zzyn zzynVar2 = this.j;
                this.b.getClass();
                ArrayList arrayList = new ArrayList();
                int i22 = i2;
                while (i22 < 2) {
                    zzzv zzzvVar3 = zzzvVarArr[i22];
                    if (zzzvVar3 != null && zzzvVar3.b.length > 1) {
                        zzgvs zzgvsVar = zzgtd.f;
                        zzgsx zzgsxVar = new zzgsx(4);
                        zzgsxVar.c(new zzym(0L, 0L));
                        arrayList.add(zzgsxVar);
                        obj = obj2;
                    } else {
                        obj = obj2;
                        arrayList.add(obj);
                    }
                    i22++;
                    obj2 = obj;
                }
                int i23 = 2;
                long[][] jArr = new long[2];
                int i24 = i2;
                while (true) {
                    j = -1;
                    if (i24 >= i23) {
                        break;
                    }
                    zzzv zzzvVar4 = zzzvVarArr[i24];
                    if (zzzvVar4 == null) {
                        jArr[i24] = new long[i2];
                    } else {
                        int[] iArr7 = zzzvVar4.b;
                        jArr[i24] = new long[iArr7.length];
                        for (int i25 = 0; i25 < iArr7.length; i25++) {
                            long j4 = zzzvVar4.f9421a.d[iArr7[i25]].i;
                            long[] jArr2 = jArr[i24];
                            if (j4 == -1) {
                                j4 = 0;
                            }
                            jArr2[i25] = j4;
                        }
                        Arrays.sort(jArr[i24]);
                    }
                    i24++;
                    i23 = 2;
                    i2 = 0;
                }
                int[] iArr8 = new int[i23];
                long[] jArr3 = new long[i23];
                int i26 = 0;
                while (i26 < i23) {
                    long[] jArr4 = jArr[i26];
                    if (jArr4.length == 0) {
                        j3 = 0;
                    } else {
                        j3 = jArr4[0];
                    }
                    jArr3[i26] = j3;
                    i26++;
                    i23 = 2;
                }
                zzyo.a(arrayList, jArr3);
                zzgut zzgutVar = new zzgut(new zzgun().a(), new Object());
                int i27 = 0;
                while (i27 < 2) {
                    int length2 = jArr[i27].length;
                    if (length2 <= 1) {
                        j2 = j;
                        zzynVar = zzynVar2;
                    } else {
                        double[] dArr = new double[length2];
                        j2 = j;
                        int i28 = 0;
                        while (true) {
                            long[] jArr5 = jArr[i27];
                            double d2 = 0.0d;
                            if (i28 >= jArr5.length) {
                                break;
                            }
                            zzyn zzynVar3 = zzynVar2;
                            long j5 = jArr5[i28];
                            if (j5 != j2) {
                                d2 = Math.log(j5);
                            }
                            dArr[i28] = d2;
                            i28++;
                            zzynVar2 = zzynVar3;
                        }
                        zzynVar = zzynVar2;
                        int i29 = length2 - 1;
                        double d3 = dArr[i29] - dArr[0];
                        int i30 = 0;
                        while (i30 < i29) {
                            double d4 = dArr[i30];
                            i30++;
                            double d5 = d4 + dArr[i30];
                            if (d3 == 0.0d) {
                                d = 1.0d;
                            } else {
                                d = ((d5 * 0.5d) - dArr[0]) / d3;
                            }
                            Double valueOf = Double.valueOf(d);
                            double d6 = d3;
                            Integer valueOf2 = Integer.valueOf(i27);
                            Map map3 = zzgutVar.h;
                            int i31 = i27;
                            Collection collection = (Collection) map3.get(valueOf);
                            if (collection == null) {
                                Collection e = zzgutVar.e();
                                if (e.add(valueOf2)) {
                                    zzgutVar.i++;
                                    map3.put(valueOf, e);
                                } else {
                                    throw new AssertionError("New Collection violated the Collection spec");
                                }
                            } else if (collection.add(valueOf2)) {
                                zzgutVar.i++;
                            }
                            d3 = d6;
                            i27 = i31;
                        }
                    }
                    i27++;
                    zzynVar2 = zzynVar;
                    j = j2;
                }
                zzyn zzynVar4 = zzynVar2;
                Collection collection2 = zzgutVar.f;
                if (collection2 == null) {
                    collection2 = new zzgrv(zzgutVar);
                    zzgutVar.f = collection2;
                }
                zzgtd v = zzgtd.v(collection2);
                for (int i32 = 0; i32 < v.size(); i32++) {
                    int intValue = ((Integer) v.get(i32)).intValue();
                    int i33 = iArr8[intValue] + 1;
                    iArr8[intValue] = i33;
                    jArr3[intValue] = jArr[intValue][i33];
                    zzyo.a(arrayList, jArr3);
                }
                for (int i34 = 0; i34 < 2; i34++) {
                    if (arrayList.get(i34) != null) {
                        long j6 = jArr3[i34];
                        jArr3[i34] = j6 + j6;
                    }
                }
                zzyo.a(arrayList, jArr3);
                ?? zzgsxVar2 = new zzgsx(4);
                for (int i35 = 0; i35 < arrayList.size(); i35++) {
                    zzgta zzgtaVar = (zzgta) arrayList.get(i35);
                    if (zzgtaVar == null) {
                        f = zzguy.i;
                    } else {
                        f = zzgtaVar.f();
                    }
                    zzgsxVar2.c(f);
                }
                zzgtd f2 = zzgsxVar2.f();
                int i36 = 2;
                zzzw[] zzzwVarArr = new zzzw[2];
                int i37 = 0;
                while (i37 < i36) {
                    zzzv zzzvVar5 = zzzvVarArr[i37];
                    if (zzzvVar5 != null && (length = (iArr3 = zzzvVar5.b).length) != 0) {
                        if (length == 1) {
                            zzyqVar = new zzyq(zzzvVar5.f9421a, new int[]{iArr3[0]});
                        } else {
                            zzbg zzbgVar2 = zzzvVar5.f9421a;
                            zzgtd zzgtdVar = (zzgtd) ((zzguy) f2).get(i37);
                            zzynVar4.getClass();
                            zzyq zzyqVar2 = new zzyq(zzbgVar2, iArr3);
                            zzgtd.v(zzgtdVar);
                            zzyqVar = zzyqVar2;
                        }
                        zzzwVarArr[i37] = zzyqVar;
                    }
                    i37++;
                    i36 = 2;
                }
                zzml[] zzmlVarArr = new zzml[i36];
                for (int i38 = 0; i38 < i36; i38++) {
                    int i39 = zzzzVar.f9423a[i38];
                    if (zzzfVar.E.get(i38) || zzzfVar.v.contains(Integer.valueOf(i39)) || (zzzzVar.f9423a[i38] != -2 && zzzwVarArr[i38] == null)) {
                        zzmlVar = null;
                    } else {
                        zzmlVar = zzml.f9117a;
                    }
                    zzmlVarArr[i38] = zzmlVar;
                }
                return Pair.create(zzmlVarArr, zzzwVarArr);
            }
        }
    }

    public final void h(zzze zzzeVar) {
        boolean equals;
        zzzf zzzfVar = new zzzf(zzzeVar);
        synchronized (this.f9420c) {
            equals = this.e.equals(zzzfVar);
            this.e = zzzfVar;
        }
        if (!equals) {
            if (zzzfVar.A && this.d == null) {
                zzee.c("DefaultTrackSelector", "Audio channel count constraints cannot be applied without reference to Context. Build the track selector instance with one of the non-deprecated constructors that take a Context argument.");
            }
            zzaac zzaacVar = this.f3843a;
            if (zzaacVar != null) {
                ((zzlc) zzaacVar).l.e(10);
            }
        }
    }

    public final void l() {
        boolean z;
        zzaac zzaacVar;
        zzzj zzzjVar;
        synchronized (this.f9420c) {
            try {
                z = false;
                if (this.e.A && Build.VERSION.SDK_INT >= 32 && (zzzjVar = this.g) != null && zzzjVar.b) {
                    z = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z && (zzaacVar = this.f3843a) != null) {
            ((zzlc) zzaacVar).l.e(10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmj
    public final void zza() {
        synchronized (this.f9420c) {
            this.e.getClass();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaad
    public final void b() {
    }
}
