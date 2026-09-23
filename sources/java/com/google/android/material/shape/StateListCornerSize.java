package com.google.android.material.shape;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import androidx.annotation.RestrictTo;
import com.google.android.material.R;

@RestrictTo
/* loaded from: classes3.dex */
public class StateListCornerSize {

    /* renamed from: a, reason: collision with root package name */
    public int f11906a;
    public CornerSize b;

    /* renamed from: c, reason: collision with root package name */
    public int[][] f11907c = new int[10];
    public CornerSize[] d = new CornerSize[10];

    public static StateListCornerSize b(CornerSize cornerSize) {
        StateListCornerSize stateListCornerSize = new StateListCornerSize();
        stateListCornerSize.a(StateSet.WILD_CARD, cornerSize);
        return stateListCornerSize;
    }

    public final void a(int[] iArr, CornerSize cornerSize) {
        int i = this.f11906a;
        if (i == 0 || iArr.length == 0) {
            this.b = cornerSize;
        }
        int[][] iArr2 = this.f11907c;
        if (i >= iArr2.length) {
            int i2 = i + 10;
            int[][] iArr3 = new int[i2];
            System.arraycopy(iArr2, 0, iArr3, 0, i);
            this.f11907c = iArr3;
            CornerSize[] cornerSizeArr = new CornerSize[i2];
            System.arraycopy(this.d, 0, cornerSizeArr, 0, i);
            this.d = cornerSizeArr;
        }
        int[][] iArr4 = this.f11907c;
        int i3 = this.f11906a;
        iArr4[i3] = iArr;
        this.d[i3] = cornerSize;
        this.f11906a = i3 + 1;
    }

    public final CornerSize c(int[] iArr) {
        int i;
        int[][] iArr2 = this.f11907c;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = -1;
            if (i3 < this.f11906a) {
                if (StateSet.stateSetMatches(iArr2[i3], iArr)) {
                    break;
                }
                i3++;
            } else {
                i3 = -1;
                break;
            }
        }
        if (i3 < 0) {
            int[] iArr3 = StateSet.WILD_CARD;
            int[][] iArr4 = this.f11907c;
            while (true) {
                if (i2 >= this.f11906a) {
                    break;
                }
                if (StateSet.stateSetMatches(iArr4[i2], iArr3)) {
                    i = i2;
                    break;
                }
                i2++;
            }
            i3 = i;
        }
        if (i3 < 0) {
            return this.b;
        }
        return this.d[i3];
    }

    public final void d(Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
        TypedArray obtainStyledAttributes;
        int depth = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next != 1) {
                int depth2 = xmlResourceParser.getDepth();
                if (depth2 >= depth || next != 3) {
                    if (next == 2 && depth2 <= depth && xmlResourceParser.getName().equals("item")) {
                        Resources resources = context.getResources();
                        if (theme == null) {
                            obtainStyledAttributes = resources.obtainAttributes(attributeSet, R.styleable.ShapeAppearance);
                        } else {
                            obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.ShapeAppearance, 0, 0);
                        }
                        CornerSize d = ShapeAppearanceModel.d(obtainStyledAttributes, R.styleable.ShapeAppearance_cornerSize, new AbsoluteCornerSize(0.0f));
                        obtainStyledAttributes.recycle();
                        int attributeCount = attributeSet.getAttributeCount();
                        int[] iArr = new int[attributeCount];
                        int i = 0;
                        for (int i2 = 0; i2 < attributeCount; i2++) {
                            int attributeNameResource = attributeSet.getAttributeNameResource(i2);
                            if (attributeNameResource != R.attr.cornerSize) {
                                int i3 = i + 1;
                                if (!attributeSet.getAttributeBooleanValue(i2, false)) {
                                    attributeNameResource = -attributeNameResource;
                                }
                                iArr[i] = attributeNameResource;
                                i = i3;
                            }
                        }
                        a(StateSet.trimStateSet(iArr, i), d);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }
}
