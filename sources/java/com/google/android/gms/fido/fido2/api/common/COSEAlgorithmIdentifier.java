package com.google.android.gms.fido.fido2.api.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
public class COSEAlgorithmIdentifier implements Parcelable {

    @NonNull
    public static final Parcelable.Creator<COSEAlgorithmIdentifier> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final Algorithm f3753c;

    /* loaded from: classes.dex */
    public static class UnsupportedAlgorithmIdentifierException extends Exception {
    }

    public COSEAlgorithmIdentifier(Algorithm algorithm) {
        this.f3753c = (Algorithm) Preconditions.checkNotNull(algorithm);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static COSEAlgorithmIdentifier a(int i) {
        RSAAlgorithm rSAAlgorithm;
        if (i == -262) {
            rSAAlgorithm = RSAAlgorithm.RS1;
        } else {
            RSAAlgorithm[] values = RSAAlgorithm.values();
            int length = values.length;
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    RSAAlgorithm rSAAlgorithm2 = values[i2];
                    if (rSAAlgorithm2.f3769c == i) {
                        rSAAlgorithm = rSAAlgorithm2;
                        break;
                    }
                    i2++;
                } else {
                    for (EC2Algorithm eC2Algorithm : EC2Algorithm.values()) {
                        if (eC2Algorithm.f3754c == i) {
                            rSAAlgorithm = eC2Algorithm;
                        }
                    }
                    throw new Exception(a.f(i, "Algorithm with COSE value ", " not supported"));
                }
            }
        }
        return new COSEAlgorithmIdentifier(rSAAlgorithm);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof COSEAlgorithmIdentifier) && this.f3753c.a() == ((COSEAlgorithmIdentifier) obj).f3753c.a()) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3753c);
    }

    public final String toString() {
        return a.l("COSEAlgorithmIdentifier{algorithm=", String.valueOf(this.f3753c), "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f3753c.a());
    }
}
