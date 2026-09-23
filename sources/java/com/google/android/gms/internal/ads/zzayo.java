package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.net.NetworkCapabilities;
import android.os.Build;
import android.os.SystemClock;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class zzayo extends zzaym {
    public static final Object C = new Object();
    public static boolean D = false;
    public static long E;
    public static zzayw F;
    public static zzbac G;
    public static zzazu H;
    public static zzaxn I;
    public static zzayt J;
    public zzbaa A;
    public final HashMap B;
    public final zzayn z;

    public zzayo(Context context, zzayn zzaynVar) {
        super(context);
        this.B = new HashMap();
        this.z = zzaynVar;
    }

    public static zzazt h(Context context, boolean z) {
        if (zzaym.y == null) {
            synchronized (C) {
                try {
                    if (zzaym.y == null) {
                        zzazt a2 = zzazt.a(context, z, J);
                        if (a2.n) {
                            try {
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.d4)).booleanValue()) {
                                    a2.c("hTLiiIA7LJpRCIVGwbLw56sBtWYdpFA3KN/lVIAoqlyIo4UMQoQK3mH52LWi8hnG", "S64wW/9/kcrI6i+T76YThiZ/p514KjvGlvxi0Ei4eDg=", new Class[0]);
                                }
                            } catch (IllegalStateException unused) {
                            }
                            a2.c("Fl0NzymWHJhyDpr9GrhyVi62KX+d2kj13lp1AwiYQHKKCKe1X2FxmeM5KLeNR5D2", "WhU/3eeIEz43+QqYTIKNH8p88w1+Uh4fQMNHsNTU34U=", Context.class);
                            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.l4)).booleanValue()) {
                                a2.c("gyMGe4SoPVIhBgFM+VlZQFWek2IoqCotue6ayBNgVb95WbB68suDu+Zv4jWiM6iG", "etp1batKULd2kwg+5GPfxliTu8RjfdN0zKvZOjQe8mU=", new Class[0]);
                            }
                            a2.c("yCCrg1bENISzqqs7fgrfIgqRoB89Hc58RpoZe38mDWknXggRGBdzPAEdsprm/nAh", "ygsxUks9qSJOiPMXEo9qlLCVVsFNNRfyc6WjXaB0M8U=", Context.class);
                            a2.c("JC98YOkW1OV00In88Kxh39aoA4/Lc5LugpNahl16Tw21h78xPzCO3AkqsFSMWF+O", "uHu4aeoXgHtmEAr/p8TbphROLjKobmRTgSnNeTPf/24=", Context.class);
                            a2.c("0k0HoJtCvAtrnTz0UbiSqrs0BGKzSTMoo+ZxCfyJrLcMn8tbsvf/NG2/ui2bKbWP", "z6GzXqyR8kvBYJKVLhMc9mqmsbq6ZkNeWqgTkONnpqg=", Context.class);
                            a2.c("01PVhP+doaGKdC1W6GrY+2IWUVFKtg3RWpQDin/wN/cS8wkuezVXqSDwZNREySxt", "hY1jxg+6DUCngCe0vbxb4cMsyHNENce67SGKWd6hzv8=", Context.class);
                            Class cls = Boolean.TYPE;
                            a2.c("8W5EiIZWvw8ca0gdEf2baMelwD0v1LgWFEv6AqIRDGIzRlZJKgzzVYcusXATxgKN", "ZXwHOojdfPkjtU4/T1kRX8Zucxdzz/LL+/XimOcPDrc=", Context.class, cls);
                            a2.c("f5uC0Q5BJBhs1YfPGy7Wx7MnBjWVUX5JNaW+Lz6dfUOfz0sIXH0KubqvIhiUByWt", "klWlopX/vpRWeyQx7GUjF52wT93EUJwbeMp05ev02yc=", Context.class);
                            a2.c("Ps5Xy95qN5Bq7sgqC6/M4zZXLDS2M1Isx7H/g2/CV37zoy2ILxNb7iAARKvnhAcR", "UDDHIUrqun7cz3t6d4j2iVVfWcHKtBQnSOoDChOFM5Y=", Context.class);
                            a2.c("6ZjnfgvB9wgS+Y8hZDivPhgjxRZbCY4q7zFEc6BukViF66w3fH7pDgMpCmaLCsbG", "yV5Ezpu/FJ5eBLvg/Gvr42qBX8KcXLyHBG0rFZzzuBY=", MotionEvent.class, DisplayMetrics.class);
                            a2.c("0F2tRPtJ+oackwCEaR1ilzSWBDq3birdEdy954kTVJ/3hlaiiP5kh1SmVilvcwVI", "bSUQaKDGEujzsstvFAmuaLuv9mtefCQQKWZn9uZj/LI=", MotionEvent.class, DisplayMetrics.class);
                            a2.c("6Tbgi6IQESKZikJOpZcClcVJxza1rhAf3nfasZu/vDcTd3loITpTNbH23xjyLA5L", "g107GCb4k6+PXON8scRHoxvRnyAK9ZOpFHjKTWKkbXc=", new Class[0]);
                            a2.c("VYNLVwJcUVwKHNYqtTAMU2Cbdf8xQvz3Fr3MGMTI+Feinwv11ysZpnAq/2AMk2I1", "XCAdtiyR5t8AMQ7u4CMXLD5NJ9dD+Tw+KRPDn9OS+vQ=", new Class[0]);
                            a2.c("MMDDWI2IGLmF5pG/RRqJJZVb/JAirVaBalbjWCkub0DwWmFp7b+bfaTjmPK9uiWU", "m1dpreCDNlkoMOYdr+vmzaz+jSmUZiIrETih78jZTqg=", new Class[0]);
                            a2.c("N+SNt584k90MWn4aBLIhSutg85cYgcNyu+q+5WGRUo/oWkmPivq/1xlEIBG+GcFK", "VOVDFi9LxFQe2QWzKEnmStNUha/UwjqmQV12jeIMYds=", new Class[0]);
                            a2.c("b8WdxwEW5LYMXGC6g6q07uNIFUV3fs77AEo1YVb/4q/M8KyV69so1cxJ+MsKyWwh", "kazSW9iygMpHEkKh5zVqXBXYRU+noi3Tzu4hpFfxZG4=", new Class[0]);
                            a2.c("cOth2BAAthu6X8KDmzC58653OwqftcurhEiV9l+3uxMh7KBnOgbdhGM0zSnSPufi", "2EDSTVCwfkpT+1duJ+umEyNIZ3jEP0NWyK78oeLPLhI=", new Class[0]);
                            a2.c("yYlfo3JOLIfvdgBq3U3deu0pC6YiXdEdqGnVULE/KCllAkaO/XSsVQU+sKDN/uG0", "5ZNtOO3srzHnbl5PLlxEIuHlg0l+6HDun864hT7P5ko=", Context.class, cls, String.class);
                            a2.c("ffEAQyBH71yR4B2obQT/Qgb3Fo0ajWwFYmmZt2nfIS2fjNh6ir76IWAmhSUkzxpD", "s+erUKEK0AKg0XrZCH85OEIt0v0u2CGPZAaj/S6Q0Yk=", StackTraceElement[].class);
                            a2.c("UGogIgDf9q+IGA3QKHqW/91b9ZzRTVJqtfmUoLBkD310fwrDg1hJZvDQk8/WK1MH", "sEqRe1gPhw/PwjhUj/qVAEUjKSVJDrXHsmrE44pcjTE=", View.class, DisplayMetrics.class, cls, cls);
                            a2.c("i1MP+hbN0GtKV+UrtunReVDE3xh08srd5laBoZPswSp8P1i6BkpyGoiKZr6P+aBQ", "NQ1lo07HyX6R6o9xhF+JysjB/gJoli3QRzxLpFE7RH8=", Context.class, cls);
                            a2.c("YJMz4lZ/SFOXN6kW19UKnvAqcLtndNv4f6er9d24/5MuXcrsMTIC+9Jfbhpe2HMW", "6iuDHA2XEqaGCIdpenyLvoYWzHjKpoW5EjYN40bz5Cs=", View.class, Activity.class, cls);
                            a2.c("7i2iPrjrwVOXQymI9kbzBw+Saen0JiBKsL25H084g9vqkkZvrS3PC/gXCAaliMdd", "jjLuguQ1TtUBIYvLkWHGRHLEQB49t1f8VaYjdD5pX6Q=", Long.TYPE);
                            a2.c("zPJzhz1QtGvdwoq8b/etTeYWv9LDeLRPadnOSNl7lohby1/0Z3YfZB4nvs0ev2QM", "fVJK5Q/FtQnQT4sQUZztmOn3k4N5bqyd4pz/QTy2bEo=", new Class[0]);
                            try {
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.g4)).booleanValue()) {
                                    a2.c("ExKA4wjDRRYdztAsabUEoV5NOADo4vSkAwQNa4IGw0yLC0NQlDOhDdBTfDT5YHOb", "1Gz3ZRhjJNvXJ0g284S9b/dpVAajMMfg8CE3pBcFNFA=", Context.class);
                                }
                            } catch (IllegalStateException unused2) {
                            }
                            a2.c("71OvRH8RKLL5CGPm3dKOf5cGs3Y2jxvT4WismqAQzm1qJBvyLIz7vuBnvO3+wiyt", "6gmo4xnyZNalDG+/4eFYRg3H75rhcg0JPASG/y34gQ8=", Context.class);
                            try {
                                if (Build.VERSION.SDK_INT >= 26) {
                                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h4)).booleanValue()) {
                                        Class cls2 = Long.TYPE;
                                        a2.c("1MiCMWad12oLn5alnMxHwTvbBZm7RpaUcGFZ/LjrpVbPksWcBk53Qc+euKdOo/dG", "/cnUVQvNHFqi3ggOmiA4o/IdQSFHoegJ/H9a2xERT14=", NetworkCapabilities.class, cls2, cls2);
                                    }
                                }
                            } catch (IllegalStateException unused3) {
                            }
                            try {
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z3)).booleanValue()) {
                                    a2.c("sl6J6ogR1CQFBNHXqYqYlsoHhQEQ3GzqykotbgjuxxtAslvwVDD28XhO/FGDcWNY", "etPaLFHhmzrmC9guV7/txSJ19uqkwWx/gSnrE4vBCvs=", List.class);
                                }
                            } catch (IllegalStateException unused4) {
                            }
                            try {
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q3)).booleanValue()) {
                                    Class cls3 = Long.TYPE;
                                    a2.c("OKoG374XK3cB1cjYFPuO/Bg6vy6AufzuCyu4QCURxkWhJwL4+NqQjs8XziSHB+CQ", "PjHrXBXcXoGkJe75zH8RZ0khapXmOV4o2gX+YgkGdus=", cls3, cls3, cls3, cls3);
                                }
                            } catch (IllegalStateException unused5) {
                            }
                            try {
                                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.p3)).booleanValue()) {
                                    a2.c("ykIQv59ak7YBU+e791IU15tGonhZPUUBXST76bDGm7zXSjUSNn9qtHdf61t20THy", "l48tDWlMY/G/BSkitRUvd80RiFbNrk8nR5qlkOsZWs8=", long[].class, Context.class, View.class);
                                }
                            } catch (IllegalStateException unused6) {
                            }
                        }
                        zzaym.y = a2;
                    }
                } finally {
                }
            }
        }
        return zzaym.y;
    }

    public static zzazv i(zzazt zzaztVar, MotionEvent motionEvent, DisplayMetrics displayMetrics) {
        Method d = zzaztVar.d("6ZjnfgvB9wgS+Y8hZDivPhgjxRZbCY4q7zFEc6BukViF66w3fH7pDgMpCmaLCsbG", "yV5Ezpu/FJ5eBLvg/Gvr42qBX8KcXLyHBG0rFZzzuBY=");
        if (d != null && motionEvent != null) {
            try {
            } catch (IllegalAccessException | InvocationTargetException e) {
                e = e;
            }
            try {
                return new zzazv((String) d.invoke(null, motionEvent, displayMetrics));
            } catch (InvocationTargetException e2) {
                e = e2;
                throw new Exception(e);
            }
        }
        throw new Exception();
    }

    public static final void k(List list) {
        ExecutorService executorService;
        if (zzaym.y != null && (executorService = zzaym.y.b) != null && !list.isEmpty()) {
            try {
                executorService.invokeAll(list, ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.l3)).longValue(), TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                char[] cArr = zzazw.f4516a;
                StringWriter stringWriter = new StringWriter();
                e.printStackTrace(new PrintWriter(stringWriter));
                Log.d("zzayo", "class methods got exception: " + stringWriter.toString());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaym
    public final zzavs a(Context context) {
        long j;
        long j2;
        zzbac zzbacVar = G;
        if (zzbacVar != null && zzbacVar.d) {
            zzbacVar.b = System.currentTimeMillis();
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q3)).booleanValue()) {
            zzazu zzazuVar = H;
            zzazuVar.b = zzazuVar.f4512a;
            zzazuVar.f4512a = SystemClock.uptimeMillis();
        }
        zzavs F0 = zzawp.F0();
        zzayn zzaynVar = this.z;
        String str = zzaynVar.b;
        if (!TextUtils.isEmpty(str)) {
            F0.k();
            ((zzawp) F0.f).I0(str);
        }
        zzazt h = h(context, zzaynVar.f4478a);
        if (h.b == null) {
            return F0;
        }
        int e = h.e();
        ArrayList arrayList = new ArrayList();
        if (!h.n) {
            F0.p(PlaybackStateCompat.ACTION_PREPARE);
        } else {
            zzbah zzbahVar = new zzbah(h, F0, e, context, zzaynVar.f4479c, I);
            int i = e;
            arrayList.add(zzbahVar);
            arrayList.add(new zzbak(h, F0, E, i));
            arrayList.add(new zzbau(h, F0, i));
            arrayList.add(new zzbax(h, F0, i, context));
            arrayList.add(new zzbbc(h, F0, i));
            arrayList.add(new zzbag(h, F0, i, context));
            arrayList.add(new zzbai(h, F0, i));
            arrayList.add(new zzbat(h, F0, i));
            arrayList.add(new zzbav(h, F0, i));
            arrayList.add(new zzbaj(h, F0, i));
            arrayList.add(new zzbap(h, F0, i));
            arrayList.add(new zzbbd(h, F0, i));
            arrayList.add(new zzbaf(h, F0, i));
            arrayList.add(new zzbba(h, F0, i));
            arrayList.add(new zzbay(h, F0, i));
            if (Build.VERSION.SDK_INT >= 24) {
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.h4)).booleanValue()) {
                    zzbac zzbacVar2 = G;
                    long j3 = -1;
                    if (zzbacVar2 != null) {
                        if (zzbacVar2.d) {
                            j2 = zzbacVar2.b - zzbacVar2.f4525a;
                        } else {
                            j2 = -1;
                        }
                        long j4 = zzbacVar2.f4526c;
                        zzbacVar2.f4526c = -1L;
                        j3 = j2;
                        j = j4;
                    } else {
                        j = -1;
                    }
                    zzbas zzbasVar = new zzbas(h, F0, i, F, j3, j);
                    i = i;
                    arrayList.add(zzbasVar);
                }
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.g4)).booleanValue()) {
                arrayList.add(new zzbaw(h, F0, i));
            }
            zzbbh zzbbhVar = new zzbbh(h, "71OvRH8RKLL5CGPm3dKOf5cGs3Y2jxvT4WismqAQzm1qJBvyLIz7vuBnvO3+wiyt", "6gmo4xnyZNalDG+/4eFYRg3H75rhcg0JPASG/y34gQ8=", F0, i, 76);
            F0 = F0;
            arrayList.add(zzbbhVar);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.k4)).booleanValue()) {
                arrayList.add(new zzbae(h, F0, i));
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.l4)).booleanValue()) {
                zzbbh zzbbhVar2 = new zzbbh(h, "gyMGe4SoPVIhBgFM+VlZQFWek2IoqCotue6ayBNgVb95WbB68suDu+Zv4jWiM6iG", "etp1batKULd2kwg+5GPfxliTu8RjfdN0zKvZOjQe8mU=", F0, i, 82);
                F0 = F0;
                arrayList.add(zzbbhVar2);
            }
        }
        k(arrayList);
        return F0;
    }

    @Override // com.google.android.gms.internal.ads.zzaym
    public final zzavs b(Context context, View view, Activity activity) {
        zzbac zzbacVar = G;
        if (zzbacVar != null && zzbacVar.d) {
            zzbacVar.b = System.currentTimeMillis();
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q3)).booleanValue()) {
            zzazu zzazuVar = H;
            zzazuVar.h = zzazuVar.g;
            zzazuVar.g = SystemClock.uptimeMillis();
        }
        zzavs F0 = zzawp.F0();
        zzayn zzaynVar = this.z;
        String str = zzaynVar.b;
        if (!TextUtils.isEmpty(str)) {
            F0.k();
            ((zzawp) F0.f).I0(str);
        }
        j(h(context, zzaynVar.f4478a), F0, view, activity, true, context);
        return F0;
    }

    @Override // com.google.android.gms.internal.ads.zzaym
    public final zzavs c(Context context, View view, Activity activity) {
        zzbac zzbacVar = G;
        if (zzbacVar != null && zzbacVar.d) {
            zzbacVar.b = System.currentTimeMillis();
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q3)).booleanValue()) {
            H.a(context, view);
        }
        zzavs F0 = zzawp.F0();
        zzayn zzaynVar = this.z;
        String str = zzaynVar.b;
        F0.k();
        ((zzawp) F0.f).I0(str);
        j(h(context, zzaynVar.f4478a), F0, view, activity, false, context);
        return F0;
    }

    @Override // com.google.android.gms.internal.ads.zzaym
    public final zzazv d(MotionEvent motionEvent) {
        Method d = zzaym.y.d("0F2tRPtJ+oackwCEaR1ilzSWBDq3birdEdy954kTVJ/3hlaiiP5kh1SmVilvcwVI", "bSUQaKDGEujzsstvFAmuaLuv9mtefCQQKWZn9uZj/LI=");
        if (d != null && motionEvent != null) {
            try {
                return new zzazv((String) d.invoke(null, motionEvent, this.w));
            } catch (IllegalAccessException | InvocationTargetException e) {
                throw new Exception(e);
            }
        }
        throw new Exception();
    }

    @Override // com.google.android.gms.internal.ads.zzaym
    public final long e(StackTraceElement[] stackTraceElementArr) {
        Method d = zzaym.y.d("ffEAQyBH71yR4B2obQT/Qgb3Fo0ajWwFYmmZt2nfIS2fjNh6ir76IWAmhSUkzxpD", "s+erUKEK0AKg0XrZCH85OEIt0v0u2CGPZAaj/S6Q0Yk=");
        if (d != null && stackTraceElementArr != null) {
            try {
                return new zzazk((String) d.invoke(null, stackTraceElementArr)).f4499a.longValue();
            } catch (IllegalAccessException | InvocationTargetException e) {
                throw new Exception(e);
            }
        }
        throw new Exception();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v28, types: [java.util.List] */
    public final void j(zzazt zzaztVar, zzavs zzavsVar, View view, Activity activity, boolean z, Context context) {
        Context context2;
        long j;
        long j2;
        MotionEvent motionEvent;
        ArrayList arrayList;
        if (!zzaztVar.n) {
            zzavsVar.p(PlaybackStateCompat.ACTION_PREPARE);
            arrayList = Arrays.asList(new zzbam(zzaztVar, zzavsVar));
        } else {
            synchronized (this) {
                try {
                    try {
                        zzazv i = i(zzaztVar, this.f4477c, this.w);
                        Long l = i.f4514a;
                        if (l != null) {
                            long longValue = l.longValue();
                            zzavsVar.k();
                            ((zzawp) zzavsVar.f).O0(longValue);
                        }
                        Long l2 = i.b;
                        if (l2 != null) {
                            long longValue2 = l2.longValue();
                            zzavsVar.k();
                            ((zzawp) zzavsVar.f).P0(longValue2);
                        }
                        Long l3 = i.f4515c;
                        if (l3 != null) {
                            long longValue3 = l3.longValue();
                            zzavsVar.k();
                            ((zzawp) zzavsVar.f).Q0(longValue3);
                        }
                        if (this.v) {
                            Long l4 = i.d;
                            if (l4 != null) {
                                long longValue4 = l4.longValue();
                                zzavsVar.k();
                                ((zzawp) zzavsVar.f).J(longValue4);
                            }
                            Long l5 = i.e;
                            if (l5 != null) {
                                long longValue5 = l5.longValue();
                                zzavsVar.k();
                                ((zzawp) zzavsVar.f).K(longValue5);
                            }
                        }
                    } catch (zzazj unused) {
                    }
                    zzawl D2 = zzawm.D();
                    if (this.g > 0) {
                        DisplayMetrics displayMetrics = this.w;
                        char[] cArr = zzazw.f4516a;
                        if ((displayMetrics == null || displayMetrics.density == 0.0f) ? false : true) {
                            long b = zzazw.b(this.n, displayMetrics);
                            D2.k();
                            ((zzawm) D2.f).P(b);
                            long b2 = zzazw.b(this.s - this.q, this.w);
                            D2.k();
                            ((zzawm) D2.f).Q(b2);
                            long b3 = zzazw.b(this.t - this.r, this.w);
                            D2.k();
                            ((zzawm) D2.f).R(b3);
                            long b4 = zzazw.b(this.q, this.w);
                            D2.k();
                            ((zzawm) D2.f).U(b4);
                            long b5 = zzazw.b(this.r, this.w);
                            D2.k();
                            ((zzawm) D2.f).V(b5);
                            if (this.v && (motionEvent = this.f4477c) != null) {
                                long b6 = zzazw.b(((this.q - this.s) + motionEvent.getRawX()) - this.f4477c.getX(), this.w);
                                if (b6 != 0) {
                                    D2.k();
                                    ((zzawm) D2.f).S(b6);
                                }
                                long b7 = zzazw.b(((this.r - this.t) + this.f4477c.getRawY()) - this.f4477c.getY(), this.w);
                                if (b7 != 0) {
                                    D2.k();
                                    ((zzawm) D2.f).T(b7);
                                }
                            }
                        }
                    }
                    try {
                        zzazv d = d(this.f4477c);
                        Long l6 = d.f4514a;
                        if (l6 != null) {
                            long longValue6 = l6.longValue();
                            D2.k();
                            ((zzawm) D2.f).E(longValue6);
                        }
                        Long l7 = d.b;
                        if (l7 != null) {
                            long longValue7 = l7.longValue();
                            D2.k();
                            ((zzawm) D2.f).F(longValue7);
                        }
                        long longValue8 = d.f4515c.longValue();
                        D2.k();
                        ((zzawm) D2.f).L(longValue8);
                        if (this.v) {
                            Long l8 = d.e;
                            if (l8 != null) {
                                long longValue9 = l8.longValue();
                                D2.k();
                                ((zzawm) D2.f).G(longValue9);
                            }
                            Long l9 = d.d;
                            if (l9 != null) {
                                long longValue10 = l9.longValue();
                                D2.k();
                                ((zzawm) D2.f).J(longValue10);
                            }
                            Long l10 = d.f;
                            if (l10 != null) {
                                int i2 = l10.longValue() != 0 ? 2 : 1;
                                D2.k();
                                ((zzawm) D2.f).W(i2);
                            }
                            long j3 = this.h;
                            if (j3 > 0) {
                                DisplayMetrics displayMetrics2 = this.w;
                                char[] cArr2 = zzazw.f4516a;
                                Long valueOf = displayMetrics2 != null && (displayMetrics2.density > 0.0f ? 1 : (displayMetrics2.density == 0.0f ? 0 : -1)) != 0 ? Long.valueOf(Math.round(this.m / j3)) : null;
                                if (valueOf != null) {
                                    long longValue11 = valueOf.longValue();
                                    D2.k();
                                    ((zzawm) D2.f).H(longValue11);
                                } else {
                                    D2.k();
                                    ((zzawm) D2.f).I();
                                }
                                long round = Math.round(this.l / this.h);
                                D2.k();
                                ((zzawm) D2.f).K(round);
                            }
                            Long l11 = d.i;
                            if (l11 != null) {
                                long longValue12 = l11.longValue();
                                D2.k();
                                ((zzawm) D2.f).N(longValue12);
                            }
                            Long l12 = d.j;
                            if (l12 != null) {
                                long longValue13 = l12.longValue();
                                D2.k();
                                ((zzawm) D2.f).M(longValue13);
                            }
                            Long l13 = d.k;
                            if (l13 != null) {
                                int i3 = l13.longValue() != 0 ? 2 : 1;
                                D2.k();
                                ((zzawm) D2.f).X(i3);
                            }
                        }
                    } catch (zzazj unused2) {
                    }
                    long j4 = this.k;
                    if (j4 > 0) {
                        D2.k();
                        ((zzawm) D2.f).O(j4);
                    }
                    zzawm zzawmVar = (zzawm) D2.m();
                    zzavsVar.k();
                    ((zzawp) zzavsVar.f).W(zzawmVar);
                    long j5 = this.g;
                    if (j5 > 0) {
                        zzavsVar.k();
                        ((zzawp) zzavsVar.f).N(j5);
                    }
                    long j6 = this.h;
                    if (j6 > 0) {
                        zzavsVar.k();
                        ((zzawp) zzavsVar.f).M(j6);
                    }
                    long j7 = this.i;
                    if (j7 > 0) {
                        zzavsVar.k();
                        ((zzawp) zzavsVar.f).L(j7);
                    }
                    long j8 = this.j;
                    if (j8 > 0) {
                        zzavsVar.k();
                        ((zzawp) zzavsVar.f).O(j8);
                    }
                    try {
                        LinkedList linkedList = this.f;
                        int size = linkedList.size() - 1;
                        if (size > 0) {
                            zzavsVar.k();
                            ((zzawp) zzavsVar.f).Y();
                            for (int i4 = 0; i4 < size; i4++) {
                                zzazv i5 = i(zzaym.y, (MotionEvent) linkedList.get(i4), this.w);
                                zzawl D3 = zzawm.D();
                                long longValue14 = i5.f4514a.longValue();
                                D3.k();
                                ((zzawm) D3.f).E(longValue14);
                                long longValue15 = i5.b.longValue();
                                D3.k();
                                ((zzawm) D3.f).F(longValue15);
                                zzawm zzawmVar2 = (zzawm) D3.m();
                                zzavsVar.k();
                                ((zzawp) zzavsVar.f).X(zzawmVar2);
                            }
                        }
                    } catch (zzazj unused3) {
                        zzavsVar.k();
                        ((zzawp) zzavsVar.f).Y();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            ArrayList arrayList2 = new ArrayList();
            arrayList = arrayList2;
            if (zzaztVar.b != null) {
                int e = zzaztVar.e();
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.y3)).booleanValue()) {
                    context2 = context;
                    arrayList2.add(new zzbah(zzaztVar, zzavsVar, e, context, this.z.f4479c, I));
                    arrayList2.add(new zzbag(zzaztVar, zzavsVar, e, context2));
                    arrayList2.add(new zzbax(zzaztVar, zzavsVar, e, context2));
                    arrayList2.add(new zzbbc(zzaztVar, zzavsVar, e));
                    zzbac zzbacVar = G;
                    if (zzbacVar != null) {
                        long j9 = zzbacVar.d ? zzbacVar.b - zzbacVar.f4525a : -1L;
                        long j10 = zzbacVar.f4526c;
                        zzbacVar.f4526c = -1L;
                        j2 = j9;
                        j = j10;
                    } else {
                        j = -1;
                        j2 = -1;
                    }
                    arrayList2.add(new zzbas(zzaztVar, zzavsVar, e, F, j2, j));
                    arrayList2.add(new zzbaw(zzaztVar, zzavsVar, e));
                } else {
                    context2 = context;
                }
                arrayList2.add(new zzbam(zzaztVar, zzavsVar));
                arrayList2.add(new zzbau(zzaztVar, zzavsVar, e));
                arrayList2.add(new zzbak(zzaztVar, zzavsVar, E, e));
                arrayList2.add(new zzbaj(zzaztVar, zzavsVar, e));
                arrayList2.add(new zzbat(zzaztVar, zzavsVar, e));
                arrayList2.add(new zzbav(zzaztVar, zzavsVar, e));
                arrayList2.add(new zzbap(zzaztVar, zzavsVar, e));
                arrayList2.add(new zzbai(zzaztVar, zzavsVar, e));
                arrayList2.add(new zzbbd(zzaztVar, zzavsVar, e));
                arrayList2.add(new zzbaf(zzaztVar, zzavsVar, e));
                arrayList2.add(new zzbba(zzaztVar, zzavsVar, e));
                arrayList2.add(new zzbaz(zzaztVar, zzavsVar, e, new Throwable().getStackTrace()));
                arrayList2.add(new zzbbe(zzaztVar, zzavsVar, e, view));
                arrayList2.add(new zzbay(zzaztVar, zzavsVar, e));
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.m3)).booleanValue()) {
                    arrayList2.add(new zzbad(zzaztVar, zzavsVar, e, view, activity));
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.k4)).booleanValue()) {
                    arrayList2.add(new zzbae(zzaztVar, zzavsVar, e));
                }
                if (z) {
                    arrayList = arrayList2;
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.o3)).booleanValue()) {
                        arrayList2.add(new zzbbb(zzaztVar, zzavsVar, e, this.A));
                        arrayList = arrayList2;
                    }
                } else {
                    try {
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.p3)).booleanValue()) {
                            arrayList2.add(new zzbao(zzaztVar, zzavsVar, e, this.B, view, context2));
                        }
                    } catch (IllegalStateException unused4) {
                    }
                    try {
                        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.q3)).booleanValue()) {
                            arrayList2.add(new zzban(zzaztVar, zzavsVar, e, H));
                        }
                    } catch (IllegalStateException unused5) {
                    }
                    arrayList = arrayList2;
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z3)).booleanValue()) {
                        arrayList2.add(new zzbar(zzaztVar, zzavsVar, e, this.x));
                        arrayList = arrayList2;
                    }
                }
            }
        }
        k(arrayList);
    }

    @Override // com.google.android.gms.internal.ads.zzaym, com.google.android.gms.internal.ads.zzayl
    public final void zzh(View view) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.o3)).booleanValue()) {
            return;
        }
        if (this.A == null) {
            zzazt zzaztVar = zzaym.y;
            this.A = new zzbaa(zzaztVar.f4510a, zzaztVar.o);
        }
        this.A.a(view);
    }
}
