package androidx.core.os;

import android.os.LocaleList;
import androidx.annotation.RequiresApi;
import java.util.Locale;

@RequiresApi
/* loaded from: classes.dex */
final class LocaleListPlatformWrapper implements LocaleListInterface {

    /* renamed from: a, reason: collision with root package name */
    public final LocaleList f711a;

    public LocaleListPlatformWrapper(Object obj) {
        this.f711a = (LocaleList) obj;
    }

    @Override // androidx.core.os.LocaleListInterface
    public final String a() {
        return this.f711a.toLanguageTags();
    }

    @Override // androidx.core.os.LocaleListInterface
    public final Object b() {
        return this.f711a;
    }

    public final boolean equals(Object obj) {
        return this.f711a.equals(((LocaleListInterface) obj).b());
    }

    @Override // androidx.core.os.LocaleListInterface
    public final Locale get(int i) {
        return this.f711a.get(i);
    }

    public final int hashCode() {
        return this.f711a.hashCode();
    }

    @Override // androidx.core.os.LocaleListInterface
    public final boolean isEmpty() {
        return this.f711a.isEmpty();
    }

    @Override // androidx.core.os.LocaleListInterface
    public final int size() {
        return this.f711a.size();
    }

    public final String toString() {
        return this.f711a.toString();
    }
}
