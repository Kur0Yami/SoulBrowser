package com.google.android.datatransport.cct.internal;

import android.support.v4.media.a;
import com.google.android.datatransport.cct.internal.AndroidClientInfo;

/* loaded from: classes.dex */
final class AutoValue_AndroidClientInfo extends AndroidClientInfo {

    /* renamed from: a, reason: collision with root package name */
    public final Integer f2777a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final String f2778c;
    public final String d;
    public final String e;
    public final String f;
    public final String g;
    public final String h;
    public final String i;
    public final String j;
    public final String k;
    public final String l;

    /* loaded from: classes.dex */
    public static final class Builder extends AndroidClientInfo.Builder {

        /* renamed from: a, reason: collision with root package name */
        public Integer f2779a;
        public String b;

        /* renamed from: c, reason: collision with root package name */
        public String f2780c;
        public String d;
        public String e;
        public String f;
        public String g;
        public String h;
        public String i;
        public String j;
        public String k;
        public String l;

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo a() {
            return new AutoValue_AndroidClientInfo(this.f2779a, this.b, this.f2780c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l);
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder b(String str) {
            this.l = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder c(String str) {
            this.j = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder d(String str) {
            this.d = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder e(String str) {
            this.h = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder f(String str) {
            this.f2780c = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder g(String str) {
            this.i = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder h(String str) {
            this.g = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder i(String str) {
            this.k = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder j(String str) {
            this.b = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder k(String str) {
            this.f = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder l(String str) {
            this.e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo.Builder
        public final AndroidClientInfo.Builder m(Integer num) {
            this.f2779a = num;
            return this;
        }
    }

    public AutoValue_AndroidClientInfo(Integer num, String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11) {
        this.f2777a = num;
        this.b = str;
        this.f2778c = str2;
        this.d = str3;
        this.e = str4;
        this.f = str5;
        this.g = str6;
        this.h = str7;
        this.i = str8;
        this.j = str9;
        this.k = str10;
        this.l = str11;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String b() {
        return this.l;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String c() {
        return this.j;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String d() {
        return this.d;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String e() {
        return this.h;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof AndroidClientInfo) {
                AndroidClientInfo androidClientInfo = (AndroidClientInfo) obj;
                Integer num = this.f2777a;
                if (num == null) {
                    if (androidClientInfo.m() != null) {
                        return false;
                    }
                } else if (!num.equals(androidClientInfo.m())) {
                    return false;
                }
                String str = this.b;
                if (str == null) {
                    if (androidClientInfo.j() != null) {
                        return false;
                    }
                } else if (!str.equals(androidClientInfo.j())) {
                    return false;
                }
                String str2 = this.f2778c;
                if (str2 == null) {
                    if (androidClientInfo.f() != null) {
                        return false;
                    }
                } else if (!str2.equals(androidClientInfo.f())) {
                    return false;
                }
                String str3 = this.d;
                if (str3 == null) {
                    if (androidClientInfo.d() != null) {
                        return false;
                    }
                } else if (!str3.equals(androidClientInfo.d())) {
                    return false;
                }
                String str4 = this.e;
                if (str4 == null) {
                    if (androidClientInfo.l() != null) {
                        return false;
                    }
                } else if (!str4.equals(androidClientInfo.l())) {
                    return false;
                }
                String str5 = this.f;
                if (str5 == null) {
                    if (androidClientInfo.k() != null) {
                        return false;
                    }
                } else if (!str5.equals(androidClientInfo.k())) {
                    return false;
                }
                String str6 = this.g;
                if (str6 == null) {
                    if (androidClientInfo.h() != null) {
                        return false;
                    }
                } else if (!str6.equals(androidClientInfo.h())) {
                    return false;
                }
                String str7 = this.h;
                if (str7 == null) {
                    if (androidClientInfo.e() != null) {
                        return false;
                    }
                } else if (!str7.equals(androidClientInfo.e())) {
                    return false;
                }
                String str8 = this.i;
                if (str8 == null) {
                    if (androidClientInfo.g() != null) {
                        return false;
                    }
                } else if (!str8.equals(androidClientInfo.g())) {
                    return false;
                }
                String str9 = this.j;
                if (str9 == null) {
                    if (androidClientInfo.c() != null) {
                        return false;
                    }
                } else if (!str9.equals(androidClientInfo.c())) {
                    return false;
                }
                String str10 = this.k;
                if (str10 == null) {
                    if (androidClientInfo.i() != null) {
                        return false;
                    }
                } else if (!str10.equals(androidClientInfo.i())) {
                    return false;
                }
                String str11 = this.l;
                if (str11 == null) {
                    if (androidClientInfo.b() == null) {
                        return true;
                    }
                    return false;
                }
                if (str11.equals(androidClientInfo.b())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String f() {
        return this.f2778c;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String g() {
        return this.i;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String h() {
        return this.g;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        int hashCode5;
        int hashCode6;
        int hashCode7;
        int hashCode8;
        int hashCode9;
        int hashCode10;
        int hashCode11;
        int i = 0;
        Integer num = this.f2777a;
        if (num == null) {
            hashCode = 0;
        } else {
            hashCode = num.hashCode();
        }
        int i2 = (hashCode ^ 1000003) * 1000003;
        String str = this.b;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i3 = (i2 ^ hashCode2) * 1000003;
        String str2 = this.f2778c;
        if (str2 == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str2.hashCode();
        }
        int i4 = (i3 ^ hashCode3) * 1000003;
        String str3 = this.d;
        if (str3 == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = str3.hashCode();
        }
        int i5 = (i4 ^ hashCode4) * 1000003;
        String str4 = this.e;
        if (str4 == null) {
            hashCode5 = 0;
        } else {
            hashCode5 = str4.hashCode();
        }
        int i6 = (i5 ^ hashCode5) * 1000003;
        String str5 = this.f;
        if (str5 == null) {
            hashCode6 = 0;
        } else {
            hashCode6 = str5.hashCode();
        }
        int i7 = (i6 ^ hashCode6) * 1000003;
        String str6 = this.g;
        if (str6 == null) {
            hashCode7 = 0;
        } else {
            hashCode7 = str6.hashCode();
        }
        int i8 = (i7 ^ hashCode7) * 1000003;
        String str7 = this.h;
        if (str7 == null) {
            hashCode8 = 0;
        } else {
            hashCode8 = str7.hashCode();
        }
        int i9 = (i8 ^ hashCode8) * 1000003;
        String str8 = this.i;
        if (str8 == null) {
            hashCode9 = 0;
        } else {
            hashCode9 = str8.hashCode();
        }
        int i10 = (i9 ^ hashCode9) * 1000003;
        String str9 = this.j;
        if (str9 == null) {
            hashCode10 = 0;
        } else {
            hashCode10 = str9.hashCode();
        }
        int i11 = (i10 ^ hashCode10) * 1000003;
        String str10 = this.k;
        if (str10 == null) {
            hashCode11 = 0;
        } else {
            hashCode11 = str10.hashCode();
        }
        int i12 = (i11 ^ hashCode11) * 1000003;
        String str11 = this.l;
        if (str11 != null) {
            i = str11.hashCode();
        }
        return i ^ i12;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String i() {
        return this.k;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String j() {
        return this.b;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String k() {
        return this.f;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final String l() {
        return this.e;
    }

    @Override // com.google.android.datatransport.cct.internal.AndroidClientInfo
    public final Integer m() {
        return this.f2777a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AndroidClientInfo{sdkVersion=");
        sb.append(this.f2777a);
        sb.append(", model=");
        sb.append(this.b);
        sb.append(", hardware=");
        sb.append(this.f2778c);
        sb.append(", device=");
        sb.append(this.d);
        sb.append(", product=");
        sb.append(this.e);
        sb.append(", osBuild=");
        sb.append(this.f);
        sb.append(", manufacturer=");
        sb.append(this.g);
        sb.append(", fingerprint=");
        sb.append(this.h);
        sb.append(", locale=");
        sb.append(this.i);
        sb.append(", country=");
        sb.append(this.j);
        sb.append(", mccMnc=");
        sb.append(this.k);
        sb.append(", applicationBuild=");
        return a.p(sb, this.l, "}");
    }
}
