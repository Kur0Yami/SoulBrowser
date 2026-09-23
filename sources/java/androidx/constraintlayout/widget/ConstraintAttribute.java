package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.TypedValue;
import android.util.Xml;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ConstraintAttribute {

    /* renamed from: a, reason: collision with root package name */
    public boolean f572a = false;
    public String b;

    /* renamed from: c, reason: collision with root package name */
    public AttributeType f573c;
    public int d;
    public float e;
    public String f;
    public boolean g;
    public int h;

    /* renamed from: androidx.constraintlayout.widget.ConstraintAttribute$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f574a;

        static {
            int[] iArr = new int[AttributeType.values().length];
            f574a = iArr;
            try {
                iArr[7] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f574a[5] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f574a[4] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f574a[2] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f574a[3] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f574a[0] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f574a[1] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f574a[6] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class AttributeType {

        /* renamed from: c, reason: collision with root package name */
        public static final AttributeType f575c;
        public static final AttributeType f;
        public static final AttributeType g;
        public static final AttributeType h;
        public static final AttributeType i;
        public static final AttributeType j;
        public static final AttributeType k;
        public static final AttributeType l;
        public static final /* synthetic */ AttributeType[] m;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.constraintlayout.widget.ConstraintAttribute$AttributeType] */
        /* JADX WARN: Type inference failed for: r11v1, types: [java.lang.Enum, androidx.constraintlayout.widget.ConstraintAttribute$AttributeType] */
        /* JADX WARN: Type inference failed for: r13v1, types: [java.lang.Enum, androidx.constraintlayout.widget.ConstraintAttribute$AttributeType] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.constraintlayout.widget.ConstraintAttribute$AttributeType] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, androidx.constraintlayout.widget.ConstraintAttribute$AttributeType] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, androidx.constraintlayout.widget.ConstraintAttribute$AttributeType] */
        /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, androidx.constraintlayout.widget.ConstraintAttribute$AttributeType] */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, androidx.constraintlayout.widget.ConstraintAttribute$AttributeType] */
        static {
            ?? r0 = new Enum("INT_TYPE", 0);
            f575c = r0;
            ?? r1 = new Enum("FLOAT_TYPE", 1);
            f = r1;
            ?? r3 = new Enum("COLOR_TYPE", 2);
            g = r3;
            ?? r5 = new Enum("COLOR_DRAWABLE_TYPE", 3);
            h = r5;
            ?? r7 = new Enum("STRING_TYPE", 4);
            i = r7;
            ?? r9 = new Enum("BOOLEAN_TYPE", 5);
            j = r9;
            ?? r11 = new Enum("DIMENSION_TYPE", 6);
            k = r11;
            ?? r13 = new Enum("REFERENCE_TYPE", 7);
            l = r13;
            m = new AttributeType[]{r0, r1, r3, r5, r7, r9, r11, r13};
        }

        public static AttributeType valueOf(String str) {
            return (AttributeType) Enum.valueOf(AttributeType.class, str);
        }

        public static AttributeType[] values() {
            return (AttributeType[]) m.clone();
        }
    }

    public ConstraintAttribute(ConstraintAttribute constraintAttribute, Object obj) {
        this.b = constraintAttribute.b;
        this.f573c = constraintAttribute.f573c;
        b(obj);
    }

    /* JADX WARN: Type inference failed for: r12v1, types: [java.lang.Object, androidx.constraintlayout.widget.ConstraintAttribute] */
    public static void a(Context context, XmlResourceParser xmlResourceParser, HashMap hashMap) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), R.styleable.CustomAttribute);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str = null;
        Object obj = null;
        AttributeType attributeType = null;
        boolean z = false;
        for (int i = 0; i < indexCount; i++) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == R.styleable.CustomAttribute_attributeName) {
                str = obtainStyledAttributes.getString(index);
                if (str != null && str.length() > 0) {
                    str = Character.toUpperCase(str.charAt(0)) + str.substring(1);
                }
            } else if (index == R.styleable.CustomAttribute_methodName) {
                str = obtainStyledAttributes.getString(index);
                z = true;
            } else if (index == R.styleable.CustomAttribute_customBoolean) {
                obj = Boolean.valueOf(obtainStyledAttributes.getBoolean(index, false));
                attributeType = AttributeType.j;
            } else if (index == R.styleable.CustomAttribute_customColorValue) {
                obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                attributeType = AttributeType.g;
            } else if (index == R.styleable.CustomAttribute_customColorDrawableValue) {
                obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                attributeType = AttributeType.h;
            } else {
                int i2 = R.styleable.CustomAttribute_customPixelDimension;
                AttributeType attributeType2 = AttributeType.k;
                if (index == i2) {
                    obj = Float.valueOf(TypedValue.applyDimension(1, obtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                } else if (index == R.styleable.CustomAttribute_customDimension) {
                    obj = Float.valueOf(obtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == R.styleable.CustomAttribute_customFloatValue) {
                    obj = Float.valueOf(obtainStyledAttributes.getFloat(index, Float.NaN));
                    attributeType = AttributeType.f;
                } else if (index == R.styleable.CustomAttribute_customIntegerValue) {
                    obj = Integer.valueOf(obtainStyledAttributes.getInteger(index, -1));
                    attributeType = AttributeType.f575c;
                } else if (index == R.styleable.CustomAttribute_customStringValue) {
                    obj = obtainStyledAttributes.getString(index);
                    attributeType = AttributeType.i;
                } else if (index == R.styleable.CustomAttribute_customReference) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, -1);
                    if (resourceId == -1) {
                        resourceId = obtainStyledAttributes.getInt(index, -1);
                    }
                    obj = Integer.valueOf(resourceId);
                    attributeType = AttributeType.l;
                }
                attributeType = attributeType2;
            }
        }
        if (str != null && obj != null) {
            ?? obj2 = new Object();
            obj2.b = str;
            obj2.f573c = attributeType;
            obj2.f572a = z;
            obj2.b(obj);
            hashMap.put(str, obj2);
        }
        obtainStyledAttributes.recycle();
    }

    public final void b(Object obj) {
        switch (this.f573c.ordinal()) {
            case 0:
            case 7:
                this.d = ((Integer) obj).intValue();
                return;
            case 1:
                this.e = ((Float) obj).floatValue();
                return;
            case 2:
            case 3:
                this.h = ((Integer) obj).intValue();
                return;
            case 4:
                this.f = (String) obj;
                return;
            case 5:
                this.g = ((Boolean) obj).booleanValue();
                return;
            case 6:
                this.e = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }
}
