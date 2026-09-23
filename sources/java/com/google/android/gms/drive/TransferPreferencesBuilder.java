package com.google.android.gms.drive;

import com.google.android.gms.common.internal.Objects;

/* loaded from: classes.dex */
public class TransferPreferencesBuilder {

    /* renamed from: a, reason: collision with root package name */
    public int f3682a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public int f3683c;

    /* loaded from: classes.dex */
    public static class zza implements TransferPreferences {

        /* renamed from: c, reason: collision with root package name */
        public final int f3684c;
        public final boolean f;
        public final int g;

        public zza(int i, int i2, boolean z) {
            this.f3684c = i;
            this.f = z;
            this.g = i2;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && zza.class == obj.getClass()) {
                zza zzaVar = (zza) obj;
                if (zzaVar.f3684c == this.f3684c && zzaVar.f == this.f && zzaVar.g == this.g) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hashCode(Integer.valueOf(this.f3684c), Boolean.valueOf(this.f), Integer.valueOf(this.g));
        }

        public final String toString() {
            return "NetworkPreference: " + this.f3684c + ", IsRoamingAllowed " + this.f + ", BatteryUsagePreference " + this.g;
        }
    }

    public final TransferPreferences a() {
        return new zza(this.f3682a, this.f3683c, this.b);
    }
}
