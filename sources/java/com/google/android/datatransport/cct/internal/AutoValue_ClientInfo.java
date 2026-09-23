package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.ClientInfo;

/* loaded from: classes.dex */
final class AutoValue_ClientInfo extends ClientInfo {

    /* renamed from: a, reason: collision with root package name */
    public final ClientInfo.ClientType f2782a;
    public final AndroidClientInfo b;

    /* loaded from: classes.dex */
    public static final class Builder extends ClientInfo.Builder {

        /* renamed from: a, reason: collision with root package name */
        public ClientInfo.ClientType f2783a;
        public AndroidClientInfo b;

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.Builder
        public final ClientInfo a() {
            return new AutoValue_ClientInfo(this.f2783a, this.b);
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.Builder
        public final ClientInfo.Builder b(AndroidClientInfo androidClientInfo) {
            this.b = androidClientInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.ClientInfo.Builder
        public final ClientInfo.Builder c() {
            this.f2783a = ClientInfo.ClientType.f2795c;
            return this;
        }
    }

    public AutoValue_ClientInfo(ClientInfo.ClientType clientType, AndroidClientInfo androidClientInfo) {
        this.f2782a = clientType;
        this.b = androidClientInfo;
    }

    @Override // com.google.android.datatransport.cct.internal.ClientInfo
    public final AndroidClientInfo b() {
        return this.b;
    }

    @Override // com.google.android.datatransport.cct.internal.ClientInfo
    public final ClientInfo.ClientType c() {
        return this.f2782a;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof ClientInfo) {
                ClientInfo clientInfo = (ClientInfo) obj;
                ClientInfo.ClientType clientType = this.f2782a;
                if (clientType == null) {
                    if (clientInfo.c() != null) {
                        return false;
                    }
                } else if (!clientType.equals(clientInfo.c())) {
                    return false;
                }
                AndroidClientInfo androidClientInfo = this.b;
                if (androidClientInfo == null) {
                    if (clientInfo.b() == null) {
                        return true;
                    }
                    return false;
                }
                if (androidClientInfo.equals(clientInfo.b())) {
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
        ClientInfo.ClientType clientType = this.f2782a;
        if (clientType == null) {
            hashCode = 0;
        } else {
            hashCode = clientType.hashCode();
        }
        int i2 = (hashCode ^ 1000003) * 1000003;
        AndroidClientInfo androidClientInfo = this.b;
        if (androidClientInfo != null) {
            i = androidClientInfo.hashCode();
        }
        return i ^ i2;
    }

    public final String toString() {
        return "ClientInfo{clientType=" + this.f2782a + ", androidClientInfo=" + this.b + "}";
    }
}
