package com.mycompany.app.setting;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.mlkit_vision_text_common.a;
import com.mycompany.app.async.MyAsyncTask;
import com.mycompany.app.dialog.DialogSetReset;
import com.mycompany.app.main.MainApp;
import com.mycompany.app.main.MainConst;
import com.mycompany.app.main.MainUtil;
import com.mycompany.app.pref.PrefEditor;
import com.mycompany.app.pref.PrefMain;
import com.mycompany.app.pref.PrefPdf;
import com.mycompany.app.pref.PrefSecret;
import com.mycompany.app.pref.PrefSet;
import com.mycompany.app.pref.PrefSub;
import com.mycompany.app.pref.PrefSync;
import com.mycompany.app.pref.PrefTts;
import com.mycompany.app.pref.PrefWeb;
import com.mycompany.app.pref.PrefZone;
import com.mycompany.app.setting.SettingListAdapter;
import com.mycompany.app.soulbrowser.R;
import com.mycompany.app.view.MyButtonImage;
import com.mycompany.app.view.MyEditPure;
import com.mycompany.app.view.MyHeaderView;
import com.mycompany.app.view.MyMainRelative;
import com.mycompany.app.view.MyRoundView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public class SettingMain extends SettingActivity {
    public static final /* synthetic */ int C2 = 0;
    public boolean A2;
    public boolean B2;
    public String X1;
    public boolean Y1;
    public boolean Z1;
    public boolean a2;
    public int b2;
    public boolean c2;
    public MyButtonImage d2;
    public boolean e2;
    public boolean f2;
    public FrameLayout g2;
    public MyEditPure h2;
    public MyButtonImage i2;
    public MyButtonImage j2;
    public MyRoundView k2;
    public boolean l2;
    public boolean m2;
    public SearchTask n2;
    public ArrayList o2;
    public ArrayList p2;
    public boolean q2;
    public boolean r2;
    public int s2;
    public boolean t2;
    public int u2;
    public int v2;
    public boolean w2;
    public boolean x2;
    public boolean y2;
    public boolean z2;

    /* renamed from: com.mycompany.app.setting.SettingMain$8, reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass8 implements View.OnClickListener {
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public static class SearchTask extends MyAsyncTask {
        public final WeakReference e;
        public ArrayList f;
        public String g;

        public SearchTask(SettingMain settingMain, String str) {
            WeakReference weakReference = new WeakReference(settingMain);
            this.e = weakReference;
            if (((SettingMain) weakReference.get()) == null) {
                return;
            }
            this.g = str;
        }

        /* JADX WARN: Code restructure failed: missing block: B:91:0x00ee, code lost:
        
            if (r14.contains(r5) != false) goto L59;
         */
        /* JADX WARN: Removed duplicated region for block: B:54:0x00f5  */
        /* JADX WARN: Removed duplicated region for block: B:82:0x0185 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:85:0x00d3  */
        /* JADX WARN: Type inference failed for: r14v4, types: [com.mycompany.app.setting.SettingListAdapter$SettingItem, java.lang.Object] */
        @Override // com.mycompany.app.async.MyAsyncTask
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                Method dump skipped, instructions count: 437
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mycompany.app.setting.SettingMain.SearchTask.a():void");
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void d() {
            SettingMain settingMain;
            WeakReference weakReference = this.e;
            if (weakReference == null || (settingMain = (SettingMain) weakReference.get()) == null) {
                return;
            }
            settingMain.n2 = null;
        }

        @Override // com.mycompany.app.async.MyAsyncTask
        public final void e() {
            SettingMain settingMain;
            SettingListAdapter settingListAdapter;
            WeakReference weakReference = this.e;
            if (weakReference != null && (settingMain = (SettingMain) weakReference.get()) != null) {
                settingMain.n2 = null;
                if (settingMain.l2 && (settingListAdapter = settingMain.N1) != null) {
                    settingListAdapter.E(this.f);
                }
            }
        }
    }

    public static ArrayList O0(SettingMain settingMain, Context context) {
        if (context == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        String str = context.getString(R.string.lang_res) + " (GitHub)";
        ArrayList arrayList2 = new ArrayList();
        int i = Build.VERSION.SDK_INT;
        if (i >= 24) {
            arrayList2.add(new SettingListAdapter.SettingItem(context, 1, 1, R.string.default_browser, 0, (String) null));
        }
        if (i >= 26) {
            arrayList2.add(new SettingListAdapter.SettingItem(context, 1, 2, R.string.notification, 0, (String) null));
        }
        arrayList2.add(new SettingListAdapter.SettingItem(context, 1, 4, R.string.locale, 0, (String) null));
        arrayList2.add(new SettingListAdapter.SettingItem(context, 1, 5, str, 0));
        arrayList2.add(new SettingListAdapter.SettingItem(context, 1, 7, R.string.app_keyboard, 0, (String) null));
        arrayList2.add(new SettingListAdapter.SettingItem(context, 1, 8, R.string.double_back, 0, (String) null));
        arrayList2.add(new SettingListAdapter.SettingItem(context, 1, 10, R.string.album_shortcut, R.string.album_short_info, (String) null));
        arrayList2.add(new SettingListAdapter.SettingItem(context, 1, 11, R.string.cast_shortcut, R.string.cast_short_info, (String) null));
        arrayList.addAll(arrayList2);
        StringBuilder sb = new StringBuilder();
        a.x(context, R.string.accept_cookie_info_1, sb, "\n");
        sb.append(context.getString(R.string.accept_cookie_info_2));
        StringBuilder sb2 = new StringBuilder();
        a.x(context, R.string.java_script_info, sb2, "\n");
        sb2.append(context.getString(R.string.dark_mode_info_2));
        String sb3 = sb.toString();
        String sb4 = sb2.toString();
        ArrayList arrayList3 = new ArrayList();
        arrayList3.add(new SettingListAdapter.SettingItem(context, 2, 1, R.string.save_data, R.string.not_support_site, (String) null));
        arrayList3.add(new SettingListAdapter.SettingItem(context, 2, 2, R.string.pre_raster, R.string.memory_warning_1, (String) null));
        arrayList3.add(new SettingListAdapter.SettingItem(context, 2, 3, R.string.block_amp, R.string.block_amp_info, (String) null));
        arrayList3.add(new SettingListAdapter.SettingItem(context, 2, 5, R.string.accept_cookie, 0, sb3));
        arrayList3.add(new SettingListAdapter.SettingItem(context, 2, 6, R.string.third_cookie, 0, (String) null));
        arrayList3.add(new SettingListAdapter.SettingItem(context, 2, 8, R.string.java_script, 0, sb4));
        arrayList3.add(new SettingListAdapter.SettingItem(context, 2, 9, R.string.js_black, R.string.js_black_info, (String) null));
        arrayList3.add(new SettingListAdapter.SettingItem(context, 2, 11, R.string.only_https, R.string.only_https_info, (String) null));
        arrayList3.add(new SettingListAdapter.SettingItem(context, 2, 12, R.string.block_ssl, R.string.block_ssl_info, (String) null));
        arrayList3.add(new SettingListAdapter.SettingItem(context, 2, 14, R.string.debug_mode, R.string.debug_mode_info, (String) null));
        arrayList.addAll(arrayList3);
        String str2 = " (" + context.getString(R.string.long_press) + ")";
        String str3 = context.getString(R.string.link) + str2;
        String str4 = context.getString(R.string.image) + str2;
        ArrayList arrayList4 = new ArrayList();
        arrayList4.add(new SettingListAdapter.SettingItem(context, 3, 1, R.string.home_page, R.string.page_home_info, (String) null));
        arrayList4.add(new SettingListAdapter.SettingItem(context, 3, 2, R.string.start_page, R.string.page_start_info, (String) null));
        arrayList4.add(new SettingListAdapter.SettingItem(context, 3, 3, R.string.new_url, R.string.page_tab_info, (String) null));
        arrayList4.add(new SettingListAdapter.SettingItem(context, 3, 5, R.string.permission, 0, (String) null));
        arrayList4.add(new SettingListAdapter.SettingItem(context, 3, 7, R.string.search_engine, 0, (String) null));
        arrayList4.add(new SettingListAdapter.SettingItem(context, 3, 8, R.string.user_agent, 0, (String) null));
        arrayList4.add(new SettingListAdapter.SettingItem(context, 3, 10, R.string.link_app, 0, (String) null));
        arrayList4.add(new SettingListAdapter.SettingItem(context, 3, 11, str3, 0));
        arrayList4.add(new SettingListAdapter.SettingItem(context, 3, 12, str4, 0));
        arrayList.addAll(arrayList4);
        ArrayList arrayList5 = new ArrayList();
        arrayList5.add(new SettingListAdapter.SettingItem(context, 4, 2, R.string.backup_import, 0, (String) null));
        arrayList5.add(new SettingListAdapter.SettingItem(context, 4, 3, R.string.backup_export, 0, (String) null));
        arrayList.addAll(arrayList5);
        ArrayList arrayList6 = new ArrayList();
        arrayList6.add(new SettingListAdapter.SettingItem(context, 6, 1, R.string.remove_ads, 0, (String) null));
        arrayList6.add(new SettingListAdapter.SettingItem(context, 6, 6, R.string.donate_1, 0, (String) null));
        arrayList6.add(new SettingListAdapter.SettingItem(context, 6, 7, R.string.donate_2, 0, (String) null));
        arrayList.addAll(arrayList6);
        int[] iArr = SettingClean.v2;
        StringBuilder sb5 = new StringBuilder();
        a.x(context, R.string.check_element, sb5, " ");
        String v = a.v(R.string.check_ele_info_0, context, sb5);
        StringBuilder sb6 = new StringBuilder();
        if (PrefPdf.w != 0) {
            sb6.append(context.getString(R.string.app_block_info1));
            if (PrefPdf.w != 2) {
                sb6.append("\n");
                sb6.append(context.getString(R.string.app_block_info2));
            }
        }
        String sb7 = sb6.toString();
        ArrayList arrayList7 = new ArrayList();
        arrayList7.add(new SettingListAdapter.SettingItem(context, 7, 1, R.string.ads_block, R.string.ads_block_info, (String) null));
        arrayList7.add(new SettingListAdapter.SettingItem(context, 7, 2, v, R.string.memory_warning_1));
        arrayList7.add(new SettingListAdapter.SettingItem(context, 7, 3, R.string.ads_filter, 0, (String) null));
        arrayList7.add(new SettingListAdapter.SettingItem(context, 7, 4, R.string.ads_white, R.string.guide_ads_allow, (String) null));
        arrayList7.add(new SettingListAdapter.SettingItem(context, 7, 6, R.string.block_area, R.string.area_info_13, (String) null));
        arrayList7.add(new SettingListAdapter.SettingItem(context, 7, 8, R.string.over_block, SettingClean.w2[PrefTts.u], (String) null));
        arrayList7.add(new SettingListAdapter.SettingItem(context, 7, 9, R.string.over_white, R.string.guide_over_allow, (String) null));
        arrayList7.add(new SettingListAdapter.SettingItem(context, 7, 11, R.string.pop_block, SettingClean.z2[PrefWeb.q], (String) null));
        arrayList7.add(new SettingListAdapter.SettingItem(context, 7, 12, R.string.pop_white, R.string.guide_pop_allow, (String) null));
        arrayList7.add(new SettingListAdapter.SettingItem(context, 7, 14, R.string.app_block, 0, sb7));
        arrayList7.add(new SettingListAdapter.SettingItem(context, 7, 16, R.string.blocked_link, 0, (String) null));
        arrayList7.add(new SettingListAdapter.SettingItem(context, 7, 17, R.string.lock_type, 0, (String) null));
        arrayList7.add(new SettingListAdapter.SettingItem(context, 7, 19, R.string.blocked_image, 0, (String) null));
        arrayList.addAll(arrayList7);
        StringBuilder sb8 = new StringBuilder();
        a.x(context, R.string.down_expire_1, sb8, "\n");
        String v2 = a.v(R.string.down_limit_info, context, sb8);
        StringBuilder sb9 = new StringBuilder();
        a.x(context, R.string.down_back_info_1, sb9, "\n");
        String v3 = a.v(R.string.down_back_info_2, context, sb9);
        ArrayList arrayList8 = new ArrayList();
        arrayList8.add(new SettingListAdapter.SettingItem(context, 8, 1, R.string.down_manager, 0, (String) null));
        arrayList8.add(new SettingListAdapter.SettingItem(context, 8, 2, R.string.down_location, 0, (String) null));
        arrayList8.add(new SettingListAdapter.SettingItem(context, 8, 4, R.string.fast_down, R.string.not_support_site, (String) null));
        arrayList8.add(new SettingListAdapter.SettingItem(context, 8, 5, R.string.retry_count, R.string.retry_count_info, (String) null));
        arrayList8.add(new SettingListAdapter.SettingItem(context, 8, 6, R.string.down_limit, 0, v2));
        arrayList8.add(new SettingListAdapter.SettingItem(context, 8, 7, R.string.down_back_time, 0, v3));
        arrayList8.add(new SettingListAdapter.SettingItem(context, 8, 8, R.string.down_noti, 0, (String) null));
        arrayList8.add(new SettingListAdapter.SettingItem(context, 8, 10, R.string.report_site, R.string.report_down, (String) null));
        arrayList.addAll(arrayList8);
        int[] iArr2 = SettingMedia.d2;
        ArrayList arrayList9 = new ArrayList();
        arrayList9.add(new SettingListAdapter.SettingItem(context, 9, 1, R.string.video_manager, 0, (String) null));
        arrayList9.add(new SettingListAdapter.SettingItem(context, 9, 2, R.string.icon_color, 0, (String) null));
        arrayList9.add(new SettingListAdapter.SettingItem(context, 9, 3, R.string.detail_setting, 0, (String) null));
        arrayList9.add(new SettingListAdapter.SettingItem(context, 9, 6, R.string.back_play, R.string.not_support_site, (String) null));
        arrayList9.add(new SettingListAdapter.SettingItem(context, 9, 10, R.string.youtube_manager, 0, (String) null));
        arrayList9.add(new SettingListAdapter.SettingItem(context, 9, 11, R.string.icon_color, 0, (String) null));
        arrayList9.add(new SettingListAdapter.SettingItem(context, 9, 12, R.string.detail_setting, 0, (String) null));
        arrayList9.add(new SettingListAdapter.SettingItem(context, 9, 14, R.string.youtube_auto, 0, (String) null));
        arrayList9.add(new SettingListAdapter.SettingItem(context, 9, 15, R.string.youtube_unmute, 0, (String) null));
        arrayList.addAll(arrayList9);
        StringBuilder sb10 = new StringBuilder();
        a.x(context, R.string.not_support_site, sb10, "\n");
        String v4 = a.v(R.string.memory_warning_1, context, sb10);
        ArrayList arrayList10 = new ArrayList();
        arrayList10.add(new SettingListAdapter.SettingItem(context, 10, 2, R.string.without_load, 0, v4));
        arrayList10.add(new SettingListAdapter.SettingItem(context, 10, 3, R.string.mem_limit, 0, SettingMemory.S0(context)));
        arrayList10.add(new SettingListAdapter.SettingItem(context, 10, 6, R.string.open_limit, 0, SettingMemory.U0(context)));
        arrayList10.add(new SettingListAdapter.SettingItem(context, 10, 7, R.string.mem_limit, 0, SettingMemory.T0(context)));
        arrayList10.add(new SettingListAdapter.SettingItem(context, 10, 8, R.string.mem_block_list, 0, (String) null));
        arrayList10.add(new SettingListAdapter.SettingItem(context, 10, 10, R.string.mem_keep, R.string.mem_keep_info, (String) null));
        arrayList.addAll(arrayList10);
        int[] iArr3 = SettingDisplay.p2;
        ArrayList arrayList11 = new ArrayList();
        arrayList11.add(new SettingListAdapter.SettingItem(context, 12, 1, "UI", 0));
        arrayList11.add(new SettingListAdapter.SettingItem(context, 12, 2, R.string.web_page, 0, (String) null));
        arrayList11.add(new SettingListAdapter.SettingItem(context, 12, 3, R.string.screen_info_system, 0, (String) null));
        arrayList11.add(new SettingListAdapter.SettingItem(context, 12, 5, R.string.dark_image, R.string.img_brt_info, (String) null));
        arrayList11.add(new SettingListAdapter.SettingItem(context, 12, 6, R.string.img_bright, 0, (String) null));
        arrayList11.add(new SettingListAdapter.SettingItem(context, 12, 8, R.string.header_title, 0, (String) null));
        arrayList11.add(new SettingListAdapter.SettingItem(context, 12, 9, R.string.header_color, 0, (String) null));
        arrayList11.add(new SettingListAdapter.SettingItem(context, 12, 10, R.string.dark_home, R.string.dark_home_info, (String) null));
        arrayList11.add(new SettingListAdapter.SettingItem(context, 12, 19, R.string.folder_color, 0, (String) null));
        arrayList11.add(new SettingListAdapter.SettingItem(context, 12, 20, R.string.link_image_tab, 0, (String) null));
        arrayList11.add(new SettingListAdapter.SettingItem(context, 12, 21, R.string.preview_url_bar, 0, (String) null));
        arrayList11.add(new SettingListAdapter.SettingItem(context, 12, 12, R.string.screen_filter, 0, (String) null));
        arrayList11.add(new SettingListAdapter.SettingItem(context, 12, 13, R.string.filter_color, 0, (String) null));
        arrayList11.add(new SettingListAdapter.SettingItem(context, 12, 15, R.string.brightness, 0, (String) null));
        arrayList11.add(new SettingListAdapter.SettingItem(context, 12, 16, R.string.screen_off, 0, (String) null));
        arrayList11.add(new SettingListAdapter.SettingItem(context, 12, 17, R.string.screen_rotate, 0, (String) null));
        arrayList.addAll(arrayList11);
        ArrayList arrayList12 = new ArrayList();
        arrayList12.add(new SettingListAdapter.SettingItem(context, 15, 1, R.string.tab_add_pos, 0, (String) null));
        arrayList12.add(new SettingListAdapter.SettingItem(context, 15, 2, R.string.auto_group, R.string.auto_group_info, (String) null));
        arrayList12.add(new SettingListAdapter.SettingItem(context, 15, 4, R.string.show_tab_bar, 0, (String) null));
        arrayList12.add(new SettingListAdapter.SettingItem(context, 15, 5, R.string.detail_setting, 0, (String) null));
        arrayList12.add(new SettingListAdapter.SettingItem(context, 15, 6, R.string.tab_swipe_up, 0, (String) null));
        arrayList12.add(new SettingListAdapter.SettingItem(context, 15, 7, R.string.tab_swipe_dn, 0, (String) null));
        arrayList12.add(new SettingListAdapter.SettingItem(context, 15, 9, R.string.tab_indicator, R.string.tab_indi_info, (String) null));
        arrayList12.add(new SettingListAdapter.SettingItem(context, 15, 10, R.string.tab_loop, R.string.tab_loop_info, (String) null));
        arrayList12.add(new SettingListAdapter.SettingItem(context, 15, 11, R.string.use_tab_anim, 0, (String) null));
        arrayList12.add(new SettingListAdapter.SettingItem(context, 15, 13, R.string.undelete, 0, (String) null));
        arrayList12.add(new SettingListAdapter.SettingItem(context, 15, 14, R.string.open_new_tab, 0, (String) null));
        arrayList12.add(new SettingListAdapter.SettingItem(context, 15, 15, R.string.tab_keyboard, 0, (String) null));
        arrayList12.add(new SettingListAdapter.SettingItem(context, 15, 16, R.string.home_close, 0, (String) null));
        arrayList12.add(new SettingListAdapter.SettingItem(context, 15, 18, R.string.last_noti, R.string.last_noti_info, (String) null));
        arrayList12.add(new SettingListAdapter.SettingItem(context, 15, 19, R.string.last_swipe, 0, (String) null));
        arrayList12.add(new SettingListAdapter.SettingItem(context, 15, 20, R.string.last_exit, 0, (String) null));
        arrayList.addAll(arrayList12);
        int[] iArr4 = SettingCustom.h2;
        ArrayList arrayList13 = new ArrayList();
        arrayList13.add(new SettingListAdapter.SettingItem(context, 16, 1, R.string.full_tool, 0, (String) null));
        arrayList13.add(new SettingListAdapter.SettingItem(context, 16, 2, R.string.land_mode, 0, (String) null));
        arrayList13.add(new SettingListAdapter.SettingItem(context, 16, 3, R.string.float_button, 0, (String) null));
        arrayList13.add(new SettingListAdapter.SettingItem(context, 16, 5, R.string.address_label, 0, (String) null));
        arrayList13.add(new SettingListAdapter.SettingItem(context, 16, 6, R.string.address_icon, 0, (String) null));
        arrayList13.add(new SettingListAdapter.SettingItem(context, 16, 7, R.string.search_suggest, 0, (String) null));
        arrayList13.add(new SettingListAdapter.SettingItem(context, 16, 8, R.string.auto_comp, 0, (String) null));
        arrayList13.add(new SettingListAdapter.SettingItem(context, 16, 10, R.string.recent_search, 0, (String) null));
        arrayList13.add(new SettingListAdapter.SettingItem(context, 16, 11, R.string.recent_secret, 0, (String) null));
        arrayList13.add(new SettingListAdapter.SettingItem(context, 16, 13, R.string.onehand_icon, R.string.drag_move_guide, (String) null));
        arrayList13.add(new SettingListAdapter.SettingItem(context, 16, 14, R.string.icon_color, 0, (String) null));
        arrayList13.add(new SettingListAdapter.SettingItem(context, 16, 15, R.string.onehand_area, 0, (String) null));
        arrayList13.add(new SettingListAdapter.SettingItem(context, 16, 17, R.string.pull_refresh, 0, (String) null));
        arrayList13.add(new SettingListAdapter.SettingItem(context, 16, 18, R.string.show_up, 0, (String) null));
        arrayList13.add(new SettingListAdapter.SettingItem(context, 16, 19, R.string.show_scroll, 0, (String) null));
        arrayList13.add(new SettingListAdapter.SettingItem(context, 16, 20, R.string.vol_scroll, 0, (String) null));
        arrayList13.add(new SettingListAdapter.SettingItem(context, 16, 21, R.string.use_scroll_anim, 0, (String) null));
        arrayList.addAll(arrayList13);
        int[] iArr5 = SettingWeb.h2;
        ArrayList arrayList14 = new ArrayList();
        arrayList14.add(new SettingListAdapter.SettingItem(context, 18, 1, R.string.show_image, R.string.show_image_info, (String) null));
        arrayList14.add(new SettingListAdapter.SettingItem(context, 18, 2, R.string.free_scale, 0, (String) null));
        arrayList14.add(new SettingListAdapter.SettingItem(context, 18, 3, R.string.reader_mode, 0, (String) null));
        arrayList14.add(new SettingListAdapter.SettingItem(context, 18, 5, R.string.text_size, 0, (String) null));
        arrayList14.add(new SettingListAdapter.SettingItem(context, 18, 6, R.string.font, R.string.font_info_1, (String) null));
        arrayList14.add(new SettingListAdapter.SettingItem(context, 18, 8, R.string.user_script_on, 0, (String) null));
        arrayList14.add(new SettingListAdapter.SettingItem(context, 18, 9, R.string.user_script_list, 0, (String) null));
        arrayList.addAll(arrayList14);
        String string = context.getString(R.string.move_up);
        String string2 = context.getString(R.string.move_down);
        String string3 = context.getString(R.string.move_left);
        String string4 = context.getString(R.string.move_right);
        String D = android.support.v4.media.a.D(string, " + ", string3);
        String D2 = android.support.v4.media.a.D(string, " + ", string4);
        String D3 = android.support.v4.media.a.D(string2, " + ", string3);
        String D4 = android.support.v4.media.a.D(string2, " + ", string4);
        StringBuilder sb11 = new StringBuilder();
        a.x(context, R.string.tab_gesture, sb11, " ");
        String v5 = a.v(R.string.two_finger, context, sb11);
        ArrayList arrayList15 = new ArrayList();
        arrayList15.add(new SettingListAdapter.SettingItem(context, 19, 1, R.string.swipe, 0, (String) null));
        arrayList15.add(new SettingListAdapter.SettingItem(context, 19, 2, R.string.swipe_sense, 0, (String) null));
        arrayList15.add(new SettingListAdapter.SettingItem(context, 19, 4, D, 0));
        arrayList15.add(new SettingListAdapter.SettingItem(context, 19, 5, D2, 0));
        arrayList15.add(new SettingListAdapter.SettingItem(context, 19, 6, D3, 0));
        arrayList15.add(new SettingListAdapter.SettingItem(context, 19, 7, D4, 0));
        arrayList15.add(new SettingListAdapter.SettingItem(context, 19, 9, v5, 0));
        arrayList.addAll(arrayList15);
        int[] iArr6 = SettingTrans.i2;
        ArrayList arrayList16 = new ArrayList();
        arrayList16.add(new SettingListAdapter.SettingItem(context, 20, 1, R.string.trans_detect, 0, (String) null));
        arrayList16.add(new SettingListAdapter.SettingItem(context, 20, 2, R.string.locale, 0, (String) null));
        arrayList16.add(new SettingListAdapter.SettingItem(context, 20, 3, R.string.recent_lang, 0, (String) null));
        arrayList16.add(new SettingListAdapter.SettingItem(context, 20, 5, R.string.trans_icon_always, 0, (String) null));
        arrayList16.add(new SettingListAdapter.SettingItem(context, 20, 6, R.string.icon_pos, 0, (String) null));
        arrayList16.add(new SettingListAdapter.SettingItem(context, 20, 7, R.string.icon_color, 0, (String) null));
        arrayList16.add(new SettingListAdapter.SettingItem(context, 20, 9, R.string.trans_except, R.string.trans_except_info, (String) null));
        arrayList.addAll(arrayList16);
        StringBuilder sb12 = new StringBuilder();
        a.x(context, R.string.stop_icon_info, sb12, "\n");
        String v6 = a.v(R.string.drag_move_guide, context, sb12);
        ArrayList arrayList17 = new ArrayList();
        arrayList17.add(new SettingListAdapter.SettingItem(context, 21, 1, R.string.tts_on, R.string.tts_info_1, (String) null));
        arrayList17.add(new SettingListAdapter.SettingItem(context, 21, 2, R.string.detail_setting, 0, (String) null));
        arrayList17.add(new SettingListAdapter.SettingItem(context, 21, 4, R.string.stop_icon, 0, v6));
        arrayList17.add(new SettingListAdapter.SettingItem(context, 21, 5, R.string.icon_color, 0, (String) null));
        arrayList.addAll(arrayList17);
        String string5 = context.getString(R.string.web_stream);
        String str5 = context.getString(R.string.video) + " " + string5;
        String str6 = context.getString(R.string.image) + " " + string5;
        ArrayList arrayList18 = new ArrayList();
        arrayList18.add(new SettingListAdapter.SettingItem(context, 22, 1, R.string.cast_on, 0, (String) null));
        arrayList18.add(new SettingListAdapter.SettingItem(context, 22, 2, R.string.repeat_play, 0, (String) null));
        arrayList18.add(new SettingListAdapter.SettingItem(context, 22, 5, R.string.local_file, 0, (String) null));
        arrayList18.add(new SettingListAdapter.SettingItem(context, 22, 6, R.string.subtitle, 0, (String) null));
        arrayList18.add(new SettingListAdapter.SettingItem(context, 22, 7, str5, 0));
        arrayList18.add(new SettingListAdapter.SettingItem(context, 22, 8, str6, 0));
        arrayList.addAll(arrayList18);
        StringBuilder sb13 = new StringBuilder();
        a.x(context, R.string.keyboard_secure_info_1, sb13, "\n");
        String v7 = a.v(R.string.keyboard_secure_info_2, context, sb13);
        ArrayList arrayList19 = new ArrayList();
        arrayList19.add(new SettingListAdapter.SettingItem(context, 24, 1, "Do Not Track", 0));
        arrayList19.add(new SettingListAdapter.SettingItem(context, 24, 2, "Global Privacy Control", 0));
        arrayList19.add(new SettingListAdapter.SettingItem(context, 24, 4, R.string.keyboard_secure, 0, v7));
        arrayList19.add(new SettingListAdapter.SettingItem(context, 24, 6, R.string.app_lock, 0, (String) null));
        arrayList19.add(new SettingListAdapter.SettingItem(context, 24, 7, R.string.only_secret, 0, (String) null));
        arrayList19.add(new SettingListAdapter.SettingItem(context, 24, 8, R.string.lock_reset_target, 0, SettingSecure.P0(context)));
        arrayList19.add(new SettingListAdapter.SettingItem(context, 24, 10, R.string.android_shot, 0, (String) null));
        arrayList.addAll(arrayList19);
        ArrayList arrayList20 = new ArrayList();
        arrayList20.add(new SettingListAdapter.SettingItem(context, 25, 1, R.string.lock_type, 0, (String) null));
        arrayList20.add(new SettingListAdapter.SettingItem(context, 25, 3, R.string.secret_hist, R.string.secret_hist_info, (String) null));
        arrayList20.add(new SettingListAdapter.SettingItem(context, 25, 4, R.string.secret_down, R.string.secret_down_info, (String) null));
        arrayList20.add(new SettingListAdapter.SettingItem(context, 25, 6, R.string.keep_tab, R.string.keep_tab_info, (String) null));
        arrayList20.add(new SettingListAdapter.SettingItem(context, 25, 7, R.string.keep_login, R.string.keep_login_info, (String) null));
        arrayList20.add(new SettingListAdapter.SettingItem(context, 25, 9, R.string.notification, 0, (String) null));
        arrayList20.add(new SettingListAdapter.SettingItem(context, 25, 11, R.string.reset, R.string.secret_reset_guide, (String) null));
        arrayList.addAll(arrayList20);
        StringBuilder sb14 = new StringBuilder();
        a.x(context, R.string.not_support_site, sb14, "\n");
        String v8 = a.v(R.string.password_info, context, sb14);
        ArrayList arrayList21 = new ArrayList();
        arrayList21.add(new SettingListAdapter.SettingItem(context, 26, 1, R.string.password_save, 0, v8));
        arrayList21.add(new SettingListAdapter.SettingItem(context, 26, 2, R.string.login_lock, R.string.login_lock_info, (String) null));
        arrayList21.add(new SettingListAdapter.SettingItem(context, 26, 3, R.string.password_button, R.string.drag_move_guide, (String) null));
        arrayList21.add(new SettingListAdapter.SettingItem(context, 26, 4, R.string.icon_color, 0, (String) null));
        arrayList21.add(new SettingListAdapter.SettingItem(context, 26, 6, R.string.list, 0, (String) null));
        arrayList21.add(new SettingListAdapter.SettingItem(context, 26, 7, R.string.lock_type, 0, (String) null));
        arrayList21.add(new SettingListAdapter.SettingItem(context, 26, 9, R.string.reset, R.string.password_reset_guide, (String) null));
        arrayList.addAll(arrayList21);
        ArrayList arrayList22 = new ArrayList();
        arrayList22.add(new SettingListAdapter.SettingItem(context, 27, 1, R.string.now_delete, 0, (String) null));
        arrayList22.add(new SettingListAdapter.SettingItem(context, 27, 3, R.string.exit_delete, R.string.exit_guide, (String) null));
        arrayList22.add(new SettingListAdapter.SettingItem(context, 27, 4, R.string.exit_del_noti, 0, (String) null));
        arrayList.addAll(arrayList22);
        ArrayList arrayList23 = new ArrayList();
        arrayList23.add(new SettingListAdapter.SettingItem(context, 28, 1, R.string.vpn, R.string.not_support_locale, (String) null));
        arrayList23.add(new SettingListAdapter.SettingItem(context, 28, 3, R.string.vpn_server, 0, (String) null));
        arrayList23.add(new SettingListAdapter.SettingItem(context, 28, 4, R.string.visit_site, 0, (String) null));
        arrayList.addAll(arrayList23);
        ArrayList arrayList24 = new ArrayList();
        arrayList24.add(new SettingListAdapter.SettingItem(context, 33, 1, R.string.app_ver, 0, (String) null));
        arrayList24.add(new SettingListAdapter.SettingItem(context, 33, 7, R.string.webview_ver, 0, (String) null));
        arrayList24.add(new SettingListAdapter.SettingItem(context, 33, 2, R.string.source_code, 0, (String) null));
        arrayList24.add(new SettingListAdapter.SettingItem(context, 33, 3, R.string.bug_tracker, 0, (String) null));
        arrayList24.add(new SettingListAdapter.SettingItem(context, 33, 4, R.string.license, 0, (String) null));
        arrayList.addAll(arrayList24);
        return arrayList;
    }

    public static void P0(SettingMain settingMain) {
        if (settingMain.l2 && settingMain.g2 == null && settingMain.F1 != null) {
            FrameLayout frameLayout = new FrameLayout(settingMain);
            MyRoundView myRoundView = new MyRoundView(settingMain);
            frameLayout.addView(myRoundView, -1, MainApp.b1);
            MyButtonImage myButtonImage = new MyButtonImage(settingMain);
            ImageView.ScaleType scaleType = ImageView.ScaleType.CENTER_INSIDE;
            myButtonImage.setScaleType(scaleType);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(MainApp.g1, MainApp.b1);
            layoutParams.setMarginStart(MainApp.F1);
            frameLayout.addView(myButtonImage, layoutParams);
            MyButtonImage myButtonImage2 = new MyButtonImage(settingMain);
            myButtonImage2.setScaleType(scaleType);
            myButtonImage2.setVisibility(4);
            FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(MainApp.f1, MainApp.b1);
            layoutParams2.gravity = 8388613;
            layoutParams2.setMarginEnd(MainApp.F1);
            frameLayout.addView(myButtonImage2, layoutParams2);
            MyEditPure myEditPure = new MyEditPure(settingMain);
            myEditPure.setGravity(16);
            myEditPure.setSingleLine(true);
            myEditPure.setTextDirection(3);
            myEditPure.setTextSize(1, 16.0f);
            if (Build.VERSION.SDK_INT >= 29) {
                myEditPure.setTextCursorDrawable(R.drawable.edit_cursor);
            }
            myEditPure.setImeOptions(268435459);
            myEditPure.setSelectAllOnFocus(true);
            myEditPure.setBackground(null);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, MainApp.b1);
            layoutParams3.setMarginStart(MainApp.F1 + MainApp.g1);
            layoutParams3.setMarginEnd(MainApp.F1 + MainApp.f1);
            frameLayout.addView(myEditPure, layoutParams3);
            settingMain.g2 = frameLayout;
            settingMain.h2 = myEditPure;
            settingMain.i2 = myButtonImage;
            settingMain.j2 = myButtonImage2;
            settingMain.k2 = myRoundView;
            MyMainRelative myMainRelative = settingMain.E1;
            if (myMainRelative == null) {
                return;
            }
            myMainRelative.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMain.7
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r2v9, types: [android.view.View$OnClickListener, java.lang.Object] */
                @Override // java.lang.Runnable
                public final void run() {
                    FrameLayout frameLayout2;
                    int i;
                    final SettingMain settingMain2 = SettingMain.this;
                    if (settingMain2.l2 && (frameLayout2 = settingMain2.g2) != null && settingMain2.F1 != null) {
                        if (MainApp.K1) {
                            frameLayout2.setBackgroundColor(-16777216);
                            settingMain2.h2.setTextColor(-328966);
                            settingMain2.i2.setImageResource(R.drawable.outline_chevron_left_dark_24);
                            settingMain2.j2.setImageResource(R.drawable.outline_cancel_dark_18);
                            settingMain2.i2.setBgPreColor(-12632257);
                            settingMain2.j2.setBgPreColor(-12632257);
                        } else {
                            frameLayout2.setBackgroundColor(-460552);
                            settingMain2.h2.setTextColor(-16777216);
                            settingMain2.i2.setImageResource(R.drawable.outline_chevron_left_black_24);
                            settingMain2.j2.setImageResource(R.drawable.outline_cancel_black_18);
                            settingMain2.i2.setBgPreColor(-2039584);
                            settingMain2.j2.setBgPreColor(-2039584);
                        }
                        MyRoundView myRoundView2 = settingMain2.k2;
                        if (MainApp.K1) {
                            i = -14606047;
                        } else {
                            i = -1;
                        }
                        myRoundView2.setBackColor(i);
                        settingMain2.g2.setOnClickListener(new Object());
                        settingMain2.i2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingMain.9
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                SettingMain settingMain3 = SettingMain.this;
                                MyEditPure myEditPure2 = settingMain3.h2;
                                if (myEditPure2 != null) {
                                    MainUtil.X4(settingMain3.f1, myEditPure2);
                                    settingMain3.S0();
                                    SettingListAdapter settingListAdapter = settingMain3.N1;
                                    if (settingListAdapter != null) {
                                        settingListAdapter.E(settingMain3.D0());
                                    }
                                }
                            }
                        });
                        settingMain2.j2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingMain.10
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                SettingMain settingMain3 = SettingMain.this;
                                MyButtonImage myButtonImage3 = settingMain3.j2;
                                if (myButtonImage3 == null) {
                                    return;
                                }
                                myButtonImage3.setVisibility(4);
                                settingMain3.h2.setText((CharSequence) null);
                                settingMain3.R0(null);
                            }
                        });
                        settingMain2.h2.addTextChangedListener(new TextWatcher() { // from class: com.mycompany.app.setting.SettingMain.11
                            @Override // android.text.TextWatcher
                            public final void afterTextChanged(Editable editable) {
                                String str;
                                SettingMain settingMain3 = SettingMain.this;
                                if (settingMain3.j2 == null) {
                                    return;
                                }
                                if (!TextUtils.isEmpty(editable)) {
                                    str = editable.toString();
                                } else {
                                    str = null;
                                }
                                if (TextUtils.isEmpty(str)) {
                                    settingMain3.j2.setVisibility(4);
                                } else {
                                    settingMain3.j2.setVisibility(0);
                                    str = str.trim();
                                }
                                boolean isEmpty = TextUtils.isEmpty(str);
                                boolean z = !isEmpty;
                                if (!isEmpty || settingMain3.m2) {
                                    settingMain3.R0(str);
                                }
                                settingMain3.m2 = z;
                            }

                            @Override // android.text.TextWatcher
                            public final void beforeTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                            }

                            @Override // android.text.TextWatcher
                            public final void onTextChanged(CharSequence charSequence, int i2, int i3, int i4) {
                            }
                        });
                        MyMainRelative myMainRelative2 = settingMain2.E1;
                        if (myMainRelative2 == null) {
                            return;
                        }
                        myMainRelative2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMain.12
                            @Override // java.lang.Runnable
                            public final void run() {
                                FrameLayout frameLayout3;
                                MyHeaderView myHeaderView;
                                final SettingMain settingMain3 = SettingMain.this;
                                if (settingMain3.l2 && (frameLayout3 = settingMain3.g2) != null && (myHeaderView = settingMain3.F1) != null) {
                                    myHeaderView.addView(frameLayout3, -1, MainApp.b1);
                                    MyMainRelative myMainRelative3 = settingMain3.E1;
                                    if (myMainRelative3 == null) {
                                        return;
                                    }
                                    myMainRelative3.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMain.13
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            final SettingMain settingMain4 = SettingMain.this;
                                            if (settingMain4.l2 && settingMain4.g2 != null && settingMain4.F1 != null) {
                                                MainUtil.c5(settingMain4.h2);
                                                settingMain4.h2.setFocusable(true);
                                                settingMain4.h2.setFocusableInTouchMode(true);
                                                MyMainRelative myMainRelative4 = settingMain4.E1;
                                                if (myMainRelative4 == null) {
                                                    return;
                                                }
                                                myMainRelative4.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMain.14
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        final SettingMain settingMain5 = SettingMain.this;
                                                        if (settingMain5.l2 && settingMain5.g2 != null && settingMain5.F1 != null) {
                                                            settingMain5.h2.requestFocus();
                                                            settingMain5.h2.postDelayed(new Runnable() { // from class: com.mycompany.app.setting.SettingMain.15
                                                                @Override // java.lang.Runnable
                                                                public final void run() {
                                                                    Context context;
                                                                    SettingMain settingMain6 = SettingMain.this;
                                                                    MyEditPure myEditPure2 = settingMain6.h2;
                                                                    if (myEditPure2 != null && (context = settingMain6.f1) != null) {
                                                                        MainUtil.c8(context, myEditPure2);
                                                                    }
                                                                }
                                                            }, 200L);
                                                            settingMain5.R0(null);
                                                            settingMain5.B2 = false;
                                                            return;
                                                        }
                                                        settingMain5.B2 = false;
                                                    }
                                                });
                                                return;
                                            }
                                            settingMain4.B2 = false;
                                        }
                                    });
                                    return;
                                }
                                settingMain3.B2 = false;
                            }
                        });
                        return;
                    }
                    settingMain2.B2 = false;
                }
            });
            return;
        }
        settingMain.B2 = false;
    }

    @Override // com.mycompany.app.setting.SettingActivity
    public final List D0() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new SettingListAdapter.SettingItem(0, true));
        if (MainApp.K1) {
            arrayList.add(new SettingListAdapter.SettingItem(1, R.string.general, R.drawable.outline_settings_dark_24, 1));
            arrayList.add(new SettingListAdapter.SettingItem(2, R.string.advanced, R.drawable.outline_settings_suggest_dark_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(3, R.string.site, R.drawable.outline_public_dark_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(4, R.string.backup_title, R.drawable.outline_autorenew_dark_24, 2));
            arrayList.add(new SettingListAdapter.SettingItem(5, false));
            arrayList.add(new SettingListAdapter.SettingItem(6, R.string.purchase, R.drawable.outline_credit_card_dark_24, 1));
            arrayList.add(new SettingListAdapter.SettingItem(7, R.string.clean_mode, R.drawable.outline_verified_user_dark_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(8, R.string.down_set, R.drawable.outline_download_dark_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(9, R.string.media, R.drawable.baseline_play_arrow_dark_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(10, R.string.mem_save, R.drawable.outline_energy_savings_leaf_dark_24, 2));
            arrayList.add(new SettingListAdapter.SettingItem(11, false));
            arrayList.add(new SettingListAdapter.SettingItem(12, R.string.display_title, R.drawable.outline_format_color_fill_dark_24, 1));
            arrayList.add(new SettingListAdapter.SettingItem(13, R.string.layout_title, R.drawable.outline_space_dashboard_dark_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(14, R.string.list_menu, R.drawable.outline_dashboard_customize_dark_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(15, R.string.tab_item, R.drawable.outline_filter_none_dark_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(16, R.string.composition, R.drawable.outline_build_dark_24, 2));
            arrayList.add(new SettingListAdapter.SettingItem(17, false));
            arrayList.add(new SettingListAdapter.SettingItem(18, R.string.web_content, R.drawable.outline_web_dark_24, 1));
            arrayList.add(new SettingListAdapter.SettingItem(19, R.string.gesture, R.drawable.outline_gesture_dark_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(20, R.string.translator, R.drawable.outline_translate_dark_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(21, R.string.tts_mode, R.drawable.outline_text_to_speech_dark_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(22, R.string.tv_cast, R.drawable.outline_cast_dark_24, 2));
            arrayList.add(new SettingListAdapter.SettingItem(23, false));
            arrayList.add(new SettingListAdapter.SettingItem(24, R.string.security, R.drawable.outline_security_dark_24, 1));
            arrayList.add(new SettingListAdapter.SettingItem(25, R.string.secret_mode, R.drawable.outline_secret_mode_dark_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(26, R.string.password, R.drawable.outline_lock_dark_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(27, R.string.clear_data, R.drawable.outline_delete_sweep_dark_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(28, R.string.vpn, R.drawable.outline_vpn_key_dark_24, 2));
            arrayList.add(new SettingListAdapter.SettingItem(29, false));
            arrayList.add(new SettingListAdapter.SettingItem(33, R.string.info, R.drawable.outline_info_dark_24, 3));
        } else {
            arrayList.add(new SettingListAdapter.SettingItem(1, R.string.general, R.drawable.outline_settings_black_24, 1));
            arrayList.add(new SettingListAdapter.SettingItem(2, R.string.advanced, R.drawable.outline_settings_suggest_black_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(3, R.string.site, R.drawable.outline_public_black_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(4, R.string.backup_title, R.drawable.outline_autorenew_black_24, 2));
            arrayList.add(new SettingListAdapter.SettingItem(5, false));
            arrayList.add(new SettingListAdapter.SettingItem(6, R.string.purchase, R.drawable.outline_credit_card_black_24, 1));
            arrayList.add(new SettingListAdapter.SettingItem(7, R.string.clean_mode, R.drawable.outline_verified_user_black_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(8, R.string.down_set, R.drawable.outline_download_black_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(9, R.string.media, R.drawable.baseline_play_arrow_black_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(10, R.string.mem_save, R.drawable.outline_energy_savings_leaf_black_24, 2));
            arrayList.add(new SettingListAdapter.SettingItem(11, false));
            arrayList.add(new SettingListAdapter.SettingItem(12, R.string.display_title, R.drawable.outline_format_color_fill_black_24, 1));
            arrayList.add(new SettingListAdapter.SettingItem(13, R.string.layout_title, R.drawable.outline_space_dashboard_black_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(14, R.string.list_menu, R.drawable.outline_dashboard_customize_black_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(15, R.string.tab_item, R.drawable.outline_filter_none_black_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(16, R.string.composition, R.drawable.outline_build_black_24, 2));
            arrayList.add(new SettingListAdapter.SettingItem(17, false));
            arrayList.add(new SettingListAdapter.SettingItem(18, R.string.web_content, R.drawable.outline_web_black_24, 1));
            arrayList.add(new SettingListAdapter.SettingItem(19, R.string.gesture, R.drawable.outline_gesture_black_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(20, R.string.translator, R.drawable.outline_translate_black_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(21, R.string.tts_mode, R.drawable.outline_text_to_speech_black_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(22, R.string.tv_cast, R.drawable.outline_cast_black_24, 2));
            arrayList.add(new SettingListAdapter.SettingItem(23, false));
            arrayList.add(new SettingListAdapter.SettingItem(24, R.string.security, R.drawable.outline_security_black_24, 1));
            arrayList.add(new SettingListAdapter.SettingItem(25, R.string.secret_mode, R.drawable.outline_secret_mode_black_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(26, R.string.password, R.drawable.outline_lock_black_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(27, R.string.clear_data, R.drawable.outline_delete_sweep_black_24, 0));
            arrayList.add(new SettingListAdapter.SettingItem(28, R.string.vpn, R.drawable.outline_vpn_key_black_24, 2));
            arrayList.add(new SettingListAdapter.SettingItem(29, false));
            arrayList.add(new SettingListAdapter.SettingItem(33, R.string.info, R.drawable.outline_info_black_24, 3));
        }
        arrayList.add(new SettingListAdapter.SettingItem(34, false));
        this.o2 = arrayList;
        return arrayList;
    }

    public final void Q0() {
        int i = this.b2;
        int i2 = PrefMain.l;
        if (i != i2) {
            this.b2 = i2;
            MainUtil.w7(this);
        }
        boolean z = this.e2;
        boolean z2 = MainApp.K1;
        if (z != z2) {
            this.e2 = z2;
            T0();
        }
        boolean W5 = MainUtil.W5();
        if (this.c2 != W5) {
            this.c2 = W5;
            MainUtil.p7(this.h2);
        }
    }

    public final void R0(String str) {
        SearchTask searchTask = this.n2;
        if (searchTask != null) {
            searchTask.f12839c = true;
        }
        this.n2 = null;
        SearchTask searchTask2 = new SearchTask(this, str);
        this.n2 = searchTask2;
        searchTask2.b(this.f1);
    }

    public final void S0() {
        this.l2 = false;
        SettingListAdapter settingListAdapter = this.N1;
        if (settingListAdapter != null) {
            settingListAdapter.i = false;
        }
        FrameLayout frameLayout = this.g2;
        if (frameLayout == null) {
            return;
        }
        SearchTask searchTask = this.n2;
        if (searchTask != null) {
            searchTask.f12839c = true;
        }
        this.n2 = null;
        MyHeaderView myHeaderView = this.F1;
        if (myHeaderView != null) {
            myHeaderView.removeView(frameLayout);
            this.g2 = null;
        }
        MyButtonImage myButtonImage = this.i2;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.i2 = null;
        }
        MyButtonImage myButtonImage2 = this.j2;
        if (myButtonImage2 != null) {
            myButtonImage2.j();
            this.j2 = null;
        }
        MyRoundView myRoundView = this.k2;
        if (myRoundView != null) {
            myRoundView.a();
            this.k2 = null;
        }
        this.h2 = null;
    }

    public final void T0() {
        MyButtonImage myButtonImage = this.d2;
        if (myButtonImage == null) {
            return;
        }
        if (MainApp.K1) {
            myButtonImage.setImageResource(R.drawable.outline_search_dark_20);
            this.d2.setBgPreColor(-12632257);
        } else {
            myButtonImage.setImageResource(R.drawable.outline_search_black_20);
            this.d2.setBgPreColor(553648128);
        }
    }

    @Override // android.app.Activity
    public final void finish() {
        if (this.Y1 || this.a2) {
            Intent intent = new Intent();
            if (this.Y1) {
                intent.putExtra("EXTRA_PRELOAD", true);
                intent.putExtra("EXTRA_FILTER", this.Z1);
            }
            if (this.a2) {
                intent.putExtra("EXTRA_STATUS", true);
            }
            setResult(-1, intent);
        }
        super.finish();
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void k0(int i, int i2, Intent intent) {
        if (i == 32) {
            if (i2 == -1) {
                this.Y1 = true;
                if (!this.Z1) {
                    if (intent != null) {
                        this.Z1 = intent.getBooleanExtra("EXTRA_FILTER", true);
                        return;
                    } else {
                        this.Z1 = true;
                        return;
                    }
                }
                return;
            }
            return;
        }
        if (i == 1) {
            if (i2 == -1) {
                this.a2 = true;
            }
        } else if (i == 4) {
            if (i2 == -1) {
                startActivity(new Intent(this.f1, (Class<?>) SettingSecure.class));
            }
        } else if (i == 5) {
            if (i2 == -1) {
                o0(new Intent(this.f1, (Class<?>) SettingSecret.class), 1);
            }
        } else if (i == 2 && i2 == -1) {
            startActivity(new Intent(this.f1, (Class<?>) SettingPassword.class));
        }
    }

    @Override // com.mycompany.app.main.MainActivity
    public final void l0() {
        if (this.l2) {
            S0();
            SettingListAdapter settingListAdapter = this.N1;
            if (settingListAdapter != null) {
                settingListAdapter.E(D0());
                return;
            }
            return;
        }
        finish();
    }

    @Override // com.mycompany.app.main.MainActivity, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (Y()) {
            return;
        }
        l0();
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        boolean z = this.e2;
        boolean z2 = MainApp.K1;
        if (z != z2) {
            this.e2 = z2;
            T0();
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.X1 = getIntent().getStringExtra("EXTRA_PATH");
        this.b2 = PrefMain.l;
        this.c2 = MainUtil.W5();
        o0(null, 32);
        o0(null, 1);
        o0(null, 4);
        o0(null, 5);
        o0(null, 2);
        F0(R.string.setting, true, true);
        this.O1 = MainApp.F1;
        Handler handler = this.O0;
        if (handler == null) {
            return;
        }
        handler.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMain.1
            @Override // java.lang.Runnable
            public final void run() {
                int i = SettingMain.C2;
                final SettingMain settingMain = SettingMain.this;
                if (settingMain.O0 != null) {
                    settingMain.L0(62, new DialogSetReset.DialogResetListener() { // from class: com.mycompany.app.setting.SettingMain.2

                        /* renamed from: com.mycompany.app.setting.SettingMain$2$2, reason: invalid class name and collision with other inner class name */
                        /* loaded from: classes3.dex */
                        class RunnableC02162 implements Runnable {
                            @Override // java.lang.Runnable
                            public final void run() {
                                MainUtil.f7();
                            }
                        }

                        /* JADX WARN: Multi-variable type inference failed */
                        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, java.lang.Runnable] */
                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final void a(boolean z) {
                            if (z) {
                                SettingMain settingMain2 = SettingMain.this;
                                if (settingMain2.N1 != null) {
                                    if (settingMain2.q2 != MainApp.K1) {
                                        settingMain2.H0();
                                    } else {
                                        Handler handler2 = settingMain2.O0;
                                        if (handler2 != null) {
                                            handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMain.2.1
                                                @Override // java.lang.Runnable
                                                public final void run() {
                                                    SettingMain settingMain3 = SettingMain.this;
                                                    SettingListAdapter settingListAdapter = settingMain3.N1;
                                                    if (settingListAdapter != null) {
                                                        settingListAdapter.E(settingMain3.D0());
                                                    }
                                                }
                                            });
                                        } else {
                                            return;
                                        }
                                    }
                                    if (settingMain2.t2 != PrefPdf.n || settingMain2.u2 != PrefPdf.o) {
                                        MainUtil.g7(settingMain2.getWindow(), PrefPdf.o, PrefPdf.n);
                                    }
                                    if (settingMain2.v2 != PrefPdf.m) {
                                        settingMain2.q0(true);
                                    }
                                    settingMain2.Q0();
                                    boolean z2 = false;
                                    settingMain2.I0(MainUtil.l1(), false);
                                    if (settingMain2.r2 != PrefWeb.J || settingMain2.s2 != PrefWeb.L) {
                                        MyMainRelative myMainRelative = settingMain2.E1;
                                        if (myMainRelative != 0) {
                                            myMainRelative.post(new Object());
                                        } else {
                                            return;
                                        }
                                    }
                                    boolean z3 = settingMain2.w2;
                                    boolean z4 = PrefPdf.t;
                                    if (z3 != z4) {
                                        WebView.setWebContentsDebuggingEnabled(z4);
                                    }
                                    boolean z5 = settingMain2.x2;
                                    boolean z6 = PrefWeb.o;
                                    if (z5 != z6) {
                                        settingMain2.x2 = z6;
                                        settingMain2.Y1 = true;
                                        settingMain2.Z1 = true;
                                    }
                                    boolean z7 = settingMain2.y2;
                                    boolean z8 = PrefTts.t;
                                    if (z7 != z8) {
                                        settingMain2.y2 = z8;
                                        settingMain2.Y1 = true;
                                    }
                                    if (settingMain2.z2 != PrefZone.G) {
                                        MainUtil.W4(settingMain2.f1);
                                        Intent intent = new Intent("com.mycompany.app.soulbrowser.ACTION_BACK_STOP");
                                        intent.setPackage(settingMain2.getPackageName());
                                        settingMain2.sendBroadcast(intent);
                                    }
                                    boolean z9 = settingMain2.A2;
                                    boolean z10 = PrefSecret.p;
                                    if (z9 != z10 && PrefSync.k) {
                                        if (!z10 || !MainUtil.T5(settingMain2.f1, 5)) {
                                            z2 = z10;
                                        }
                                        if (z2) {
                                            MainUtil.d8(settingMain2.f1);
                                        } else {
                                            MainUtil.Y4(settingMain2.f1);
                                        }
                                    }
                                }
                            }
                        }

                        @Override // com.mycompany.app.dialog.DialogSetReset.DialogResetListener
                        public final boolean b() {
                            boolean z;
                            boolean z2;
                            boolean z3;
                            boolean z4;
                            boolean z5;
                            boolean z6;
                            boolean z7;
                            boolean z8;
                            boolean z9;
                            boolean z10;
                            boolean z11;
                            boolean z12;
                            boolean z13;
                            boolean z14;
                            boolean z15;
                            boolean z16;
                            boolean z17;
                            boolean z18;
                            boolean z19;
                            boolean z20;
                            boolean z21;
                            boolean z22;
                            boolean z23 = MainApp.K1;
                            SettingMain settingMain2 = SettingMain.this;
                            settingMain2.q2 = z23;
                            settingMain2.r2 = PrefWeb.J;
                            settingMain2.s2 = PrefWeb.L;
                            settingMain2.t2 = PrefPdf.n;
                            settingMain2.u2 = PrefPdf.o;
                            settingMain2.v2 = PrefPdf.m;
                            settingMain2.w2 = PrefPdf.t;
                            settingMain2.x2 = PrefWeb.o;
                            settingMain2.y2 = PrefTts.t;
                            settingMain2.z2 = PrefZone.G;
                            settingMain2.A2 = PrefSecret.p;
                            Context context = settingMain2.f1;
                            if (context != null) {
                                boolean O0 = SettingAdvanced.O0(context);
                                if (settingMain2.G0()) {
                                    return O0;
                                }
                                if (!SettingClean.P0(context) && !O0) {
                                    z = false;
                                } else {
                                    z = true;
                                }
                                if (settingMain2.G0()) {
                                    return z;
                                }
                                if (!SettingCustom.O0(context) && !z) {
                                    z2 = false;
                                } else {
                                    z2 = true;
                                }
                                if (settingMain2.G0()) {
                                    return z2;
                                }
                                if (!SettingDisplay.P0(context) && !z2) {
                                    z3 = false;
                                } else {
                                    z3 = true;
                                }
                                if (settingMain2.G0()) {
                                    return z3;
                                }
                                if (!SettingDown.O0(context) && !z3) {
                                    z4 = false;
                                } else {
                                    z4 = true;
                                }
                                if (settingMain2.G0()) {
                                    return z4;
                                }
                                if (!SettingGeneral.P0(context) && !z4) {
                                    z5 = false;
                                } else {
                                    z5 = true;
                                }
                                if (settingMain2.G0()) {
                                    return z5;
                                }
                                if (!SettingGesture.P0(context) && !z5) {
                                    z6 = false;
                                } else {
                                    z6 = true;
                                }
                                if (settingMain2.G0()) {
                                    return z6;
                                }
                                if (!SettingImage.O0(context) && !z6) {
                                    z7 = false;
                                } else {
                                    z7 = true;
                                }
                                if (settingMain2.G0()) {
                                    return z7;
                                }
                                if (!SettingMedia.O0(context) && !z7) {
                                    z8 = false;
                                } else {
                                    z8 = true;
                                }
                                if (settingMain2.G0()) {
                                    return z8;
                                }
                                if (!SettingMemory.P0(context) && !z8) {
                                    z9 = false;
                                } else {
                                    z9 = true;
                                }
                                if (settingMain2.G0()) {
                                    return z9;
                                }
                                if (!SettingNews.P0(context) && !z9) {
                                    z10 = false;
                                } else {
                                    z10 = true;
                                }
                                if (settingMain2.G0()) {
                                    return z10;
                                }
                                if (!SettingPassword.O0(context) && !z10) {
                                    z11 = false;
                                } else {
                                    z11 = true;
                                }
                                if (settingMain2.G0()) {
                                    return z11;
                                }
                                if (!SettingPrivacy.O0(context) && !z11) {
                                    z12 = false;
                                } else {
                                    z12 = true;
                                }
                                if (settingMain2.G0()) {
                                    return z12;
                                }
                                if (!SettingQuick.O0(context) && !z12) {
                                    z13 = false;
                                } else {
                                    z13 = true;
                                }
                                if (!settingMain2.G0()) {
                                    PrefMain r = PrefMain.r(context, false);
                                    if (!"63,1,31,35".equals(PrefMain.D)) {
                                        PrefMain.D = "63,1,31,35";
                                        r.q("mTopItems");
                                        z14 = true;
                                    } else {
                                        z14 = false;
                                    }
                                    if (!"26,27,28,29,30,2".equals(PrefMain.E)) {
                                        PrefMain.E = "26,27,28,29,30,2";
                                        r.q("mBotItems");
                                        z14 = true;
                                    }
                                    if (!"3,3,44,45,70,65".equals(PrefMain.F)) {
                                        PrefMain.F = "3,3,44,45,70,65";
                                        r.q("mBotLongs");
                                        z14 = true;
                                    }
                                    if (!"0,0,0,0,0,0".equals(PrefMain.G)) {
                                        PrefMain.G = "0,0,0,0,0,0";
                                        r.q("mBotSwipe");
                                        z14 = true;
                                    }
                                    if (z14) {
                                        r.c();
                                    }
                                    if (PrefPdf.z) {
                                        PrefPdf.z = false;
                                        PrefSet.j(context, 7, "mTopToBot");
                                    }
                                    int i2 = PrefPdf.A;
                                    int i3 = MainApp.Y0;
                                    if (i2 != i3) {
                                        PrefPdf.A = i3;
                                        PrefSet.j(context, 7, "mTopHeight");
                                    }
                                    if (PrefEditor.I != 0) {
                                        PrefEditor.I = 0;
                                        PrefSet.j(context, 1, "mBotAlpha");
                                    }
                                    int i4 = PrefPdf.B;
                                    int i5 = MainApp.Y0;
                                    if (i4 != i5) {
                                        PrefPdf.B = i5;
                                        PrefSet.j(context, 7, "mBotHeight");
                                    }
                                    if (!settingMain2.G0()) {
                                        PrefMain r2 = PrefMain.r(context, false);
                                        if (!"3,4,5,7,8,20,66,11,69,60,45,12,14,15,16,41,62,73,6,17,9,54,18,19,47,10,46,32,33,40".equals(PrefMain.B)) {
                                            PrefMain.B = "3,4,5,7,8,20,66,11,69,60,45,12,14,15,16,41,62,73,6,17,9,54,18,19,47,10,46,32,33,40";
                                            r2.q("mMenuItems");
                                            z15 = true;
                                        } else {
                                            z15 = false;
                                        }
                                        if (!"21,22,23,24,25".equals(PrefMain.C)) {
                                            PrefMain.C = "21,22,23,24,25";
                                            r2.q("mMidItems");
                                            z15 = true;
                                        }
                                        if (PrefMain.z != 5) {
                                            PrefMain.z = 5;
                                            r2.q("mMenuPort");
                                            z15 = true;
                                        }
                                        if (z15) {
                                            r2.c();
                                        }
                                        int i6 = PrefPdf.y;
                                        int i7 = MainApp.Y0;
                                        if (i6 != i7) {
                                            PrefPdf.y = i7;
                                            PrefSet.j(context, 7, "mMidHeight");
                                        }
                                        if (!settingMain2.G0()) {
                                            if (!SettingSecret.O0(context) && !z13) {
                                                z16 = false;
                                            } else {
                                                z16 = true;
                                            }
                                            if (settingMain2.G0()) {
                                                return z16;
                                            }
                                            if (!SettingSecure.O0(context) && !z16) {
                                                z17 = false;
                                            } else {
                                                z17 = true;
                                            }
                                            if (settingMain2.G0()) {
                                                return z17;
                                            }
                                            if (!SettingSite.O0(context) && !z17) {
                                                z18 = false;
                                            } else {
                                                z18 = true;
                                            }
                                            if (settingMain2.G0()) {
                                                return z18;
                                            }
                                            if (!SettingTab.P0(context) && !z18) {
                                                z19 = false;
                                            } else {
                                                z19 = true;
                                            }
                                            if (settingMain2.G0()) {
                                                return z19;
                                            }
                                            if (!SettingTrans.P0(context) && !z19) {
                                                z20 = false;
                                            } else {
                                                z20 = true;
                                            }
                                            if (settingMain2.G0()) {
                                                return z20;
                                            }
                                            if (!SettingTts.O0(context) && !z20) {
                                                z21 = false;
                                            } else {
                                                z21 = true;
                                            }
                                            if (settingMain2.G0()) {
                                                return z21;
                                            }
                                            if (!SettingVideo.O0(context) && !z21) {
                                                z22 = false;
                                            } else {
                                                z22 = true;
                                            }
                                            if (!settingMain2.G0()) {
                                                int i8 = MainConst.q[7];
                                                float f = MainConst.p[7];
                                                int r3 = PrefEditor.r(i8, 0);
                                                if (20 != PrefSub.n || 2 != PrefSub.o || PrefSub.p != 0 || i8 != PrefSub.q || f != PrefSub.r || r3 != PrefSub.s || PrefSub.t || PrefSub.u != 0 || i8 != PrefSub.v || f != PrefSub.w) {
                                                    PrefSub.n = 20;
                                                    PrefSub.o = 2;
                                                    PrefSub.p = 0;
                                                    PrefSub.q = i8;
                                                    PrefSub.r = f;
                                                    PrefSub.s = r3;
                                                    PrefSub.t = false;
                                                    PrefSub.u = 0;
                                                    PrefSub.v = i8;
                                                    PrefSub.w = f;
                                                    PrefSub r4 = PrefSub.r(context);
                                                    r4.q("mTextSize");
                                                    r4.q("mLineSize");
                                                    r4.q("mLineAlpha");
                                                    r4.q("mLineColor");
                                                    r4.q("mLinePos");
                                                    r4.q("mBackShow");
                                                    r4.q("mBackAlpha");
                                                    r4.q("mBackColor");
                                                    r4.q("mBackPos");
                                                    r4.c();
                                                }
                                                if (!settingMain2.G0()) {
                                                    if (SettingWeb.O0(context) || z22) {
                                                        return true;
                                                    }
                                                }
                                            }
                                            return z22;
                                        }
                                    }
                                }
                                return z13;
                            }
                            return false;
                        }
                    });
                    MyButtonImage myButtonImage = settingMain.J1;
                    if (myButtonImage != null) {
                        settingMain.d2 = myButtonImage;
                        settingMain.J1 = null;
                        settingMain.e2 = MainApp.K1;
                        settingMain.T0();
                        settingMain.d2.setOnClickListener(new View.OnClickListener() { // from class: com.mycompany.app.setting.SettingMain.3
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                final SettingMain settingMain2 = SettingMain.this;
                                if (!settingMain2.l2) {
                                    settingMain2.l2 = true;
                                    SettingListAdapter settingListAdapter = settingMain2.N1;
                                    if (settingListAdapter != null) {
                                        settingListAdapter.i = true;
                                    }
                                    if (settingMain2.g2 == null && settingMain2.F1 != null) {
                                        settingMain2.f2 = MainUtil.M5();
                                        if (!settingMain2.B2) {
                                            settingMain2.B2 = true;
                                            MyMainRelative myMainRelative = settingMain2.E1;
                                            if (myMainRelative != null) {
                                                myMainRelative.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMain.6
                                                    @Override // java.lang.Runnable
                                                    public final void run() {
                                                        SettingMain.P0(SettingMain.this);
                                                    }
                                                });
                                            }
                                        }
                                    }
                                }
                            }
                        });
                    }
                    Handler handler2 = settingMain.O0;
                    if (handler2 == null) {
                        return;
                    }
                    handler2.post(new Runnable() { // from class: com.mycompany.app.setting.SettingMain.4
                        @Override // java.lang.Runnable
                        public final void run() {
                            int i2 = SettingMain.C2;
                            final SettingMain settingMain2 = SettingMain.this;
                            if (settingMain2.O0 == null) {
                                return;
                            }
                            SettingListAdapter settingListAdapter = new SettingListAdapter((ArrayList) settingMain2.D0(), false, settingMain2.M1, new SettingListAdapter.SettingListener() { // from class: com.mycompany.app.setting.SettingMain.5
                                @Override // com.mycompany.app.setting.SettingListAdapter.SettingListener
                                public final void a(SettingListAdapter.ViewHolder viewHolder, int i3, boolean z, int i4) {
                                    SettingMain settingMain3 = SettingMain.this;
                                    MyEditPure myEditPure = settingMain3.h2;
                                    if (myEditPure != null) {
                                        MainUtil.X4(settingMain3.f1, myEditPure);
                                    }
                                    switch (i3) {
                                        case 1:
                                            Intent intent = new Intent(settingMain3.f1, (Class<?>) SettingGeneral.class);
                                            if (z) {
                                                intent.putExtra("EXTRA_NOTI", true);
                                                intent.putExtra("EXTRA_INDEX", i4);
                                            }
                                            settingMain3.startActivity(intent);
                                            return;
                                        case 2:
                                            Intent intent2 = new Intent(settingMain3.f1, (Class<?>) SettingAdvanced.class);
                                            if (z) {
                                                intent2.putExtra("EXTRA_NOTI", true);
                                                intent2.putExtra("EXTRA_INDEX", i4);
                                            }
                                            intent2.putExtra("EXTRA_PATH", settingMain3.X1);
                                            settingMain3.startActivity(intent2);
                                            return;
                                        case 3:
                                            Intent intent3 = new Intent(settingMain3.f1, (Class<?>) SettingSite.class);
                                            if (z) {
                                                intent3.putExtra("EXTRA_NOTI", true);
                                                intent3.putExtra("EXTRA_INDEX", i4);
                                            }
                                            intent3.putExtra("EXTRA_PATH", settingMain3.X1);
                                            settingMain3.startActivity(intent3);
                                            return;
                                        case 4:
                                            Intent intent4 = new Intent(settingMain3.f1, (Class<?>) SettingBackup.class);
                                            if (z) {
                                                intent4.putExtra("EXTRA_NOTI", true);
                                                intent4.putExtra("EXTRA_INDEX", i4);
                                            }
                                            settingMain3.startActivity(intent4);
                                            return;
                                        case 5:
                                        case 11:
                                        case 17:
                                        case ConnectionResult.API_DISABLED /* 23 */:
                                        case 29:
                                        default:
                                            return;
                                        case 6:
                                            Intent intent5 = new Intent(settingMain3.f1, (Class<?>) SettingPay.class);
                                            if (z) {
                                                intent5.putExtra("EXTRA_NOTI", true);
                                                intent5.putExtra("EXTRA_INDEX", i4);
                                            }
                                            intent5.putExtra("EXTRA_PATH", settingMain3.X1);
                                            settingMain3.o0(intent5, 32);
                                            return;
                                        case 7:
                                            Intent intent6 = new Intent(settingMain3.f1, (Class<?>) SettingClean.class);
                                            if (z) {
                                                intent6.putExtra("EXTRA_NOTI", true);
                                                intent6.putExtra("EXTRA_INDEX", i4);
                                            }
                                            intent6.putExtra("EXTRA_PATH", settingMain3.X1);
                                            settingMain3.o0(intent6, 32);
                                            return;
                                        case 8:
                                            Intent intent7 = new Intent(settingMain3.f1, (Class<?>) SettingDown.class);
                                            if (z) {
                                                intent7.putExtra("EXTRA_NOTI", true);
                                                intent7.putExtra("EXTRA_INDEX", i4);
                                            }
                                            intent7.putExtra("EXTRA_PATH", settingMain3.X1);
                                            settingMain3.startActivity(intent7);
                                            return;
                                        case 9:
                                            Intent intent8 = new Intent(settingMain3.f1, (Class<?>) SettingMedia.class);
                                            if (z) {
                                                intent8.putExtra("EXTRA_NOTI", true);
                                                intent8.putExtra("EXTRA_INDEX", i4);
                                            }
                                            intent8.putExtra("EXTRA_PATH", settingMain3.X1);
                                            settingMain3.startActivity(intent8);
                                            return;
                                        case 10:
                                            Intent intent9 = new Intent(settingMain3.f1, (Class<?>) SettingMemory.class);
                                            if (z) {
                                                intent9.putExtra("EXTRA_NOTI", true);
                                                intent9.putExtra("EXTRA_INDEX", i4);
                                            }
                                            intent9.putExtra("EXTRA_PATH", settingMain3.X1);
                                            settingMain3.startActivity(intent9);
                                            return;
                                        case 12:
                                            Intent intent10 = new Intent(settingMain3.f1, (Class<?>) SettingDisplay.class);
                                            if (z) {
                                                intent10.putExtra("EXTRA_NOTI", true);
                                                intent10.putExtra("EXTRA_INDEX", i4);
                                            }
                                            intent10.putExtra("EXTRA_PATH", settingMain3.X1);
                                            settingMain3.startActivity(intent10);
                                            return;
                                        case 13:
                                            settingMain3.startActivity(new Intent(settingMain3.f1, (Class<?>) SettingLayout.class));
                                            return;
                                        case 14:
                                            settingMain3.startActivity(new Intent(settingMain3.f1, (Class<?>) SettingMenu.class));
                                            return;
                                        case 15:
                                            Intent intent11 = new Intent(settingMain3.f1, (Class<?>) SettingTab.class);
                                            if (z) {
                                                intent11.putExtra("EXTRA_NOTI", true);
                                                intent11.putExtra("EXTRA_INDEX", i4);
                                            }
                                            settingMain3.startActivity(intent11);
                                            return;
                                        case 16:
                                            Intent intent12 = new Intent(settingMain3.f1, (Class<?>) SettingCustom.class);
                                            if (z) {
                                                intent12.putExtra("EXTRA_NOTI", true);
                                                intent12.putExtra("EXTRA_INDEX", i4);
                                            }
                                            intent12.putExtra("EXTRA_PATH", settingMain3.X1);
                                            settingMain3.startActivity(intent12);
                                            return;
                                        case 18:
                                            Intent intent13 = new Intent(settingMain3.f1, (Class<?>) SettingWeb.class);
                                            if (z) {
                                                intent13.putExtra("EXTRA_NOTI", true);
                                                intent13.putExtra("EXTRA_INDEX", i4);
                                            }
                                            intent13.putExtra("EXTRA_PATH", settingMain3.X1);
                                            settingMain3.startActivity(intent13);
                                            return;
                                        case 19:
                                            Intent intent14 = new Intent(settingMain3.f1, (Class<?>) SettingGesture.class);
                                            if (z) {
                                                intent14.putExtra("EXTRA_NOTI", true);
                                                intent14.putExtra("EXTRA_INDEX", i4);
                                            }
                                            settingMain3.startActivity(intent14);
                                            return;
                                        case 20:
                                            Intent intent15 = new Intent(settingMain3.f1, (Class<?>) SettingTrans.class);
                                            if (z) {
                                                intent15.putExtra("EXTRA_NOTI", true);
                                                intent15.putExtra("EXTRA_INDEX", i4);
                                            }
                                            intent15.putExtra("EXTRA_PATH", settingMain3.X1);
                                            settingMain3.startActivity(intent15);
                                            return;
                                        case 21:
                                            Intent intent16 = new Intent(settingMain3.f1, (Class<?>) SettingTts.class);
                                            if (z) {
                                                intent16.putExtra("EXTRA_NOTI", true);
                                                intent16.putExtra("EXTRA_INDEX", i4);
                                            }
                                            settingMain3.startActivity(intent16);
                                            return;
                                        case 22:
                                            Intent intent17 = new Intent(settingMain3.f1, (Class<?>) SettingCast.class);
                                            if (z) {
                                                intent17.putExtra("EXTRA_NOTI", true);
                                                intent17.putExtra("EXTRA_INDEX", i4);
                                            }
                                            settingMain3.startActivity(intent17);
                                            return;
                                        case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                                            int i5 = PrefSecret.s;
                                            if (i5 != 0 && PrefSecret.u && !PrefSync.k) {
                                                Intent i22 = MainUtil.i2(settingMain3.f1, i5);
                                                i22.putExtra("EXTRA_TYPE", 2);
                                                settingMain3.o0(i22, 4);
                                                return;
                                            } else {
                                                Intent intent18 = new Intent(settingMain3.f1, (Class<?>) SettingSecure.class);
                                                if (z) {
                                                    intent18.putExtra("EXTRA_NOTI", true);
                                                    intent18.putExtra("EXTRA_INDEX", i4);
                                                }
                                                settingMain3.startActivity(intent18);
                                                return;
                                            }
                                        case 25:
                                            int i6 = PrefSecret.s;
                                            if (i6 != 0 && PrefSecret.u && !PrefSync.k) {
                                                Intent i23 = MainUtil.i2(settingMain3.f1, i6);
                                                i23.putExtra("EXTRA_TYPE", 2);
                                                settingMain3.o0(i23, 5);
                                                return;
                                            } else {
                                                Intent intent19 = new Intent(settingMain3.f1, (Class<?>) SettingSecret.class);
                                                if (z) {
                                                    intent19.putExtra("EXTRA_NOTI", true);
                                                    intent19.putExtra("EXTRA_INDEX", i4);
                                                }
                                                settingMain3.o0(intent19, 1);
                                                return;
                                            }
                                        case 26:
                                            int i7 = PrefSecret.z;
                                            if (i7 != 0) {
                                                Intent i24 = MainUtil.i2(settingMain3.f1, i7);
                                                i24.putExtra("EXTRA_PASS", 1);
                                                i24.putExtra("EXTRA_TYPE", 2);
                                                settingMain3.o0(i24, 2);
                                                return;
                                            }
                                            Intent intent20 = new Intent(settingMain3.f1, (Class<?>) SettingPassword.class);
                                            if (z) {
                                                intent20.putExtra("EXTRA_NOTI", true);
                                                intent20.putExtra("EXTRA_INDEX", i4);
                                            }
                                            settingMain3.startActivity(intent20);
                                            return;
                                        case 27:
                                            Intent intent21 = new Intent(settingMain3.f1, (Class<?>) SettingPrivacy.class);
                                            if (z) {
                                                intent21.putExtra("EXTRA_NOTI", true);
                                                intent21.putExtra("EXTRA_INDEX", i4);
                                            }
                                            settingMain3.o0(intent21, 1);
                                            return;
                                        case 28:
                                            Intent intent22 = new Intent(settingMain3.f1, (Class<?>) SettingVpn.class);
                                            if (z) {
                                                intent22.putExtra("EXTRA_NOTI", true);
                                                intent22.putExtra("EXTRA_INDEX", i4);
                                            }
                                            settingMain3.startActivity(intent22);
                                            return;
                                        case 30:
                                            MainUtil.Q4(settingMain3, "com.mycompany.app.soulbrowser");
                                            return;
                                        case 31:
                                            MainUtil.a8(settingMain3, "https://play.google.com/store/apps/details?id=com.mycompany.app.soulbrowser", settingMain3.getString(R.string.app_name));
                                            return;
                                        case 32:
                                            try {
                                                Intent intent23 = new Intent("android.intent.action.SENDTO");
                                                intent23.setData(Uri.parse("mailto:"));
                                                intent23.putExtra("android.intent.extra.EMAIL", new String[]{"soulbrowser.com@outlook.com"});
                                                intent23.putExtra("android.intent.extra.SUBJECT", settingMain3.getString(R.string.feedback));
                                                intent23.putExtra("android.intent.extra.TEXT", MainUtil.H0(settingMain3.f1, settingMain3.X1));
                                                settingMain3.startActivity(intent23);
                                                return;
                                            } catch (ActivityNotFoundException unused) {
                                                MainUtil.e8(settingMain3, R.string.apps_none);
                                                return;
                                            } catch (Exception unused2) {
                                                MainUtil.e8(settingMain3, R.string.apps_none);
                                                return;
                                            }
                                        case 33:
                                            Intent intent24 = new Intent(settingMain3.f1, (Class<?>) SettingInfo.class);
                                            if (z) {
                                                intent24.putExtra("EXTRA_NOTI", true);
                                                intent24.putExtra("EXTRA_INDEX", i4);
                                            }
                                            settingMain3.startActivity(intent24);
                                            return;
                                    }
                                }
                            });
                            settingMain2.N1 = settingListAdapter;
                            settingMain2.L1.setAdapter(settingListAdapter);
                            settingMain2.M0();
                        }
                    });
                }
            }
        });
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onDestroy() {
        super.onDestroy();
        if (this.l2) {
            S0();
        }
        MyButtonImage myButtonImage = this.d2;
        if (myButtonImage != null) {
            myButtonImage.j();
            this.d2 = null;
        }
        this.X1 = null;
        this.o2 = null;
        this.p2 = null;
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onPause() {
        super.onPause();
        if (this.l2) {
            S0();
            SettingListAdapter settingListAdapter = this.N1;
            if (settingListAdapter != null) {
                settingListAdapter.E(D0());
            }
            this.p2 = null;
        }
    }

    @Override // com.mycompany.app.setting.SettingActivity, com.mycompany.app.setting.CastActivity, com.mycompany.app.main.MainActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public final void onResume() {
        super.onResume();
        Q0();
    }
}
