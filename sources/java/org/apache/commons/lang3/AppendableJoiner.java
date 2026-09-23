package org.apache.commons.lang3;

import com.google.android.gms.ads.RequestConfiguration;
import java.io.IOException;
import java.util.function.Supplier;
import org.apache.commons.lang3.function.FailableBiConsumer;

/* loaded from: classes4.dex */
public final class AppendableJoiner<T> {

    /* renamed from: a, reason: collision with root package name */
    public final CharSequence f22332a;
    public final CharSequence b;

    /* renamed from: c, reason: collision with root package name */
    public final CharSequence f22333c;
    public final FailableBiConsumer d;

    /* loaded from: classes4.dex */
    public static final class Builder<T> implements Supplier<AppendableJoiner<T>> {

        /* renamed from: c, reason: collision with root package name */
        public String f22334c;
        public String f;
        public String g;
        public FailableBiConsumer h;

        @Override // java.util.function.Supplier
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final AppendableJoiner get() {
            return new AppendableJoiner(this.f22334c, this.f, this.g, this.h);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public AppendableJoiner(String str, String str2, String str3, FailableBiConsumer failableBiConsumer) {
        this.f22332a = str == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str;
        this.b = str2 == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str2;
        this.f22333c = str3 == null ? RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED : str3;
        this.d = failableBiConsumer == null ? new Object() : failableBiConsumer;
    }

    public final void a(StringBuilder sb, Object... objArr) {
        CharSequence charSequence = this.f22332a;
        CharSequence charSequence2 = this.b;
        CharSequence charSequence3 = this.f22333c;
        try {
            sb.append(charSequence);
            if (objArr != null) {
                int length = objArr.length;
                FailableBiConsumer failableBiConsumer = this.d;
                if (length > 0) {
                    failableBiConsumer.a(sb, objArr[0]);
                }
                for (int i = 1; i < objArr.length; i++) {
                    sb.append(charSequence3);
                    failableBiConsumer.a(sb, objArr[i]);
                }
            }
            sb.append(charSequence2);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }
}
