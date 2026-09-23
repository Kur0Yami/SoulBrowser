package com.mycompany.app.setting;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.URLSpan;
import android.view.View;
import com.mycompany.app.soulbrowser.R;

/** URLSpan that opens https links via SettingInfo.P0 (in-app web dialog). */
public final class SettingInfoUrlSpan extends URLSpan {
    public SettingInfoUrlSpan(String url) {
        super(url);
    }

    public static CharSequence a(CharSequence text) {
        if (text == null || !(text instanceof Spanned)) {
            return text;
        }
        SpannableStringBuilder ssb = new SpannableStringBuilder(text);
        URLSpan[] spans = ssb.getSpans(0, ssb.length(), URLSpan.class);
        if (spans != null) {
            for (URLSpan span : spans) {
                if (span instanceof SettingInfoUrlSpan || span == null) {
                    continue;
                }
                int start = ssb.getSpanStart(span);
                int end = ssb.getSpanEnd(span);
                int flags = ssb.getSpanFlags(span);
                String url = span.getURL();
                ssb.removeSpan(span);
                ssb.setSpan(new SettingInfoUrlSpan(url), start, end, flags);
            }
        }
        return ssb;
    }

    @Override
    public void onClick(View widget) {
        Context context = widget.getContext();
        while (context instanceof ContextWrapper && !(context instanceof Activity)) {
            context = ((ContextWrapper) context).getBaseContext();
        }
        if (context instanceof SettingInfo) {
            ((SettingInfo) context).P0(getURL(), R.string.info, true);
            return;
        }
        super.onClick(widget);
    }
}
