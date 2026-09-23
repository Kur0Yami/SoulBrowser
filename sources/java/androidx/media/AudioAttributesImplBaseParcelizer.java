package androidx.media;

import androidx.annotation.RestrictTo;
import androidx.versionedparcelable.VersionedParcel;

@RestrictTo
/* loaded from: classes.dex */
public class AudioAttributesImplBaseParcelizer {
    public static AudioAttributesImplBase read(VersionedParcel versionedParcel) {
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f1258a = versionedParcel.l(audioAttributesImplBase.f1258a, 1);
        audioAttributesImplBase.b = versionedParcel.l(audioAttributesImplBase.b, 2);
        audioAttributesImplBase.f1259c = versionedParcel.l(audioAttributesImplBase.f1259c, 3);
        audioAttributesImplBase.d = versionedParcel.l(audioAttributesImplBase.d, 4);
        return audioAttributesImplBase;
    }

    public static void write(AudioAttributesImplBase audioAttributesImplBase, VersionedParcel versionedParcel) {
        versionedParcel.q(false, false);
        versionedParcel.v(audioAttributesImplBase.f1258a, 1);
        versionedParcel.v(audioAttributesImplBase.b, 2);
        versionedParcel.v(audioAttributesImplBase.f1259c, 3);
        versionedParcel.v(audioAttributesImplBase.d, 4);
    }
}
