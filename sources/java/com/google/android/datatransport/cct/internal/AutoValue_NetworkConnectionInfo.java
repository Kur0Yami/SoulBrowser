package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.NetworkConnectionInfo;

/* loaded from: classes.dex */
final class AutoValue_NetworkConnectionInfo extends NetworkConnectionInfo {

    /* renamed from: a, reason: collision with root package name */
    public final NetworkConnectionInfo.NetworkType f2793a;
    public final NetworkConnectionInfo.MobileSubtype b;

    /* loaded from: classes.dex */
    public static final class Builder extends NetworkConnectionInfo.Builder {

        /* renamed from: a, reason: collision with root package name */
        public NetworkConnectionInfo.NetworkType f2794a;
        public NetworkConnectionInfo.MobileSubtype b;

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.Builder
        public final NetworkConnectionInfo a() {
            return new AutoValue_NetworkConnectionInfo(this.f2794a, this.b);
        }

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.Builder
        public final NetworkConnectionInfo.Builder b(NetworkConnectionInfo.MobileSubtype mobileSubtype) {
            this.b = mobileSubtype;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo.Builder
        public final NetworkConnectionInfo.Builder c(NetworkConnectionInfo.NetworkType networkType) {
            this.f2794a = networkType;
            return this;
        }
    }

    public AutoValue_NetworkConnectionInfo(NetworkConnectionInfo.NetworkType networkType, NetworkConnectionInfo.MobileSubtype mobileSubtype) {
        this.f2793a = networkType;
        this.b = mobileSubtype;
    }

    @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo
    public final NetworkConnectionInfo.MobileSubtype b() {
        return this.b;
    }

    @Override // com.google.android.datatransport.cct.internal.NetworkConnectionInfo
    public final NetworkConnectionInfo.NetworkType c() {
        return this.f2793a;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof NetworkConnectionInfo) {
                NetworkConnectionInfo networkConnectionInfo = (NetworkConnectionInfo) obj;
                NetworkConnectionInfo.NetworkType networkType = this.f2793a;
                if (networkType == null) {
                    if (networkConnectionInfo.c() != null) {
                        return false;
                    }
                } else if (!networkType.equals(networkConnectionInfo.c())) {
                    return false;
                }
                NetworkConnectionInfo.MobileSubtype mobileSubtype = this.b;
                if (mobileSubtype == null) {
                    if (networkConnectionInfo.b() == null) {
                        return true;
                    }
                    return false;
                }
                if (mobileSubtype.equals(networkConnectionInfo.b())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int i = 0;
        NetworkConnectionInfo.NetworkType networkType = this.f2793a;
        if (networkType == null) {
            hashCode = 0;
        } else {
            hashCode = networkType.hashCode();
        }
        int i2 = (hashCode ^ 1000003) * 1000003;
        NetworkConnectionInfo.MobileSubtype mobileSubtype = this.b;
        if (mobileSubtype != null) {
            i = mobileSubtype.hashCode();
        }
        return i ^ i2;
    }

    public final String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f2793a + ", mobileSubtype=" + this.b + "}";
    }
}
