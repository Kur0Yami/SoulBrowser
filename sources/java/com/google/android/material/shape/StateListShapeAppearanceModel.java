package com.google.android.material.shape;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AttributeSet;
import android.util.StateSet;
import android.util.Xml;
import androidx.annotation.RestrictTo;
import com.google.android.material.R;
import com.google.android.material.shape.ShapeAppearanceModel;
import j$.util.Objects;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParserException;

@RestrictTo
/* loaded from: classes3.dex */
public class StateListShapeAppearanceModel {

    /* renamed from: a, reason: collision with root package name */
    public final int f11908a;
    public final ShapeAppearanceModel b;

    /* renamed from: c, reason: collision with root package name */
    public final int[][] f11909c;
    public final ShapeAppearanceModel[] d;
    public final StateListCornerSize e;
    public final StateListCornerSize f;
    public final StateListCornerSize g;
    public final StateListCornerSize h;

    /* loaded from: classes3.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public int f11910a;
        public ShapeAppearanceModel b;

        /* renamed from: c, reason: collision with root package name */
        public int[][] f11911c;
        public ShapeAppearanceModel[] d;
        public StateListCornerSize e;
        public StateListCornerSize f;
        public StateListCornerSize g;
        public StateListCornerSize h;

        public Builder(ShapeAppearanceModel shapeAppearanceModel) {
            b();
            a(StateSet.WILD_CARD, shapeAppearanceModel);
        }

        public final void a(int[] iArr, ShapeAppearanceModel shapeAppearanceModel) {
            int i = this.f11910a;
            if (i == 0 || iArr.length == 0) {
                this.b = shapeAppearanceModel;
            }
            int[][] iArr2 = this.f11911c;
            if (i >= iArr2.length) {
                int i2 = i + 10;
                int[][] iArr3 = new int[i2];
                System.arraycopy(iArr2, 0, iArr3, 0, i);
                this.f11911c = iArr3;
                ShapeAppearanceModel[] shapeAppearanceModelArr = new ShapeAppearanceModel[i2];
                System.arraycopy(this.d, 0, shapeAppearanceModelArr, 0, i);
                this.d = shapeAppearanceModelArr;
            }
            int[][] iArr4 = this.f11911c;
            int i3 = this.f11910a;
            iArr4[i3] = iArr;
            this.d[i3] = shapeAppearanceModel;
            this.f11910a = i3 + 1;
        }

        public final void b() {
            this.b = new ShapeAppearanceModel();
            this.f11911c = new int[10];
            this.d = new ShapeAppearanceModel[10];
        }
    }

    public StateListShapeAppearanceModel(Builder builder) {
        this.f11908a = builder.f11910a;
        this.b = builder.b;
        this.f11909c = builder.f11911c;
        this.d = builder.d;
        this.e = builder.e;
        this.f = builder.f;
        this.g = builder.g;
        this.h = builder.h;
    }

    public static void a(Builder builder, Context context, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, Resources.Theme theme) {
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
                            obtainStyledAttributes = resources.obtainAttributes(attributeSet, R.styleable.MaterialShape);
                        } else {
                            obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, R.styleable.MaterialShape, 0, 0);
                        }
                        ShapeAppearanceModel a2 = ShapeAppearanceModel.a(context, obtainStyledAttributes.getResourceId(R.styleable.MaterialShape_shapeAppearance, 0), obtainStyledAttributes.getResourceId(R.styleable.MaterialShape_shapeAppearanceOverlay, 0)).a();
                        obtainStyledAttributes.recycle();
                        int attributeCount = attributeSet.getAttributeCount();
                        int[] iArr = new int[attributeCount];
                        int i = 0;
                        for (int i2 = 0; i2 < attributeCount; i2++) {
                            int attributeNameResource = attributeSet.getAttributeNameResource(i2);
                            if (attributeNameResource != R.attr.shapeAppearance && attributeNameResource != R.attr.shapeAppearanceOverlay) {
                                int i3 = i + 1;
                                if (!attributeSet.getAttributeBooleanValue(i2, false)) {
                                    attributeNameResource = -attributeNameResource;
                                }
                                iArr[i] = attributeNameResource;
                                i = i3;
                            }
                        }
                        builder.a(StateSet.trimStateSet(iArr, i), a2);
                    }
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, com.google.android.material.shape.StateListShapeAppearanceModel$Builder] */
    public static StateListShapeAppearanceModel b(Context context, TypedArray typedArray, int i) {
        XmlResourceParser xml;
        int next;
        int resourceId = typedArray.getResourceId(i, 0);
        if (resourceId == 0 || !Objects.equals(context.getResources().getResourceTypeName(resourceId), "xml")) {
            return null;
        }
        ?? obj = new Object();
        obj.b();
        try {
            xml = context.getResources().getXml(resourceId);
        } catch (Resources.NotFoundException | IOException | XmlPullParserException unused) {
            obj.b();
        }
        try {
            AttributeSet asAttributeSet = Xml.asAttributeSet(xml);
            do {
                next = xml.next();
                if (next == 2) {
                    break;
                }
            } while (next != 1);
            if (next == 2) {
                if (xml.getName().equals("selector")) {
                    a(obj, context, xml, asAttributeSet, context.getTheme());
                }
                xml.close();
                if (obj.f11910a == 0) {
                    return null;
                }
                return new StateListShapeAppearanceModel(obj);
            }
            throw new XmlPullParserException("No start tag found");
        } catch (Throwable th) {
            if (xml != null) {
                try {
                    xml.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
            }
            throw th;
        }
    }

    public final ShapeAppearanceModel c() {
        ShapeAppearanceModel shapeAppearanceModel = this.b;
        StateListCornerSize stateListCornerSize = this.h;
        StateListCornerSize stateListCornerSize2 = this.g;
        StateListCornerSize stateListCornerSize3 = this.f;
        StateListCornerSize stateListCornerSize4 = this.e;
        if (stateListCornerSize4 == null && stateListCornerSize3 == null && stateListCornerSize2 == null && stateListCornerSize == null) {
            return shapeAppearanceModel;
        }
        ShapeAppearanceModel.Builder g = shapeAppearanceModel.g();
        if (stateListCornerSize4 != null) {
            g.e = stateListCornerSize4.b;
        }
        if (stateListCornerSize3 != null) {
            g.f = stateListCornerSize3.b;
        }
        if (stateListCornerSize2 != null) {
            g.h = stateListCornerSize2.b;
        }
        if (stateListCornerSize != null) {
            g.g = stateListCornerSize.b;
        }
        return g.a();
    }

    public final boolean d() {
        StateListCornerSize stateListCornerSize;
        StateListCornerSize stateListCornerSize2;
        StateListCornerSize stateListCornerSize3;
        StateListCornerSize stateListCornerSize4;
        if (this.f11908a > 1 || (((stateListCornerSize = this.e) != null && stateListCornerSize.f11906a > 1) || (((stateListCornerSize2 = this.f) != null && stateListCornerSize2.f11906a > 1) || (((stateListCornerSize3 = this.g) != null && stateListCornerSize3.f11906a > 1) || ((stateListCornerSize4 = this.h) != null && stateListCornerSize4.f11906a > 1))))) {
            return true;
        }
        return false;
    }
}
