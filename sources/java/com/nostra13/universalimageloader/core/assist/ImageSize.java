package com.nostra13.universalimageloader.core.assist;

/* loaded from: classes3.dex */
public class ImageSize {

    /* renamed from: a, reason: collision with root package name */
    public final int f20988a;
    public final int b;

    public ImageSize(int i, int i2) {
        this.f20988a = i;
        this.b = i2;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(9);
        sb.append(this.f20988a);
        sb.append("x");
        sb.append(this.b);
        return sb.toString();
    }

    public ImageSize(int i, int i2, int i3) {
        if (i3 % 180 == 0) {
            this.f20988a = i;
            this.b = i2;
        } else {
            this.f20988a = i2;
            this.b = i;
        }
    }
}
