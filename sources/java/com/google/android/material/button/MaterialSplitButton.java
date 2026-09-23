package com.google.android.material.button;

import android.content.res.Resources;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;

/* loaded from: classes3.dex */
public class MaterialSplitButton extends MaterialButtonGroup {
    public static /* synthetic */ void f(MaterialSplitButton materialSplitButton, MaterialButton materialButton, boolean z) {
        int i;
        Resources resources = materialSplitButton.getResources();
        if (z) {
            i = R.string.mtrl_button_expanded_content_description;
        } else {
            i = R.string.mtrl_button_collapsed_content_description;
        }
        materialButton.setStateDescription(resources.getString(i));
    }

    @Override // com.google.android.material.button.MaterialButtonGroup, android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        int i2;
        if (view instanceof MaterialButton) {
            if (getChildCount() <= 2) {
                MaterialButton materialButton = (MaterialButton) view;
                super.addView(view, i, layoutParams);
                if (indexOfChild(view) == 1) {
                    materialButton.setCheckable(true);
                    materialButton.setA11yClassName(Button.class.getName());
                    if (Build.VERSION.SDK_INT >= 30) {
                        Resources resources = getResources();
                        if (materialButton.s) {
                            i2 = R.string.mtrl_button_expanded_content_description;
                        } else {
                            i2 = R.string.mtrl_button_collapsed_content_description;
                        }
                        materialButton.setStateDescription(resources.getString(i2));
                        materialButton.i.add(new MaterialButton.OnCheckedChangeListener() { // from class: com.google.android.material.button.b
                            @Override // com.google.android.material.button.MaterialButton.OnCheckedChangeListener
                            public final void a(MaterialButton materialButton2, boolean z) {
                                MaterialSplitButton.f(MaterialSplitButton.this, materialButton2, z);
                            }
                        });
                        return;
                    }
                    return;
                }
                return;
            }
            throw new IllegalArgumentException("MaterialSplitButton can only hold two MaterialButtons.");
        }
        throw new IllegalArgumentException("MaterialSplitButton can only hold MaterialButtons.");
    }
}
