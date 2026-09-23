package androidx.media;

import androidx.annotation.RestrictTo;
import androidx.versionedparcelable.VersionedParcel;
import androidx.versionedparcelable.VersionedParcelable;

@RestrictTo
/* loaded from: classes.dex */
public class AudioAttributesCompatParcelizer {
    public static AudioAttributesCompat read(VersionedParcel versionedParcel) {
        AudioAttributesCompat audioAttributesCompat = new AudioAttributesCompat();
        VersionedParcelable versionedParcelable = audioAttributesCompat.f1254a;
        if (versionedParcel.j(1)) {
            versionedParcelable = versionedParcel.o();
        }
        audioAttributesCompat.f1254a = (AudioAttributesImpl) versionedParcelable;
        return audioAttributesCompat;
    }

    public static void write(AudioAttributesCompat audioAttributesCompat, VersionedParcel versionedParcel) {
        versionedParcel.q(false, false);
        AudioAttributesImpl audioAttributesImpl = audioAttributesCompat.f1254a;
        versionedParcel.p(1);
        versionedParcel.y(audioAttributesImpl);
    }
}
