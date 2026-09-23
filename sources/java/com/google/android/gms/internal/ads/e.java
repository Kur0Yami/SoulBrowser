package com.google.android.gms.internal.ads;

import android.media.MediaCodecInfo;
import android.text.Editable;
import com.google.android.material.carousel.MaskableFrameLayout;
import com.google.android.material.shape.AbsoluteCornerSize;
import com.google.android.material.shape.ClampedCornerSize;
import com.google.android.material.shape.CornerSize;
import com.google.android.material.shape.ShapeAppearanceModel;
import com.google.android.material.textfield.TextInputLayout;
import java.nio.file.attribute.AclEntryType;

/* loaded from: classes.dex */
public final /* synthetic */ class e implements ShapeAppearanceModel.CornerSizeUnaryOperator, TextInputLayout.LengthCounter {
    public static /* bridge */ /* synthetic */ MediaCodecInfo.VideoCapabilities.PerformancePoint d(Object obj) {
        return (MediaCodecInfo.VideoCapabilities.PerformancePoint) obj;
    }

    public static /* bridge */ /* synthetic */ AclEntryType e() {
        return AclEntryType.ALLOW;
    }

    @Override // com.google.android.material.shape.ShapeAppearanceModel.CornerSizeUnaryOperator
    public CornerSize a(CornerSize cornerSize) {
        int i = MaskableFrameLayout.h;
        if (cornerSize instanceof AbsoluteCornerSize) {
            return new ClampedCornerSize(((AbsoluteCornerSize) cornerSize).f11874a);
        }
        return cornerSize;
    }

    @Override // com.google.android.material.textfield.TextInputLayout.LengthCounter
    public int b(Editable editable) {
        int i = TextInputLayout.H0;
        if (editable != null) {
            return editable.length();
        }
        return 0;
    }
}
