package androidx.media;

import android.media.AudioAttributes;
import android.os.Build;
import android.util.SparseIntArray;
import androidx.annotation.RestrictTo;
import androidx.media.AudioAttributesImpl;
import androidx.media.AudioAttributesImplApi21;
import androidx.versionedparcelable.VersionedParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public class AudioAttributesCompat implements VersionedParcelable {
    public static final /* synthetic */ int b = 0;

    /* renamed from: a, reason: collision with root package name */
    public AudioAttributesImpl f1254a;

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface AttributeContentType {
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface AttributeUsage {
    }

    /* loaded from: classes.dex */
    public static abstract class AudioManagerHidden {
    }

    /* loaded from: classes.dex */
    public static class Builder {

        /* renamed from: a, reason: collision with root package name */
        public final AudioAttributesImpl.Builder f1255a;

        public Builder() {
            int i = AudioAttributesCompat.b;
            if (Build.VERSION.SDK_INT >= 26) {
                this.f1255a = new AudioAttributesImplApi21.Builder();
            } else {
                this.f1255a = new AudioAttributesImplApi21.Builder();
            }
        }

        public final void a(int i) {
            ((AudioAttributesImplApi21.Builder) this.f1255a).f1257a.setLegacyStreamType(i);
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(5, 1);
        sparseIntArray.put(6, 2);
        sparseIntArray.put(7, 2);
        sparseIntArray.put(8, 1);
        sparseIntArray.put(9, 1);
        sparseIntArray.put(10, 1);
    }

    @RestrictTo
    public AudioAttributesCompat() {
    }

    public static int b(int i, int i2) {
        if ((i & 1) == 1) {
            return 7;
        }
        if ((i & 4) == 4) {
            return 6;
        }
        switch (i2) {
            case 2:
                return 0;
            case 3:
                return 8;
            case 4:
                return 4;
            case 5:
            case 7:
            case 8:
            case 9:
            case 10:
                return 5;
            case 6:
                return 2;
            case 11:
                return 10;
            case 12:
            default:
                return 3;
            case 13:
                return 1;
        }
    }

    public static AudioAttributesCompat c(AudioAttributes audioAttributes) {
        if (Build.VERSION.SDK_INT >= 26) {
            return new AudioAttributesCompat(new AudioAttributesImplApi21(audioAttributes, 0));
        }
        return new AudioAttributesCompat(new AudioAttributesImplApi21(audioAttributes, 0));
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesCompat)) {
            return false;
        }
        AudioAttributesCompat audioAttributesCompat = (AudioAttributesCompat) obj;
        AudioAttributesImpl audioAttributesImpl = this.f1254a;
        if (audioAttributesImpl == null) {
            if (audioAttributesCompat.f1254a != null) {
                return false;
            }
            return true;
        }
        return audioAttributesImpl.equals(audioAttributesCompat.f1254a);
    }

    public final int hashCode() {
        return this.f1254a.hashCode();
    }

    public final String toString() {
        return this.f1254a.toString();
    }

    public AudioAttributesCompat(AudioAttributesImpl audioAttributesImpl) {
        this.f1254a = audioAttributesImpl;
    }
}
