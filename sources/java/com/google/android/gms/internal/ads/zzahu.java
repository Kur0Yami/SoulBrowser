package com.google.android.gms.internal.ads;

@Deprecated
/* loaded from: classes.dex */
public class zzahu implements zzao {

    /* renamed from: a, reason: collision with root package name */
    public final String f4047a;
    public final String b;

    public zzahu(String str, String str2) {
        this.f4047a = zzgpj.b(str);
        this.b = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzao
    public final void a(zzam zzamVar) {
        Integer f;
        Integer f2;
        Integer f3;
        Integer f4;
        String str = this.f4047a;
        int hashCode = str.hashCode();
        String str2 = this.b;
        switch (hashCode) {
            case -1935137620:
                if (str.equals("TOTALTRACKS") && (f = zzgwx.f(str2)) != null) {
                    zzamVar.i = f;
                    return;
                }
                return;
            case -215998278:
                if (str.equals("TOTALDISCS") && (f2 = zzgwx.f(str2)) != null) {
                    zzamVar.v = f2;
                    return;
                }
                return;
            case -113312716:
                if (str.equals("TRACKNUMBER") && (f3 = zzgwx.f(str2)) != null) {
                    zzamVar.h = f3;
                    return;
                }
                return;
            case 62359119:
                if (str.equals("ALBUM")) {
                    zzamVar.f4173c = str2;
                    return;
                }
                return;
            case 67703139:
                if (str.equals("GENRE")) {
                    zzamVar.w = str2;
                    return;
                }
                return;
            case 79833656:
                if (str.equals("TITLE")) {
                    zzamVar.f4172a = str2;
                    return;
                }
                return;
            case 428414940:
                if (str.equals("DESCRIPTION")) {
                    zzamVar.e = str2;
                    return;
                }
                return;
            case 993300766:
                if (str.equals("DISCNUMBER") && (f4 = zzgwx.f(str2)) != null) {
                    zzamVar.u = f4;
                    return;
                }
                return;
            case 1746739798:
                if (str.equals("ALBUMARTIST")) {
                    zzamVar.d = str2;
                    return;
                }
                return;
            case 1939198791:
                if (str.equals("ARTIST")) {
                    zzamVar.b = str2;
                    return;
                }
                return;
            default:
                return;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzahu zzahuVar = (zzahu) obj;
            if (this.f4047a.equals(zzahuVar.f4047a) && this.b.equals(zzahuVar.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + ((this.f4047a.hashCode() + 527) * 31);
    }

    public final String toString() {
        String str = this.f4047a;
        int length = String.valueOf(str).length();
        String str2 = this.b;
        return android.support.v4.media.a.r(new StringBuilder(length + 5 + String.valueOf(str2).length()), "VC: ", str, "=", str2);
    }
}
