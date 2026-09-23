package com.google.android.datatransport.cct.internal;

import com.google.android.datatransport.cct.internal.LogRequest;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
final class AutoValue_LogRequest extends LogRequest {

    /* renamed from: a, reason: collision with root package name */
    public final long f2788a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final ClientInfo f2789c;
    public final Integer d;
    public final String e;
    public final List f;
    public final QosTier g;

    /* loaded from: classes.dex */
    public static final class Builder extends LogRequest.Builder {

        /* renamed from: a, reason: collision with root package name */
        public Long f2790a;
        public Long b;

        /* renamed from: c, reason: collision with root package name */
        public ClientInfo f2791c;
        public Integer d;
        public String e;
        public ArrayList f;
        public QosTier g;

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest a() {
            String str;
            if (this.f2790a == null) {
                str = " requestTimeMs";
            } else {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            if (this.b == null) {
                str = str.concat(" requestUptimeMs");
            }
            if (str.isEmpty()) {
                return new AutoValue_LogRequest(this.f2790a.longValue(), this.b.longValue(), this.f2791c, this.d, this.e, this.f, this.g);
            }
            throw new IllegalStateException("Missing required properties:".concat(str));
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest.Builder b(ClientInfo clientInfo) {
            this.f2791c = clientInfo;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest.Builder c(ArrayList arrayList) {
            this.f = arrayList;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest.Builder d(Integer num) {
            this.d = num;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest.Builder e(String str) {
            this.e = str;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest.Builder f() {
            this.g = QosTier.f2798c;
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest.Builder g(long j) {
            this.f2790a = Long.valueOf(j);
            return this;
        }

        @Override // com.google.android.datatransport.cct.internal.LogRequest.Builder
        public final LogRequest.Builder h(long j) {
            this.b = Long.valueOf(j);
            return this;
        }
    }

    public AutoValue_LogRequest(long j, long j2, ClientInfo clientInfo, Integer num, String str, ArrayList arrayList, QosTier qosTier) {
        this.f2788a = j;
        this.b = j2;
        this.f2789c = clientInfo;
        this.d = num;
        this.e = str;
        this.f = arrayList;
        this.g = qosTier;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public final ClientInfo b() {
        return this.f2789c;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public final List c() {
        return this.f;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public final Integer d() {
        return this.d;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public final String e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof LogRequest) {
                LogRequest logRequest = (LogRequest) obj;
                if (this.f2788a == logRequest.g() && this.b == logRequest.h()) {
                    ClientInfo clientInfo = this.f2789c;
                    if (clientInfo == null) {
                        if (logRequest.b() != null) {
                            return false;
                        }
                    } else if (!clientInfo.equals(logRequest.b())) {
                        return false;
                    }
                    Integer num = this.d;
                    if (num == null) {
                        if (logRequest.d() != null) {
                            return false;
                        }
                    } else if (!num.equals(logRequest.d())) {
                        return false;
                    }
                    String str = this.e;
                    if (str == null) {
                        if (logRequest.e() != null) {
                            return false;
                        }
                    } else if (!str.equals(logRequest.e())) {
                        return false;
                    }
                    List list = this.f;
                    if (list == null) {
                        if (logRequest.c() != null) {
                            return false;
                        }
                    } else if (!list.equals(logRequest.c())) {
                        return false;
                    }
                    QosTier qosTier = this.g;
                    if (qosTier == null) {
                        if (logRequest.f() == null) {
                            return true;
                        }
                        return false;
                    }
                    if (qosTier.equals(logRequest.f())) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public final QosTier f() {
        return this.g;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public final long g() {
        return this.f2788a;
    }

    @Override // com.google.android.datatransport.cct.internal.LogRequest
    public final long h() {
        return this.b;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3;
        int hashCode4;
        long j = this.f2788a;
        long j2 = this.b;
        int i = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        int i2 = 0;
        ClientInfo clientInfo = this.f2789c;
        if (clientInfo == null) {
            hashCode = 0;
        } else {
            hashCode = clientInfo.hashCode();
        }
        int i3 = (i ^ hashCode) * 1000003;
        Integer num = this.d;
        if (num == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = num.hashCode();
        }
        int i4 = (i3 ^ hashCode2) * 1000003;
        String str = this.e;
        if (str == null) {
            hashCode3 = 0;
        } else {
            hashCode3 = str.hashCode();
        }
        int i5 = (i4 ^ hashCode3) * 1000003;
        List list = this.f;
        if (list == null) {
            hashCode4 = 0;
        } else {
            hashCode4 = list.hashCode();
        }
        int i6 = (i5 ^ hashCode4) * 1000003;
        QosTier qosTier = this.g;
        if (qosTier != null) {
            i2 = qosTier.hashCode();
        }
        return i6 ^ i2;
    }

    public final String toString() {
        return "LogRequest{requestTimeMs=" + this.f2788a + ", requestUptimeMs=" + this.b + ", clientInfo=" + this.f2789c + ", logSource=" + this.d + ", logSourceName=" + this.e + ", logEvents=" + this.f + ", qosTier=" + this.g + "}";
    }
}
