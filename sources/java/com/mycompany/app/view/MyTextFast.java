package com.mycompany.app.view;

import android.content.Context;
import androidx.appcompat.widget.AppCompatTextView;

/* loaded from: classes3.dex */
public class MyTextFast extends AppCompatTextView {
    public int l;

    public MyTextFast(Context context) {
        super(context, null);
        this.l = 1234;
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        if (this.l == i) {
            return;
        }
        this.l = i;
        super.setTextColor(i);
    }
}
