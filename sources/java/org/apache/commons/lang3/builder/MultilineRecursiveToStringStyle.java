package org.apache.commons.lang3.builder;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;
import org.apache.commons.lang3.ClassUtils;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes4.dex */
public class MultilineRecursiveToStringStyle extends RecursiveToStringStyle {
    public int w;

    @Override // org.apache.commons.lang3.builder.ToStringStyle
    public final void N(StringBuffer stringBuffer, Object obj) {
        this.w += 2;
        P();
        super.N(stringBuffer, obj);
        this.w -= 2;
        P();
    }

    public final void P() {
        this.m = Objects.toString("{" + System.lineSeparator() + StringUtils.e(' ', this.w), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        this.n = Objects.toString("," + System.lineSeparator() + StringUtils.e(' ', this.w), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        this.o = Objects.toString(System.lineSeparator() + StringUtils.e(' ', this.w + (-2)) + "}", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        StringBuilder sb = new StringBuilder("[");
        sb.append(System.lineSeparator());
        sb.append(StringUtils.e(' ', this.w));
        this.i = Objects.toString(sb.toString(), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        this.l = Objects.toString("," + System.lineSeparator() + StringUtils.e(' ', this.w), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
        this.j = Objects.toString(System.lineSeparator() + StringUtils.e(' ', this.w + (-2)) + "]", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
    }

    @Override // org.apache.commons.lang3.builder.RecursiveToStringStyle, org.apache.commons.lang3.builder.ToStringStyle
    public final void e(StringBuffer stringBuffer, String str, Object obj) {
        if (!ClassUtils.f22344c.containsKey(obj.getClass()) && !String.class.equals(obj.getClass())) {
            this.w += 2;
            P();
            stringBuffer.append(new ToStringBuilder(obj, this, 0).toString());
            this.w -= 2;
            P();
            return;
        }
        super.e(stringBuffer, str, obj);
    }

    @Override // org.apache.commons.lang3.builder.ToStringStyle
    public final void g(StringBuffer stringBuffer, String str, byte[] bArr) {
        this.w += 2;
        P();
        super.g(stringBuffer, str, bArr);
        this.w -= 2;
        P();
    }

    @Override // org.apache.commons.lang3.builder.ToStringStyle
    public final void h(StringBuffer stringBuffer, String str, char[] cArr) {
        this.w += 2;
        P();
        super.h(stringBuffer, str, cArr);
        this.w -= 2;
        P();
    }

    @Override // org.apache.commons.lang3.builder.ToStringStyle
    public final void i(StringBuffer stringBuffer, String str, double[] dArr) {
        this.w += 2;
        P();
        super.i(stringBuffer, str, dArr);
        this.w -= 2;
        P();
    }

    @Override // org.apache.commons.lang3.builder.ToStringStyle
    public final void j(StringBuffer stringBuffer, String str, float[] fArr) {
        this.w += 2;
        P();
        super.j(stringBuffer, str, fArr);
        this.w -= 2;
        P();
    }

    @Override // org.apache.commons.lang3.builder.ToStringStyle
    public final void k(StringBuffer stringBuffer, String str, int[] iArr) {
        this.w += 2;
        P();
        super.k(stringBuffer, str, iArr);
        this.w -= 2;
        P();
    }

    @Override // org.apache.commons.lang3.builder.ToStringStyle
    public final void l(StringBuffer stringBuffer, String str, long[] jArr) {
        this.w += 2;
        P();
        super.l(stringBuffer, str, jArr);
        this.w -= 2;
        P();
    }

    @Override // org.apache.commons.lang3.builder.ToStringStyle
    public final void m(StringBuffer stringBuffer, String str, Object[] objArr) {
        this.w += 2;
        P();
        super.m(stringBuffer, str, objArr);
        this.w -= 2;
        P();
    }

    @Override // org.apache.commons.lang3.builder.ToStringStyle
    public final void n(StringBuffer stringBuffer, String str, short[] sArr) {
        this.w += 2;
        P();
        super.n(stringBuffer, str, sArr);
        this.w -= 2;
        P();
    }

    @Override // org.apache.commons.lang3.builder.ToStringStyle
    public final void o(StringBuffer stringBuffer, String str, boolean[] zArr) {
        this.w += 2;
        P();
        super.o(stringBuffer, str, zArr);
        this.w -= 2;
        P();
    }
}
