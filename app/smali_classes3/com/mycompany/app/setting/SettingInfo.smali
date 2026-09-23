.class public Lcom/mycompany/app/setting/SettingInfo;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# static fields
.field public static final synthetic Z1:I


# instance fields
.field public X1:Lcom/mycompany/app/dialog/DialogWebVie2;

.field public Y1:Lcom/mycompany/app/dialog/DialogGreeting;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final D0()Ljava/util/List;
    .locals 12

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # App version (id=1)
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v4, Lnet/kaki87/soul2/testing/R$string;->app_ver:I

    iget-object v5, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    invoke-static {v5}, Lcom/mycompany/app/main/MainUtil;->c4(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v3, v4, v5, v3}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # Build date (id=8)
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v4, Lnet/kaki87/soul2/testing/R$string;->build_date:I

    sget v6, Lnet/kaki87/soul2/testing/R$string;->build_date_value:I

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x8

    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # WebView version (id=7)
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v4, Lnet/kaki87/soul2/testing/R$string;->webview_ver:I

    invoke-static {}, Lcom/mycompany/app/setting/SettingInfo;->R0()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x7

    invoke-direct {v1, v6, v4, v5, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # Source code (id=2)
    new-instance v4, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v6, Lnet/kaki87/soul2/testing/R$string;->source_code:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x2

    const/4 v7, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # Bug tracker (id=3)
    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v7, Lnet/kaki87/soul2/testing/R$string;->bug_tracker:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x3

    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # License (id=4)
    new-instance v6, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    sget v8, Lnet/kaki87/soul2/testing/R$string;->license:I

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v7, 0x4

    invoke-direct/range {v6 .. v11}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IIIII)V

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # spacer (id=5)
    new-instance v1, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IZ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    # INFO paragraph (id=6, type=4)
    sget v1, Lnet/kaki87/soul2/testing/R$string;->soul2_info_text:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v5, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x3

    invoke-direct/range {v5 .. v10}, Lcom/mycompany/app/setting/SettingListAdapter$SettingItem;-><init>(IILjava/lang/String;ZI)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static R0()Ljava/lang/String;
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-static {}, Landroidx/webkit/internal/ApiHelperForO;->a()Landroid/content/pm/PackageInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/webkit/WebViewCompat;->a()Landroid/content/pm/PackageInfo;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v0, :cond_1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public final S0()V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WEBVIEW_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final T0()V
    .locals 2

    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity;->J1:Lcom/mycompany/app/view/MyButtonImage;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    if-eqz v1, :cond_1

    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_dark_20:I

    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity;->J1:Lcom/mycompany/app/view/MyButtonImage;

    const v1, -0xc0c0c1

    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    goto :goto_0

    :cond_1
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_settings_black_20:I

    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity;->J1:Lcom/mycompany/app/view/MyButtonImage;

    const/high16 v1, 0x21000000

    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingActivity;->J1:Lcom/mycompany/app/view/MyButtonImage;

    new-instance v1, Lcom/mycompany/app/setting/SettingInfo$9;

    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingInfo$9;-><init>(Lcom/mycompany/app/setting/SettingInfo;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final Q0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->I4(Landroid/app/Activity;Ljava/lang/String;)Z

    return-void
.end method

.method public final O0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfo;->X1:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfo;->Y1:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogGreeting;->dismiss()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingInfo;->Y1:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 18
    .line 19
    :cond_2
    new-instance v0, Lcom/mycompany/app/dialog/DialogGreeting;

    .line 20
    .line 21
    new-instance v1, Lcom/mycompany/app/setting/SettingInfo$7;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingInfo$7;-><init>(Lcom/mycompany/app/setting/SettingInfo;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {v0, p0, p1, v1}, Lcom/mycompany/app/dialog/DialogGreeting;-><init>(Lcom/mycompany/app/main/MainActivity;ZLcom/mycompany/app/dialog/DialogWebView$DialogWebListener;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingInfo;->Y1:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 30
    .line 31
    new-instance p1, Lcom/mycompany/app/setting/SettingInfo$8;

    .line 32
    .line 33
    invoke-direct {p1, p0}, Lcom/mycompany/app/setting/SettingInfo$8;-><init>(Lcom/mycompany/app/setting/SettingInfo;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public final P0(Ljava/lang/String;IZ)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfo;->X1:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingInfo;->Y1:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    if-eqz v0, :cond_2

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebVie2;->dismiss()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingInfo;->X1:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 18
    .line 19
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 20
    .line 21
    new-instance v6, Lcom/mycompany/app/setting/SettingInfo$5;

    .line 22
    .line 23
    invoke-direct {v6, p0}, Lcom/mycompany/app/setting/SettingInfo$5;-><init>(Lcom/mycompany/app/setting/SettingInfo;)V

    .line 24
    .line 25
    .line 26
    move-object v2, p0

    .line 27
    move-object v3, p1

    .line 28
    move v4, p2

    .line 29
    move v5, p3

    .line 30
    invoke-direct/range {v1 .. v6}, Lcom/mycompany/app/dialog/DialogWebVie2;-><init>(Lcom/mycompany/app/setting/SettingInfo;Ljava/lang/String;IZLcom/mycompany/app/dialog/DialogWebView$DialogWebListener;)V

    .line 31
    .line 32
    .line 33
    iput-object v1, v2, Lcom/mycompany/app/setting/SettingInfo;->X1:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 34
    .line 35
    new-instance p1, Lcom/mycompany/app/setting/SettingInfo$6;

    .line 36
    .line 37
    invoke-direct {p1, p0}, Lcom/mycompany/app/setting/SettingInfo$6;-><init>(Lcom/mycompany/app/setting/SettingInfo;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, p1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingInfo;->T0()V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget p1, Lnet/kaki87/soul2/testing/R$string;->info:I

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/mycompany/app/setting/SettingActivity;->F0(IZZ)V

    .line 9
    .line 10
    .line 11
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 12
    .line 13
    iput p1, p0, Lcom/mycompany/app/setting/SettingActivity;->O1:I

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 16
    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance v0, Lcom/mycompany/app/setting/SettingInfo$1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingInfo$1;-><init>(Lcom/mycompany/app/setting/SettingInfo;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfo;->X1:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebVie2;->dismiss()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingInfo;->X1:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfo;->Y1:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 21
    .line 22
    if-eqz v0, :cond_6

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogGreeting;->dismiss()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingInfo;->Y1:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfo;->X1:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 31
    .line 32
    if-eqz v0, :cond_4

    .line 33
    .line 34
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 35
    .line 36
    if-eqz v1, :cond_2

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->C()V

    .line 39
    .line 40
    .line 41
    :cond_2
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->f0:Z

    .line 42
    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    iget-boolean v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->i0:Z

    .line 47
    .line 48
    sput-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 49
    .line 50
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfo;->Y1:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 51
    .line 52
    if-eqz v0, :cond_6

    .line 53
    .line 54
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->i0:Lcom/mycompany/app/web/WebNestView;

    .line 55
    .line 56
    if-eqz v1, :cond_5

    .line 57
    .line 58
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->C()V

    .line 59
    .line 60
    .line 61
    :cond_5
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogGreeting;->z0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->V()V

    .line 66
    .line 67
    .line 68
    :cond_6
    return-void
.end method

.method public final onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfo;->X1:Lcom/mycompany/app/dialog/DialogWebVie2;

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->f0:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 14
    .line 15
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->i0:Z

    .line 16
    .line 17
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    sput-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->M:Z

    .line 23
    .line 24
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogWebVie2;->y0:Lcom/mycompany/app/web/WebNestView;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebNestView;->onResume()V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfo;->Y1:Lcom/mycompany/app/dialog/DialogGreeting;

    .line 32
    .line 33
    if-eqz v0, :cond_4

    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogGreeting;->i0:Lcom/mycompany/app/web/WebNestView;

    .line 36
    .line 37
    if-eqz v1, :cond_3

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestView;->onResume()V

    .line 40
    .line 41
    .line 42
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogGreeting;->z0:Lcom/mycompany/app/dialog/DialogWebView;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogWebView;->X()V

    .line 47
    .line 48
    .line 49
    :cond_4
    return-void
.end method
