package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class ConstraintLayoutStates {

    /* renamed from: a, reason: collision with root package name */
    public final ConstraintLayout f584a;
    public int b = -1;

    /* renamed from: c, reason: collision with root package name */
    public int f585c = -1;
    public final SparseArray d = new SparseArray();
    public final SparseArray e = new SparseArray();

    /* loaded from: classes.dex */
    public static class State {

        /* renamed from: a, reason: collision with root package name */
        public final int f586a;
        public final ArrayList b = new ArrayList();

        /* renamed from: c, reason: collision with root package name */
        public final int f587c;
        public final ConstraintSet d;

        public State(Context context, XmlResourceParser xmlResourceParser) {
            this.f587c = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), R.styleable.State);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == R.styleable.State_android_id) {
                    this.f586a = obtainStyledAttributes.getResourceId(index, this.f586a);
                } else if (index == R.styleable.State_constraints) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, this.f587c);
                    this.f587c = resourceId;
                    String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                    context.getResources().getResourceName(resourceId);
                    if ("layout".equals(resourceTypeName)) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.d = constraintSet;
                        constraintSet.b((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* loaded from: classes.dex */
    public static class Variant {

        /* renamed from: a, reason: collision with root package name */
        public final float f588a;
        public final float b;

        /* renamed from: c, reason: collision with root package name */
        public final float f589c;
        public final float d;
        public final int e;
        public final ConstraintSet f;

        public Variant(Context context, XmlResourceParser xmlResourceParser) {
            this.f588a = Float.NaN;
            this.b = Float.NaN;
            this.f589c = Float.NaN;
            this.d = Float.NaN;
            this.e = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlResourceParser), R.styleable.Variant);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == R.styleable.Variant_constraints) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, this.e);
                    this.e = resourceId;
                    String resourceTypeName = context.getResources().getResourceTypeName(resourceId);
                    context.getResources().getResourceName(resourceId);
                    if ("layout".equals(resourceTypeName)) {
                        ConstraintSet constraintSet = new ConstraintSet();
                        this.f = constraintSet;
                        constraintSet.b((ConstraintLayout) LayoutInflater.from(context).inflate(resourceId, (ViewGroup) null));
                    }
                } else if (index == R.styleable.Variant_region_heightLessThan) {
                    this.d = obtainStyledAttributes.getDimension(index, this.d);
                } else if (index == R.styleable.Variant_region_heightMoreThan) {
                    this.b = obtainStyledAttributes.getDimension(index, this.b);
                } else if (index == R.styleable.Variant_region_widthLessThan) {
                    this.f589c = obtainStyledAttributes.getDimension(index, this.f589c);
                } else if (index == R.styleable.Variant_region_widthMoreThan) {
                    this.f588a = obtainStyledAttributes.getDimension(index, this.f588a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            obtainStyledAttributes.recycle();
        }

        public final boolean a(float f, float f2) {
            float f3 = this.f588a;
            if (!Float.isNaN(f3) && f < f3) {
                return false;
            }
            float f4 = this.b;
            if (!Float.isNaN(f4) && f2 < f4) {
                return false;
            }
            float f5 = this.f589c;
            if (!Float.isNaN(f5) && f > f5) {
                return false;
            }
            float f6 = this.d;
            if (!Float.isNaN(f6) && f2 > f6) {
                return false;
            }
            return true;
        }
    }

    public ConstraintLayoutStates(Context context, ConstraintLayout constraintLayout, int i) {
        String str;
        this.f584a = constraintLayout;
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            State state = null;
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType != 0) {
                    if (eventType == 2) {
                        String name = xml.getName();
                        switch (name.hashCode()) {
                            case -1349929691:
                                if (name.equals("ConstraintSet")) {
                                    a(context, xml);
                                    break;
                                } else {
                                    break;
                                }
                            case 80204913:
                                if (name.equals("State")) {
                                    state = new State(context, xml);
                                    this.d.put(state.f586a, state);
                                    break;
                                } else {
                                    break;
                                }
                            case 1382829617:
                                str = "StateSet";
                                break;
                            case 1657696882:
                                str = "layoutDescription";
                                break;
                            case 1901439077:
                                if (name.equals("Variant")) {
                                    Variant variant = new Variant(context, xml);
                                    if (state != null) {
                                        state.b.add(variant);
                                        break;
                                    } else {
                                        break;
                                    }
                                } else {
                                    break;
                                }
                        }
                        name.equals(str);
                    }
                } else {
                    xml.getName();
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:125:0x0205, code lost:
    
        continue;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:29:0x007e. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:55:0x00c5. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0105 A[Catch: IOException -> 0x008d, XmlPullParserException -> 0x0090, TryCatch #2 {IOException -> 0x008d, XmlPullParserException -> 0x0090, blocks: (B:18:0x005e, B:27:0x0205, B:28:0x0070, B:29:0x007e, B:32:0x0083, B:40:0x0093, B:43:0x00ad, B:46:0x009c, B:50:0x00a5, B:53:0x00bb, B:56:0x00ca, B:58:0x00d2, B:61:0x00dc, B:65:0x0105, B:68:0x010c, B:69:0x0124, B:71:0x00e5, B:73:0x00ed, B:76:0x00fb, B:79:0x0125, B:81:0x012d, B:84:0x013b, B:87:0x0145, B:90:0x0150, B:91:0x0168, B:93:0x0169, B:96:0x0173, B:99:0x017e, B:100:0x0196, B:102:0x0197, B:104:0x019f, B:107:0x01a8, B:110:0x01b2, B:113:0x01bc, B:114:0x01d4, B:116:0x01d5, B:119:0x01df, B:122:0x01e9, B:123:0x0201, B:126:0x0202), top: B:17:0x005e }] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x010c A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(android.content.Context r10, android.content.res.XmlResourceParser r11) {
        /*
            Method dump skipped, instructions count: 602
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayoutStates.a(android.content.Context, android.content.res.XmlResourceParser):void");
    }

    public final void b(float f, float f2, int i) {
        ConstraintSet constraintSet;
        State state;
        ConstraintSet constraintSet2;
        int i2 = this.b;
        int i3 = 0;
        ConstraintLayout constraintLayout = this.f584a;
        SparseArray sparseArray = this.d;
        if (i2 == i) {
            if (i == -1) {
                state = (State) sparseArray.valueAt(0);
            } else {
                state = (State) sparseArray.get(i2);
            }
            int i4 = this.f585c;
            if (i4 == -1 || !((Variant) state.b.get(i4)).a(f, f2)) {
                ArrayList arrayList = state.b;
                while (true) {
                    if (i3 < arrayList.size()) {
                        if (((Variant) arrayList.get(i3)).a(f, f2)) {
                            break;
                        } else {
                            i3++;
                        }
                    } else {
                        i3 = -1;
                        break;
                    }
                }
                ArrayList arrayList2 = state.b;
                if (this.f585c != i3) {
                    if (i3 == -1) {
                        constraintSet2 = null;
                    } else {
                        constraintSet2 = ((Variant) arrayList2.get(i3)).f;
                    }
                    if (i3 != -1) {
                        int i5 = ((Variant) arrayList2.get(i3)).e;
                    }
                    if (constraintSet2 == null) {
                        return;
                    }
                    this.f585c = i3;
                    constraintSet2.a(constraintLayout);
                    constraintLayout.setConstraintSet(null);
                    constraintLayout.requestLayout();
                    return;
                }
                return;
            }
            return;
        }
        this.b = i;
        State state2 = (State) sparseArray.get(i);
        ArrayList arrayList3 = state2.b;
        while (true) {
            if (i3 < arrayList3.size()) {
                if (((Variant) arrayList3.get(i3)).a(f, f2)) {
                    break;
                } else {
                    i3++;
                }
            } else {
                i3 = -1;
                break;
            }
        }
        ArrayList arrayList4 = state2.b;
        if (i3 == -1) {
            constraintSet = state2.d;
        } else {
            constraintSet = ((Variant) arrayList4.get(i3)).f;
        }
        if (i3 != -1) {
            int i6 = ((Variant) arrayList4.get(i3)).e;
        }
        if (constraintSet == null) {
            Log.v("ConstraintLayoutStates", "NO Constraint set found ! id=" + i + ", dim =" + f + ", " + f2);
            return;
        }
        this.f585c = i3;
        constraintSet.a(constraintLayout);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }
}
