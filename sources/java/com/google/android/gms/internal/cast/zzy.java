package com.google.android.gms.internal.cast;

import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.MainThread;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@MainThread
/* loaded from: classes.dex */
public final class zzy {

    /* renamed from: a, reason: collision with root package name */
    public final zzj f9879a;
    public final zzax b;

    /* renamed from: c, reason: collision with root package name */
    public final String f9880c;
    public zzaa d;
    public final zzv e = new zzv(this);

    public zzy(zzj zzjVar, zzax zzaxVar, String str) {
        this.f9879a = zzjVar;
        this.b = zzaxVar;
        this.f9880c = str;
    }

    public final void a(zzcs zzcsVar) {
        int i = zzcsVar.e;
        if (i == 2 && this.d != null) {
            c();
        }
        if (i == 2) {
            this.d = new zzaa(this.f9879a, this.f9880c);
        } else {
            this.d = b();
        }
        zzaa zzaaVar = (zzaa) Preconditions.checkNotNull(this.d);
        zzcsVar.d = zzaaVar.h;
        zzaaVar.b.add(zzcsVar);
    }

    public final zzaa b() {
        if (this.d == null) {
            zzaa zzaaVar = new zzaa(this.f9879a, this.f9880c);
            this.d = zzaaVar;
            zzaaVar.b(1);
        }
        return this.d;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:74:0x028c. Please report as an issue. */
    public final void c() {
        int i;
        long j;
        int i2;
        int i3;
        int i4;
        long j2;
        zzaa zzaaVar = this.d;
        if (zzaaVar != null) {
            CastSession castSession = zzaaVar.j;
            if (castSession != null) {
                castSession.m = null;
                zzaaVar.j = null;
            }
            long j3 = zzaaVar.i;
            zzqq o = zzqr.o();
            o.c();
            ((zzqr) o.f).q(j3);
            String str = zzaaVar.l;
            if (str != null) {
                o.c();
                ((zzqr) o.f).v(str);
            }
            zzur n = zzus.n();
            if (!TextUtils.isEmpty(zzaaVar.n)) {
                String str2 = zzaaVar.n;
                o.c();
                ((zzqr) o.f).r(str2);
                String str3 = zzaaVar.n;
                n.c();
                ((zzus) n.f).o(str3);
            }
            if (!TextUtils.isEmpty(zzaaVar.o)) {
                String str4 = zzaaVar.o;
                n.c();
                ((zzus) n.f).p(str4);
            }
            if (!TextUtils.isEmpty(zzaaVar.p)) {
                String str5 = zzaaVar.p;
                n.c();
                ((zzus) n.f).q(str5);
            }
            if (!TextUtils.isEmpty(zzaaVar.q)) {
                String str6 = zzaaVar.q;
                n.c();
                ((zzus) n.f).r(str6);
            }
            if (!TextUtils.isEmpty(zzaaVar.r)) {
                String str7 = zzaaVar.r;
                n.c();
                ((zzus) n.f).s(str7);
            }
            if (!TextUtils.isEmpty(zzaaVar.s)) {
                String str8 = zzaaVar.s;
                n.c();
                ((zzus) n.f).t(str8);
            }
            int i5 = zzaaVar.t;
            int i6 = 1;
            int i7 = 4;
            if (i5 != 1) {
                if (i5 != 2) {
                    if (i5 != 3) {
                        if (i5 != 4) {
                            if (i5 != 5) {
                                i = 1;
                            } else {
                                i = 6;
                            }
                        } else {
                            i = 5;
                        }
                    } else {
                        i = 4;
                    }
                } else {
                    i = 3;
                }
            } else {
                i = 2;
            }
            n.c();
            ((zzus) n.f).u(i);
            zzus zzusVar = (zzus) n.e();
            o.c();
            ((zzqr) o.f).B(zzusVar);
            zzqb n2 = zzqc.n();
            String str9 = zzaa.w;
            n2.c();
            ((zzqc) n2.f).p(str9);
            String str10 = zzaaVar.g;
            n2.c();
            ((zzqc) n2.f).o(str10);
            zzqc zzqcVar = (zzqc) n2.e();
            o.c();
            ((zzqr) o.f).z(zzqcVar);
            zzhg zzhgVar = zzaaVar.f9603a;
            zzqy n3 = zzqz.n();
            String str11 = (String) ((zzhi) zzhgVar).zza();
            if (str11 != null) {
                zzro n4 = zzrp.n();
                n4.c();
                ((zzrp) n4.f).o(str11);
                zzrp zzrpVar = (zzrp) n4.e();
                n3.c();
                ((zzqz) n3.f).o(zzrpVar);
            }
            String str12 = zzaaVar.k;
            if (str12 != null) {
                try {
                    String replace = str12.replace("-", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                    j2 = new BigInteger(replace.substring(0, Math.min(16, replace.length())), 16).longValue();
                    j = 0;
                } catch (NumberFormatException e) {
                    Logger logger = zzaa.v;
                    j = 0;
                    Log.w(logger.f3604a, logger.d("receiverSessionId %s is not valid for hash", str12), e);
                    j2 = 0;
                }
                n3.c();
                ((zzqz) n3.f).p(j2);
            } else {
                j = 0;
            }
            List<zzcs> list = zzaaVar.b;
            if (!list.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (zzcs zzcsVar : list) {
                    zzcsVar.getClass();
                    zzqw n5 = zzqx.n();
                    int i8 = zzcsVar.e;
                    n5.c();
                    ((zzqx) n5.f).s(i8);
                    int i9 = (int) (zzcsVar.b - zzcsVar.d);
                    n5.c();
                    ((zzqx) n5.f).r(i9);
                    n5.c();
                    ((zzqx) n5.f).o(i9);
                    Integer num = zzcsVar.f9661a;
                    if (num != null) {
                        int intValue = num.intValue();
                        n5.c();
                        ((zzqx) n5.f).p(intValue);
                    }
                    Boolean bool = zzcsVar.f9662c;
                    if (bool != null) {
                        boolean booleanValue = bool.booleanValue();
                        n5.c();
                        ((zzqx) n5.f).q(booleanValue);
                    }
                    arrayList.add((zzqx) n5.e());
                }
                n3.c();
                ((zzqz) n3.f).q(arrayList);
            }
            List list2 = zzaaVar.f9604c;
            if (!list2.isEmpty()) {
                ArrayList arrayList2 = new ArrayList();
                Iterator it = list2.iterator();
                while (it.hasNext()) {
                    ((zzac) it.next()).getClass();
                    zzrc n6 = zzrd.n();
                    n6.c();
                    ((zzrd) n6.f).o((int) (j - j));
                    n6.c();
                    ((zzrd) n6.f).p(1);
                    arrayList2.add((zzrd) n6.e());
                }
                n3.c();
                ((zzqz) n3.f).s(arrayList2);
            }
            List<zzcq> list3 = zzaaVar.d;
            if (!list3.isEmpty()) {
                ArrayList arrayList3 = new ArrayList();
                for (zzcq zzcqVar : list3) {
                    String str13 = zzcqVar.f9657a;
                    zzqs n7 = zzqt.n();
                    switch (str13.hashCode()) {
                        case -1189611734:
                            if (str13.equals("queueInsert")) {
                                i4 = 13;
                                break;
                            }
                            i4 = i6;
                            break;
                        case -1109843021:
                            if (str13.equals("launch")) {
                                i4 = 22;
                                break;
                            }
                            i4 = i6;
                            break;
                        case -940430091:
                            if (str13.equals("queueRemove")) {
                                i4 = 15;
                                break;
                            }
                            i4 = i6;
                            break;
                        case -936597225:
                            if (str13.equals("queueFetchItems")) {
                                i4 = 19;
                                break;
                            }
                            i4 = i6;
                            break;
                        case -930425472:
                            if (str13.equals("setPlaybackDevices")) {
                                i4 = 23;
                                break;
                            }
                            i4 = i6;
                            break;
                        case -921113364:
                            if (str13.equals("volume-mute")) {
                                i4 = 9;
                                break;
                            }
                            i4 = i6;
                            break;
                        case -900560382:
                            if (str13.equals("skipAd")) {
                                i4 = 21;
                                break;
                            }
                            i4 = i6;
                            break;
                        case -892481550:
                            if (str13.equals("status")) {
                                i4 = 10;
                                break;
                            }
                            i4 = i6;
                            break;
                        case -844665542:
                            if (str13.equals("queueUpdate")) {
                                i4 = 14;
                                break;
                            }
                            i4 = i6;
                            break;
                        case -810883302:
                            if (str13.equals("volume")) {
                                i4 = 7;
                                break;
                            }
                            i4 = i6;
                            break;
                        case -402284771:
                            if (str13.equals("setPlaybackRate")) {
                                i4 = 20;
                                break;
                            }
                            i4 = i6;
                            break;
                        case 3327206:
                            if (str13.equals("load")) {
                                i4 = 2;
                                break;
                            }
                            i4 = i6;
                            break;
                        case 3363353:
                            if (str13.equals("mute")) {
                                i4 = 8;
                                break;
                            }
                            i4 = i6;
                            break;
                        case 3443508:
                            if (str13.equals("play")) {
                                i4 = 3;
                                break;
                            }
                            i4 = i6;
                            break;
                        case 3526264:
                            if (str13.equals("seek")) {
                                i4 = 6;
                                break;
                            }
                            i4 = i6;
                            break;
                        case 3540994:
                            if (str13.equals("stop")) {
                                i4 = 5;
                                break;
                            }
                            i4 = i6;
                            break;
                        case 106440182:
                            if (str13.equals("pause")) {
                                i4 = i7;
                                break;
                            }
                            i4 = i6;
                            break;
                        case 525402049:
                            if (str13.equals("queueFetchItemRange")) {
                                i4 = 18;
                                break;
                            }
                            i4 = i6;
                            break;
                        case 913357482:
                            if (str13.equals("queueReorder")) {
                                i4 = 16;
                                break;
                            }
                            i4 = i6;
                            break;
                        case 1148867366:
                            if (str13.equals("trackStyle")) {
                                i4 = 12;
                                break;
                            }
                            i4 = i6;
                            break;
                        case 1451542318:
                            if (str13.equals("activeTracks")) {
                                i4 = 11;
                                break;
                            }
                            i4 = i6;
                            break;
                        case 1873161788:
                            if (str13.equals("queueFetchItemIds")) {
                                i4 = 17;
                                break;
                            }
                            i4 = i6;
                            break;
                        default:
                            i4 = i6;
                            break;
                    }
                    n7.c();
                    ((zzqt) n7.f).s(i4);
                    int i10 = (int) zzcqVar.b;
                    n7.c();
                    ((zzqt) n7.f).o(i10);
                    int i11 = zzcqVar.f9658c;
                    n7.c();
                    ((zzqt) n7.f).p(i11);
                    int i12 = (int) (zzcqVar.d - zzcqVar.f);
                    n7.c();
                    ((zzqt) n7.f).q(i12);
                    int i13 = (int) (zzcqVar.e - zzcqVar.f);
                    n7.c();
                    ((zzqt) n7.f).r(i13);
                    arrayList3.add((zzqt) n7.e());
                    i6 = 1;
                    i7 = 4;
                }
                n3.c();
                ((zzqz) n3.f).r(arrayList3);
            }
            if (zzaaVar.m != null) {
                ArrayList arrayList4 = new ArrayList();
                zzt zztVar = zzaaVar.m;
                int i14 = zztVar.f9837a;
                zzqu n8 = zzqv.n();
                if (i14 != 1) {
                    if (i14 != 2) {
                        if (i14 != 3) {
                            if (i14 != 4) {
                                i3 = 1;
                            } else {
                                i3 = 5;
                            }
                        } else {
                            i3 = 4;
                        }
                        n8.c();
                        ((zzqv) n8.f).p(i3);
                        int i15 = (int) (zztVar.b - zztVar.f9838c);
                        n8.c();
                        ((zzqv) n8.f).o(i15);
                        arrayList4.add((zzqv) n8.e());
                        n3.c();
                        ((zzqz) n3.f).u(arrayList4);
                    } else {
                        i2 = 3;
                    }
                } else {
                    i2 = 2;
                }
                i3 = i2;
                n8.c();
                ((zzqv) n8.f).p(i3);
                int i152 = (int) (zztVar.b - zztVar.f9838c);
                n8.c();
                ((zzqv) n8.f).o(i152);
                arrayList4.add((zzqv) n8.e());
                n3.c();
                ((zzqz) n3.f).u(arrayList4);
            }
            Map map = zzaaVar.e;
            if (!map.isEmpty()) {
                ArrayList arrayList5 = new ArrayList();
                for (zzae zzaeVar : map.values()) {
                    zzaeVar.getClass();
                    zzra n9 = zzrb.n();
                    int i16 = zzaeVar.e;
                    n9.c();
                    ((zzrb) n9.f).r(i16);
                    int i17 = zzaeVar.d.get();
                    n9.c();
                    ((zzrb) n9.f).o(i17);
                    int i18 = (int) (zzaeVar.f9617a - zzaeVar.f9618c);
                    n9.c();
                    ((zzrb) n9.f).p(i18);
                    int i19 = (int) (zzaeVar.b - zzaeVar.f9618c);
                    n9.c();
                    ((zzrb) n9.f).q(i19);
                    arrayList5.add((zzrb) n9.e());
                }
                n3.c();
                ((zzqz) n3.f).t(arrayList5);
            }
            int i20 = zzaaVar.u;
            n3.c();
            ((zzqz) n3.f).v(i20);
            zzqz zzqzVar = (zzqz) n3.e();
            o.c();
            ((zzqr) o.f).y(zzqzVar);
            zzaaVar.f.b(233, (zzqr) o.e());
            this.d = null;
        }
    }
}
