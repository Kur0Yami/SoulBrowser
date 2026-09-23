package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzfwi extends zzfwo {
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final int f7703c;
    public final int d;

    public zzfwi(String str, int i, int i2) {
        this.b = str;
        this.f7703c = i;
        this.d = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzfwo
    public final String a() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.ads.zzfwo
    public final int b() {
        return this.f7703c;
    }

    @Override // com.google.android.gms.internal.ads.zzfwo
    public final int c() {
        return this.d;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof zzfwo) {
                zzfwo zzfwoVar = (zzfwo) obj;
                if (this.b.equals(zzfwoVar.a())) {
                    int b = zzfwoVar.b();
                    int i = this.f7703c;
                    if (i != 0) {
                        if (i == b) {
                            int c2 = zzfwoVar.c();
                            if (this.d != 0) {
                                if (c2 != 1) {
                                    return false;
                                }
                            } else {
                                throw null;
                            }
                        } else {
                            return false;
                        }
                    } else {
                        throw null;
                    }
                } else {
                    return false;
                }
            } else {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int hashCode = this.b.hashCode() ^ 1000003;
        int i = this.f7703c;
        if (i != 0) {
            int i2 = (((hashCode * 1000003) ^ 1237) * 1000003) ^ i;
            if (this.d != 0) {
                return (i2 * (-721379959)) ^ 1;
            }
            throw null;
        }
        throw null;
    }

    public final String toString() {
        String str;
        String str2 = "null";
        int i = this.f7703c;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        str = "null";
                    } else {
                        str = "NO_CHECKS";
                    }
                } else {
                    str = "SKIP_SECURITY_CHECK";
                }
            } else {
                str = "SKIP_COMPLIANCE_CHECK";
            }
        } else {
            str = "ALL_CHECKS";
        }
        if (this.d == 1) {
            str2 = "READ_AND_WRITE";
        }
        String str3 = this.b;
        StringBuilder sb = new StringBuilder(str2.length() + androidx.work.impl.workers.a.d(androidx.work.impl.workers.a.e(73, str3), 52, str) + 1);
        android.support.v4.media.a.z(sb, "FileComplianceOptions{fileOwner=", str3, ", hasDifferentDmaOwner=false, fileChecks=", str);
        return android.support.v4.media.a.q(sb, ", multipleProductIdGroupsResolver=null, filePurpose=", str2, "}");
    }
}
