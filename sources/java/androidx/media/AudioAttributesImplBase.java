package androidx.media;

import androidx.annotation.RestrictTo;
import androidx.media.AudioAttributesImpl;
import java.util.Arrays;

@RestrictTo
/* loaded from: classes.dex */
public class AudioAttributesImplBase implements AudioAttributesImpl {

    /* renamed from: a, reason: collision with root package name */
    public int f1258a = 0;
    public int b = 0;

    /* renamed from: c, reason: collision with root package name */
    public int f1259c = 0;
    public int d = -1;

    /* loaded from: classes.dex */
    public static class Builder implements AudioAttributesImpl.Builder {
        @Override // androidx.media.AudioAttributesImpl.Builder
        public final AudioAttributesImpl.Builder a() {
            throw null;
        }

        @Override // androidx.media.AudioAttributesImpl.Builder
        public final AudioAttributesImpl build() {
            throw null;
        }
    }

    @RestrictTo
    public AudioAttributesImplBase() {
    }

    @Override // androidx.media.AudioAttributesImpl
    public final int a() {
        int i = this.d;
        if (i != -1) {
            return i;
        }
        return AudioAttributesCompat.b(this.f1259c, this.f1258a);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof AudioAttributesImplBase)) {
            return false;
        }
        AudioAttributesImplBase audioAttributesImplBase = (AudioAttributesImplBase) obj;
        if (this.b == audioAttributesImplBase.b) {
            int i = this.f1259c;
            int i2 = audioAttributesImplBase.f1259c;
            int a2 = audioAttributesImplBase.a();
            if (a2 == 6) {
                i2 |= 4;
            } else if (a2 == 7) {
                i2 |= 1;
            }
            if (i == (i2 & 273) && this.f1258a == audioAttributesImplBase.f1258a && this.d == audioAttributesImplBase.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.b), Integer.valueOf(this.f1259c), Integer.valueOf(this.f1258a), Integer.valueOf(this.d)});
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("AudioAttributesCompat:");
        if (this.d != -1) {
            sb.append(" stream=");
            sb.append(this.d);
            sb.append(" derived");
        }
        sb.append(" usage=");
        int i = this.f1258a;
        int i2 = AudioAttributesCompat.b;
        switch (i) {
            case 0:
                str = "USAGE_UNKNOWN";
                break;
            case 1:
                str = "USAGE_MEDIA";
                break;
            case 2:
                str = "USAGE_VOICE_COMMUNICATION";
                break;
            case 3:
                str = "USAGE_VOICE_COMMUNICATION_SIGNALLING";
                break;
            case 4:
                str = "USAGE_ALARM";
                break;
            case 5:
                str = "USAGE_NOTIFICATION";
                break;
            case 6:
                str = "USAGE_NOTIFICATION_RINGTONE";
                break;
            case 7:
                str = "USAGE_NOTIFICATION_COMMUNICATION_REQUEST";
                break;
            case 8:
                str = "USAGE_NOTIFICATION_COMMUNICATION_INSTANT";
                break;
            case 9:
                str = "USAGE_NOTIFICATION_COMMUNICATION_DELAYED";
                break;
            case 10:
                str = "USAGE_NOTIFICATION_EVENT";
                break;
            case 11:
                str = "USAGE_ASSISTANCE_ACCESSIBILITY";
                break;
            case 12:
                str = "USAGE_ASSISTANCE_NAVIGATION_GUIDANCE";
                break;
            case 13:
                str = "USAGE_ASSISTANCE_SONIFICATION";
                break;
            case 14:
                str = "USAGE_GAME";
                break;
            case 15:
            default:
                str = android.support.v4.media.a.e(i, "unknown usage ");
                break;
            case 16:
                str = "USAGE_ASSISTANT";
                break;
        }
        sb.append(str);
        sb.append(" content=");
        sb.append(this.b);
        sb.append(" flags=0x");
        sb.append(Integer.toHexString(this.f1259c).toUpperCase());
        return sb.toString();
    }
}
