package androidx.vectordrawable.graphics.drawable;

import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.TypeEvaluator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.support.v4.media.a;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.InflateException;
import android.view.animation.AnimationUtils;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.TypedArrayUtils;
import androidx.core.graphics.PathParser;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.api.client.http.HttpStatusCodes;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;

@RestrictTo
/* loaded from: classes.dex */
public class AnimatorInflaterCompat {

    /* loaded from: classes.dex */
    public static class PathDataEvaluator implements TypeEvaluator<PathParser.PathDataNode[]> {

        /* renamed from: a, reason: collision with root package name */
        public PathParser.PathDataNode[] f1738a;

        @Override // android.animation.TypeEvaluator
        public final PathParser.PathDataNode[] evaluate(float f, PathParser.PathDataNode[] pathDataNodeArr, PathParser.PathDataNode[] pathDataNodeArr2) {
            PathParser.PathDataNode[] pathDataNodeArr3 = pathDataNodeArr;
            PathParser.PathDataNode[] pathDataNodeArr4 = pathDataNodeArr2;
            if (PathParser.a(pathDataNodeArr3, pathDataNodeArr4)) {
                if (!PathParser.a(this.f1738a, pathDataNodeArr3)) {
                    this.f1738a = PathParser.e(pathDataNodeArr3);
                }
                for (int i = 0; i < pathDataNodeArr3.length; i++) {
                    PathParser.PathDataNode pathDataNode = this.f1738a[i];
                    PathParser.PathDataNode pathDataNode2 = pathDataNodeArr3[i];
                    PathParser.PathDataNode pathDataNode3 = pathDataNodeArr4[i];
                    pathDataNode.getClass();
                    pathDataNode.f685a = pathDataNode2.f685a;
                    int i2 = 0;
                    while (true) {
                        float[] fArr = pathDataNode2.b;
                        if (i2 < fArr.length) {
                            pathDataNode.b[i2] = (pathDataNode3.b[i2] * f) + ((1.0f - f) * fArr[i2]);
                            i2++;
                        }
                    }
                }
                return this.f1738a;
            }
            throw new IllegalArgumentException("Can't interpolate between two incompatible pathData");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x03a3, code lost:
    
        r2 = new android.animation.Animator[r10.size()];
        r3 = r10.size();
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x03ae, code lost:
    
        if (r1 >= r3) goto L220;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x03b0, code lost:
    
        r4 = r10.get(r1);
        r1 = r1 + 1;
        r2[r11] = (android.animation.Animator) r4;
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x03be, code lost:
    
        if (r33 != 0) goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x03c0, code lost:
    
        r32.playTogether(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x03c3, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x03c4, code lost:
    
        r32.playSequentially(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x03c7, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0017, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x039f, code lost:
    
        if (r32 == null) goto L212;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x03a1, code lost:
    
        if (r10 == null) goto L212;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0377 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:33:0x037b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.animation.Animator a(android.content.Context r27, android.content.res.Resources r28, android.content.res.Resources.Theme r29, org.xmlpull.v1.XmlPullParser r30, android.util.AttributeSet r31, android.animation.AnimatorSet r32, int r33) {
        /*
            Method dump skipped, instructions count: 968
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.vectordrawable.graphics.drawable.AnimatorInflaterCompat.a(android.content.Context, android.content.res.Resources, android.content.res.Resources$Theme, org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.animation.AnimatorSet, int):android.animation.Animator");
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [android.animation.TypeEvaluator, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v26, types: [android.animation.TypeEvaluator, java.lang.Object] */
    public static PropertyValuesHolder b(TypedArray typedArray, int i, int i2, int i3, String str) {
        boolean z;
        int i4;
        boolean z2;
        int i5;
        boolean z3;
        ArgbEvaluator argbEvaluator;
        int i6;
        int i7;
        int i8;
        float f;
        PropertyValuesHolder ofFloat;
        float f2;
        float f3;
        TypedValue peekValue = typedArray.peekValue(i2);
        if (peekValue != null) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            i4 = peekValue.type;
        } else {
            i4 = 0;
        }
        TypedValue peekValue2 = typedArray.peekValue(i3);
        if (peekValue2 != null) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (z2) {
            i5 = peekValue2.type;
        } else {
            i5 = 0;
        }
        if (i == 4) {
            if ((z && c(i4)) || (z2 && c(i5))) {
                i = 3;
            } else {
                i = 0;
            }
        }
        if (i == 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        PropertyValuesHolder propertyValuesHolder = null;
        if (i == 2) {
            String string = typedArray.getString(i2);
            String string2 = typedArray.getString(i3);
            PathParser.PathDataNode[] c2 = PathParser.c(string);
            PathParser.PathDataNode[] c3 = PathParser.c(string2);
            if (c2 != null || c3 != null) {
                if (c2 != null) {
                    ?? obj = new Object();
                    if (c3 != null) {
                        if (PathParser.a(c2, c3)) {
                            return PropertyValuesHolder.ofObject(str, (TypeEvaluator) obj, c2, c3);
                        }
                        throw new InflateException(a.m(" Can't morph from ", string, " to ", string2));
                    }
                    return PropertyValuesHolder.ofObject(str, (TypeEvaluator) obj, c2);
                }
                if (c3 != null) {
                    return PropertyValuesHolder.ofObject(str, (TypeEvaluator) new Object(), c3);
                }
            }
            return null;
        }
        if (i == 3) {
            argbEvaluator = ArgbEvaluator.f1739a;
        } else {
            argbEvaluator = null;
        }
        if (z3) {
            if (z) {
                if (i4 == 5) {
                    f2 = typedArray.getDimension(i2, 0.0f);
                } else {
                    f2 = typedArray.getFloat(i2, 0.0f);
                }
                if (z2) {
                    if (i5 == 5) {
                        f3 = typedArray.getDimension(i3, 0.0f);
                    } else {
                        f3 = typedArray.getFloat(i3, 0.0f);
                    }
                    ofFloat = PropertyValuesHolder.ofFloat(str, f2, f3);
                } else {
                    ofFloat = PropertyValuesHolder.ofFloat(str, f2);
                }
            } else {
                if (i5 == 5) {
                    f = typedArray.getDimension(i3, 0.0f);
                } else {
                    f = typedArray.getFloat(i3, 0.0f);
                }
                ofFloat = PropertyValuesHolder.ofFloat(str, f);
            }
            propertyValuesHolder = ofFloat;
        } else if (z) {
            if (i4 == 5) {
                i7 = (int) typedArray.getDimension(i2, 0.0f);
            } else if (c(i4)) {
                i7 = typedArray.getColor(i2, 0);
            } else {
                i7 = typedArray.getInt(i2, 0);
            }
            if (z2) {
                if (i5 == 5) {
                    i8 = (int) typedArray.getDimension(i3, 0.0f);
                } else if (c(i5)) {
                    i8 = typedArray.getColor(i3, 0);
                } else {
                    i8 = typedArray.getInt(i3, 0);
                }
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, i7, i8);
            } else {
                propertyValuesHolder = PropertyValuesHolder.ofInt(str, i7);
            }
        } else if (z2) {
            if (i5 == 5) {
                i6 = (int) typedArray.getDimension(i3, 0.0f);
            } else if (c(i5)) {
                i6 = typedArray.getColor(i3, 0);
            } else {
                i6 = typedArray.getInt(i3, 0);
            }
            propertyValuesHolder = PropertyValuesHolder.ofInt(str, i6);
        }
        if (propertyValuesHolder != null && argbEvaluator != null) {
            propertyValuesHolder.setEvaluator(argbEvaluator);
        }
        return propertyValuesHolder;
    }

    public static boolean c(int i) {
        return i >= 28 && i <= 31;
    }

    public static ValueAnimator d(Context context, Resources resources, Resources.Theme theme, AttributeSet attributeSet, ObjectAnimator objectAnimator, XmlPullParser xmlPullParser) {
        ValueAnimator valueAnimator;
        int i;
        int i2;
        int i3;
        int i4;
        ValueAnimator valueAnimator2;
        int i5;
        int i6;
        ValueAnimator valueAnimator3;
        PropertyValuesHolder propertyValuesHolder;
        PropertyValuesHolder propertyValuesHolder2;
        boolean z;
        int i7;
        boolean z2;
        int i8;
        TypedArray d = TypedArrayUtils.d(resources, theme, attributeSet, AndroidResources.g);
        TypedArray d2 = TypedArrayUtils.d(resources, theme, attributeSet, AndroidResources.k);
        if (objectAnimator == null) {
            valueAnimator = new ValueAnimator();
        } else {
            valueAnimator = objectAnimator;
        }
        boolean c2 = TypedArrayUtils.c(xmlPullParser, "duration");
        int i9 = HttpStatusCodes.STATUS_CODE_MULTIPLE_CHOICES;
        if (c2) {
            i9 = d.getInt(1, HttpStatusCodes.STATUS_CODE_MULTIPLE_CHOICES);
        }
        long j = i9;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "startOffset") != null) {
            i = d.getInt(2, 0);
        } else {
            i = 0;
        }
        long j2 = i;
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "valueType") != null) {
            i2 = d.getInt(7, 4);
        } else {
            i2 = 4;
        }
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "valueFrom") != null && xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "valueTo") != null) {
            if (i2 == 4) {
                TypedValue peekValue = d.peekValue(5);
                if (peekValue != null) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    i7 = peekValue.type;
                } else {
                    i7 = 0;
                }
                TypedValue peekValue2 = d.peekValue(6);
                if (peekValue2 != null) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    i8 = peekValue2.type;
                } else {
                    i8 = 0;
                }
                if ((z && c(i7)) || (z2 && c(i8))) {
                    i2 = 3;
                } else {
                    i2 = 0;
                }
            }
            PropertyValuesHolder b = b(d, i2, 5, 6, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
            if (b != null) {
                valueAnimator.setValues(b);
            }
        }
        valueAnimator.setDuration(j);
        valueAnimator.setStartDelay(j2);
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "repeatCount") != null) {
            i3 = d.getInt(3, 0);
        } else {
            i3 = 0;
        }
        valueAnimator.setRepeatCount(i3);
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "repeatMode") != null) {
            i4 = d.getInt(4, 1);
        } else {
            i4 = 1;
        }
        valueAnimator.setRepeatMode(i4);
        if (d2 != null) {
            ObjectAnimator objectAnimator2 = (ObjectAnimator) valueAnimator;
            String b2 = TypedArrayUtils.b(d2, xmlPullParser, "pathData", 1);
            if (b2 != null) {
                String b3 = TypedArrayUtils.b(d2, xmlPullParser, "propertyXName", 2);
                String b4 = TypedArrayUtils.b(d2, xmlPullParser, "propertyYName", 3);
                if (i2 != 2) {
                }
                if (b3 == null && b4 == null) {
                    throw new InflateException(d2.getPositionDescription() + " propertyXName or propertyYName is needed for PathData");
                }
                Path d3 = PathParser.d(b2);
                PathMeasure pathMeasure = new PathMeasure(d3, false);
                ArrayList arrayList = new ArrayList();
                arrayList.add(Float.valueOf(0.0f));
                float f = 0.0f;
                do {
                    f += pathMeasure.getLength();
                    arrayList.add(Float.valueOf(f));
                } while (pathMeasure.nextContour());
                PathMeasure pathMeasure2 = new PathMeasure(d3, false);
                int min = Math.min(100, ((int) (f / 0.5f)) + 1);
                float[] fArr = new float[min];
                float[] fArr2 = new float[min];
                float[] fArr3 = new float[2];
                float f2 = f / (min - 1);
                int i10 = 0;
                valueAnimator2 = valueAnimator;
                float f3 = 0.0f;
                int i11 = 0;
                while (true) {
                    propertyValuesHolder = null;
                    if (i10 >= min) {
                        break;
                    }
                    int i12 = min;
                    pathMeasure2.getPosTan(f3 - ((Float) arrayList.get(i11)).floatValue(), fArr3, null);
                    fArr[i10] = fArr3[0];
                    fArr2[i10] = fArr3[1];
                    int i13 = i11 + 1;
                    f3 += f2;
                    if (i13 < arrayList.size() && f3 > ((Float) arrayList.get(i13)).floatValue()) {
                        pathMeasure2.nextContour();
                        i11 = i13;
                    }
                    i10++;
                    min = i12;
                }
                if (b3 != null) {
                    propertyValuesHolder2 = PropertyValuesHolder.ofFloat(b3, fArr);
                } else {
                    propertyValuesHolder2 = null;
                }
                if (b4 != null) {
                    propertyValuesHolder = PropertyValuesHolder.ofFloat(b4, fArr2);
                }
                if (propertyValuesHolder2 == null) {
                    objectAnimator2.setValues(propertyValuesHolder);
                } else if (propertyValuesHolder == null) {
                    objectAnimator2.setValues(propertyValuesHolder2);
                } else {
                    objectAnimator2.setValues(propertyValuesHolder2, propertyValuesHolder);
                }
                i5 = 0;
            } else {
                valueAnimator2 = valueAnimator;
                i5 = 0;
                objectAnimator2.setPropertyName(TypedArrayUtils.b(d2, xmlPullParser, "propertyName", 0));
            }
        } else {
            valueAnimator2 = valueAnimator;
            i5 = 0;
        }
        if (xmlPullParser.getAttributeValue("http://schemas.android.com/apk/res/android", "interpolator") != null) {
            i6 = d.getResourceId(i5, i5);
        } else {
            i6 = i5;
        }
        if (i6 > 0) {
            valueAnimator3 = valueAnimator2;
            valueAnimator3.setInterpolator(AnimationUtils.loadInterpolator(context, i6));
        } else {
            valueAnimator3 = valueAnimator2;
        }
        d.recycle();
        if (d2 != null) {
            d2.recycle();
        }
        return valueAnimator3;
    }
}
