package org.jsoup.parser;

import com.google.android.gms.ads.RequestConfiguration;
import org.jsoup.internal.StringUtil;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4.dex */
public class TokenData {

    /* renamed from: a, reason: collision with root package name */
    public String f22603a;
    public StringBuilder b;

    public final void a(char c2) {
        StringBuilder sb = this.b;
        if (sb != null) {
            sb.append(c2);
            return;
        }
        if (this.f22603a != null) {
            StringBuilder borrowBuilder = StringUtil.borrowBuilder();
            this.b = borrowBuilder;
            borrowBuilder.append(this.f22603a);
            this.f22603a = null;
            this.b.append(c2);
            return;
        }
        this.f22603a = String.valueOf(c2);
    }

    public final void b(String str) {
        StringBuilder sb = this.b;
        if (sb != null) {
            sb.append(str);
            return;
        }
        if (this.f22603a != null) {
            StringBuilder borrowBuilder = StringUtil.borrowBuilder();
            this.b = borrowBuilder;
            borrowBuilder.append(this.f22603a);
            this.f22603a = null;
            this.b.append(str);
            return;
        }
        this.f22603a = str;
    }

    public final boolean c() {
        if (this.b == null && this.f22603a == null) {
            return false;
        }
        return true;
    }

    public final void d() {
        StringBuilder sb = this.b;
        if (sb != null) {
            StringUtil.releaseBuilderVoid(sb);
            this.b = null;
        }
        this.f22603a = null;
    }

    public final String e() {
        StringBuilder sb = this.b;
        if (sb != null) {
            this.f22603a = sb.toString();
            StringUtil.releaseBuilder(this.b);
            this.b = null;
            return this.f22603a;
        }
        String str = this.f22603a;
        if (str != null) {
            return str;
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    public final String toString() {
        StringBuilder sb = this.b;
        if (sb != null) {
            return sb.toString();
        }
        String str = this.f22603a;
        if (str != null) {
            return str;
        }
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }
}
