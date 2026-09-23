package androidx.constraintlayout.widget;

import android.graphics.Canvas;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.SharedValues;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class ReactiveGuide extends View implements SharedValues.SharedValuesListener {

    /* renamed from: c, reason: collision with root package name */
    public int f605c;
    public int f;

    @Override // android.view.View
    public final void draw(Canvas canvas) {
    }

    public int getApplyToConstraintSetId() {
        return this.f;
    }

    public int getAttributeId() {
        return this.f605c;
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setAnimateChange(boolean z) {
    }

    public void setApplyToConstraintSetId(int i) {
        this.f = i;
    }

    public void setAttributeId(int i) {
        HashSet hashSet;
        SharedValues sharedValues = ConstraintLayout.getSharedValues();
        int i2 = this.f605c;
        if (i2 != -1 && (hashSet = (HashSet) sharedValues.f606a.get(Integer.valueOf(i2))) != null) {
            ArrayList arrayList = new ArrayList();
            Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                WeakReference weakReference = (WeakReference) it.next();
                SharedValues.SharedValuesListener sharedValuesListener = (SharedValues.SharedValuesListener) weakReference.get();
                if (sharedValuesListener == null || sharedValuesListener == this) {
                    arrayList.add(weakReference);
                }
            }
            hashSet.removeAll(arrayList);
        }
        this.f605c = i;
        if (i != -1) {
            HashMap hashMap = sharedValues.f606a;
            HashSet hashSet2 = (HashSet) hashMap.get(Integer.valueOf(i));
            if (hashSet2 == null) {
                hashSet2 = new HashSet();
                hashMap.put(Integer.valueOf(i), hashSet2);
            }
            hashSet2.add(new WeakReference(this));
        }
    }

    public void setGuidelineBegin(int i) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.f579a = i;
        setLayoutParams(layoutParams);
    }

    public void setGuidelineEnd(int i) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.b = i;
        setLayoutParams(layoutParams);
    }

    public void setGuidelinePercent(float f) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) getLayoutParams();
        layoutParams.f580c = f;
        setLayoutParams(layoutParams);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
    }
}
