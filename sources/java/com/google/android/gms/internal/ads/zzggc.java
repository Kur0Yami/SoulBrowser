package com.google.android.gms.internal.ads;

import android.util.DisplayMetrics;
import android.view.MotionEvent;
import com.google.android.gms.ads.RequestConfiguration;
import java.lang.reflect.Method;
import java.util.Map;

/* loaded from: classes.dex */
final class zzggc extends zzgfz {
    public final Map f;
    public final zzgev g;
    public final DisplayMetrics h;

    public zzggc(zzavs zzavsVar, zzgev zzgevVar, Map map, DisplayMetrics displayMetrics, zzgnc zzgncVar) {
        super("TVhQaRYX1XJdJjovebNLV6RZa+CHXoXNSDwsvD2M+2M/jcZaYqephUke/9lWGtpK", "6PtDO9Iljdiz/XZTZ5iBSB6rGbi6sfeQlXfzSke6Ktw=", zzavsVar, zzgevVar, zzgncVar.a(123));
        this.g = zzgevVar;
        this.f = map;
        this.h = displayMetrics;
    }

    @Override // com.google.android.gms.internal.ads.zzgfz
    public final void a(Method method, zzavs zzavsVar) {
        boolean z;
        boolean z2;
        int i;
        int i2;
        Map map = this.f;
        Object obj = (MotionEvent) map.get("nv");
        DisplayMetrics displayMetrics = this.h;
        Object[] objArr = (Object[]) method.invoke(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, obj, displayMetrics);
        objArr.getClass();
        zzawl D = zzawm.D();
        Object obj2 = objArr[0];
        if (obj2 != null && objArr[1] != null) {
            long longValue = ((Long) obj2).longValue();
            D.k();
            ((zzawm) D.f).E(longValue);
            long longValue2 = ((Long) objArr[1]).longValue();
            D.k();
            ((zzawm) D.f).F(longValue2);
        }
        Object obj3 = objArr[2];
        if (obj3 != null) {
            long longValue3 = ((Long) obj3).longValue();
            D.k();
            ((zzawm) D.f).L(longValue3);
        }
        Object obj4 = objArr[3];
        if (obj4 != null) {
            long longValue4 = ((Long) obj4).longValue();
            D.k();
            ((zzawm) D.f).J(longValue4);
        }
        Object obj5 = objArr[4];
        if (obj5 != null) {
            long longValue5 = ((Long) obj5).longValue();
            D.k();
            ((zzawm) D.f).G(longValue5);
        }
        Object obj6 = objArr[5];
        if (obj6 != null) {
            if (((Long) obj6).longValue() != 0) {
                i2 = 2;
            } else {
                i2 = 1;
            }
            D.k();
            ((zzawm) D.f).W(i2);
        }
        Object obj7 = objArr[6];
        if (obj7 != null) {
            long longValue6 = ((Long) obj7).longValue();
            D.k();
            ((zzawm) D.f).N(longValue6);
        }
        Object obj8 = objArr[7];
        if (obj8 != null) {
            long longValue7 = ((Long) obj8).longValue();
            D.k();
            ((zzawm) D.f).M(longValue7);
        }
        Object obj9 = objArr[8];
        if (obj9 != null) {
            if (((Long) obj9).longValue() != 0) {
                i = 2;
            } else {
                i = 1;
            }
            D.k();
            ((zzawm) D.f).X(i);
        }
        synchronized (zzavsVar) {
            try {
                Method b = this.g.b("o3UXVie8/suJOQmyOLMVpxbmPmxGzwCoQMAjB1gTC92yDn7FjyneAFFenBlXs1/s", "Pvu/YKY6AN7DXo4Zzc6oTKshDXcTgIHi2A4rOK2JeRs=");
                if (b != null) {
                    Object[] objArr2 = (Object[]) b.invoke(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, (MotionEvent) map.get("nv"), displayMetrics);
                    if (objArr2 != null) {
                        Object obj10 = objArr2[0];
                        if (obj10 != null) {
                            long longValue8 = ((Long) obj10).longValue();
                            zzavsVar.k();
                            ((zzawp) zzavsVar.f).O0(longValue8);
                        }
                        Object obj11 = objArr2[1];
                        if (obj11 != null) {
                            long longValue9 = ((Long) obj11).longValue();
                            zzavsVar.k();
                            ((zzawp) zzavsVar.f).P0(longValue9);
                        }
                        Object obj12 = objArr2[2];
                        if (obj12 != null) {
                            long longValue10 = ((Long) obj12).longValue();
                            zzavsVar.k();
                            ((zzawp) zzavsVar.f).Q0(longValue10);
                        }
                        Object obj13 = objArr2[3];
                        if (obj13 != null) {
                            long longValue11 = ((Long) obj13).longValue();
                            zzavsVar.k();
                            ((zzawp) zzavsVar.f).J(longValue11);
                        }
                        Object obj14 = objArr2[4];
                        if (obj14 != null) {
                            long longValue12 = ((Long) obj14).longValue();
                            zzavsVar.k();
                            ((zzawp) zzavsVar.f).K(longValue12);
                        }
                        zzgdp zzgdpVar = (zzgdp) map.get("oe");
                        if (zzgdpVar != null) {
                            long j = zzgdpVar.f7852a;
                            if (j > 0) {
                                zzavsVar.k();
                                ((zzawp) zzavsVar.f).N(j);
                            }
                            long j2 = zzgdpVar.b;
                            if (j2 > 0) {
                                zzavsVar.k();
                                ((zzawp) zzavsVar.f).M(j2);
                            }
                            long j3 = zzgdpVar.f7853c;
                            if (j3 > 0) {
                                zzavsVar.k();
                                ((zzawp) zzavsVar.f).L(j3);
                            }
                            long j4 = zzgdpVar.d;
                            if (j4 > 0) {
                                zzavsVar.k();
                                ((zzawp) zzavsVar.f).O(j4);
                            }
                        }
                        zzgdp zzgdpVar2 = (zzgdp) map.get("oe");
                        if (zzgdpVar2 != null && zzgdpVar2.f7852a != 0) {
                            if (displayMetrics != null && displayMetrics.density != 0.0f) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (z) {
                                double d = zzgdpVar2.g;
                                if (displayMetrics != null) {
                                    long round = Math.round(d / displayMetrics.density);
                                    D.k();
                                    ((zzawm) D.f).P(round);
                                    long round2 = Math.round((zzgdpVar2.j - zzgdpVar2.h) / displayMetrics.density);
                                    D.k();
                                    ((zzawm) D.f).Q(round2);
                                    long round3 = Math.round((zzgdpVar2.k - zzgdpVar2.i) / displayMetrics.density);
                                    D.k();
                                    ((zzawm) D.f).R(round3);
                                    long round4 = Math.round(zzgdpVar2.h / displayMetrics.density);
                                    D.k();
                                    ((zzawm) D.f).U(round4);
                                    long round5 = Math.round(zzgdpVar2.i / displayMetrics.density);
                                    D.k();
                                    ((zzawm) D.f).V(round5);
                                    if (((MotionEvent) map.get("nv")) != null) {
                                        long round6 = Math.round((((zzgdpVar2.h - zzgdpVar2.j) + r6.getRawX()) - r6.getX()) / displayMetrics.density);
                                        if (round6 != 0) {
                                            D.k();
                                            ((zzawm) D.f).S(round6);
                                        }
                                        long round7 = Math.round((((zzgdpVar2.i - zzgdpVar2.k) + r6.getRawY()) - r6.getY()) / displayMetrics.density);
                                        if (round7 != 0) {
                                            D.k();
                                            ((zzawm) D.f).T(round7);
                                        }
                                    }
                                } else {
                                    throw null;
                                }
                            }
                        }
                        zzavsVar.k();
                        ((zzawp) zzavsVar.f).W((zzawm) D.m());
                        zzgdq[] zzgdqVarArr = (zzgdq[]) map.get("ro");
                        if (zzgdqVarArr != null) {
                            if (displayMetrics != null && displayMetrics.density != 0.0f) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                for (int i3 = 0; i3 <= zzgdqVarArr.length - 2; i3++) {
                                    zzgdq zzgdqVar = zzgdqVarArr[i3];
                                    zzawl D2 = zzawm.D();
                                    double d2 = zzgdqVar.f7854a;
                                    if (displayMetrics != null) {
                                        long round8 = Math.round(d2 / displayMetrics.density);
                                        D2.k();
                                        ((zzawm) D2.f).E(round8);
                                        long round9 = Math.round(zzgdqVar.b / displayMetrics.density);
                                        D2.k();
                                        ((zzawm) D2.f).F(round9);
                                        zzawm zzawmVar = (zzawm) D2.m();
                                        zzavsVar.k();
                                        ((zzawp) zzavsVar.f).X(zzawmVar);
                                    } else {
                                        throw null;
                                    }
                                }
                            }
                        }
                    } else {
                        throw null;
                    }
                } else {
                    throw null;
                }
            } finally {
            }
        }
    }
}
