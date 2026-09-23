package androidx.biometric;

import java.util.Arrays;

/* loaded from: classes.dex */
class BiometricErrorData {

    /* renamed from: a, reason: collision with root package name */
    public final int f370a;
    public final CharSequence b;

    public BiometricErrorData(int i, CharSequence charSequence) {
        this.f370a = i;
        this.b = charSequence;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj instanceof BiometricErrorData) {
            BiometricErrorData biometricErrorData = (BiometricErrorData) obj;
            if (this.f370a == biometricErrorData.f370a) {
                CharSequence charSequence = biometricErrorData.b;
                String str2 = null;
                CharSequence charSequence2 = this.b;
                if (charSequence2 != null) {
                    str = charSequence2.toString();
                } else {
                    str = null;
                }
                if (charSequence != null) {
                    str2 = charSequence.toString();
                }
                if (str != null || str2 != null) {
                    if (str != null && str.equals(str2)) {
                        return true;
                    }
                    return false;
                }
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        String str;
        Integer valueOf = Integer.valueOf(this.f370a);
        CharSequence charSequence = this.b;
        if (charSequence != null) {
            str = charSequence.toString();
        } else {
            str = null;
        }
        return Arrays.hashCode(new Object[]{valueOf, str});
    }
}
