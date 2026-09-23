package com.google.android.gms.ads.internal.util.client;

import androidx.work.impl.workers.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzm extends zzw {

    /* renamed from: a, reason: collision with root package name */
    public final int f3083a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3084c;

    public zzm(int i, int i2, boolean z) {
        this.f3083a = i;
        this.b = i2;
        this.f3084c = z;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzw) {
            zzw zzwVar = (zzw) obj;
            if (this.f3083a == zzwVar.zza() && this.b == zzwVar.zzb() && this.f3084c == zzwVar.zzc()) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (true != this.f3084c ? 1237 : 1231) ^ ((((this.f3083a ^ 1000003) * 1000003) ^ this.b) * 1000003);
    }

    public final String toString() {
        int i = this.f3083a;
        int length = String.valueOf(i).length();
        int i2 = this.b;
        int length2 = String.valueOf(i2).length();
        boolean z = this.f3084c;
        StringBuilder sb = new StringBuilder(length + 59 + length2 + 26 + String.valueOf(z).length() + 1);
        a.A(sb, "OfflineAdConfig{impressionPrerequisite=", i, ", clickPrerequisite=", i2);
        sb.append(", notificationFlowEnabled=");
        sb.append(z);
        sb.append("}");
        return sb.toString();
    }

    @Override // com.google.android.gms.ads.internal.util.client.zzw
    public final int zza() {
        return this.f3083a;
    }

    @Override // com.google.android.gms.ads.internal.util.client.zzw
    public final int zzb() {
        return this.b;
    }

    @Override // com.google.android.gms.ads.internal.util.client.zzw
    public final boolean zzc() {
        return this.f3084c;
    }
}
