package com.mycompany.app.video;

import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import androidx.appcompat.widget.AppCompatTextView;
import com.mycompany.app.setting.SettingVideoSub;
import com.mycompany.app.view.MyFadeFrame;
import com.mycompany.app.view.MyTextSub;

/* loaded from: classes3.dex */
public class VideoSubLayout2 extends MyFadeFrame {
    public AppCompatTextView A;
    public SettingVideoSub x;
    public AppCompatTextView y;
    public MyTextSub z;

    @Override // com.mycompany.app.view.MyFadeFrame
    public final void f() {
        super.f();
        this.x = null;
        this.y = null;
        this.z = null;
        this.A = null;
    }

    public final void j(int i, int i2, String str) {
        if (this.y == null || TextUtils.isEmpty(str)) {
            return;
        }
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new BackgroundColorSpan(i), 0, str.length(), 33);
        this.y.setText(spannableString);
        this.y.setAlpha((100 - i2) / 100.0f);
    }

    public void setTextLineColor(int i) {
        MyTextSub myTextSub = this.z;
        if (myTextSub == null) {
            return;
        }
        myTextSub.setOutlineColor(i);
    }

    public void setTextLineSize(int i) {
        int i2;
        MyTextSub myTextSub = this.z;
        if (myTextSub == null) {
            return;
        }
        myTextSub.setOutlineWidth(i);
        MyTextSub myTextSub2 = this.z;
        if (i > 0) {
            i2 = 0;
        } else {
            i2 = 8;
        }
        myTextSub2.setVisibility(i2);
    }

    public void setTextSize(float f) {
        if (this.A == null) {
            return;
        }
        this.y.setTextSize(f);
        this.z.setTextSize(f);
        this.A.setTextSize(f);
    }
}
