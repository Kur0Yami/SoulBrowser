.class public Lcom/mycompany/app/setting/SettingFont;
.super Lcom/mycompany/app/setting/CastActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/setting/SettingFont$ViewPagerAdapter;,
        Lcom/mycompany/app/setting/SettingFont$BaseTask;,
        Lcom/mycompany/app/setting/SettingFont$AppTask;,
        Lcom/mycompany/app/setting/SettingFont$FontItem;,
        Lcom/mycompany/app/setting/SettingFont$UserTask;,
        Lcom/mycompany/app/setting/SettingFont$LocalWebViewClient;,
        Lcom/mycompany/app/setting/SettingFont$SortFont;,
        Lcom/mycompany/app/setting/SettingFont$ViewPagerHolder;
    }
.end annotation


# static fields
.field public static final synthetic J2:I


# instance fields
.field public A2:Ljava/lang/String;

.field public B2:Ljava/lang/String;

.field public C1:Lcom/mycompany/app/view/MyMainRelative;

.field public C2:Z

.field public D1:Lcom/mycompany/app/view/MyButtonImage;

.field public D2:Ljava/lang/String;

.field public E1:Landroidx/appcompat/widget/AppCompatTextView;

.field public E2:J

.field public F1:Lcom/mycompany/app/view/MyButtonImage;

.field public F2:Z

.field public G1:Lcom/mycompany/app/view/MyButtonImage;

.field public G2:Z

.field public H1:Lcom/mycompany/app/view/MyRoundRelative;

.field public H2:Z

.field public I1:Lcom/mycompany/app/web/WebNestView;

.field public I2:Z

.field public J1:Lcom/mycompany/app/view/MyRoundItem;

.field public K1:Landroidx/appcompat/widget/AppCompatTextView;

.field public L1:Lcom/mycompany/app/view/MyRoundItem;

.field public M1:Lcom/mycompany/app/view/MySwitchView;

.field public N1:Landroidx/appcompat/widget/AppCompatTextView;

.field public O1:Lcom/mycompany/app/view/MyLineText;

.field public P1:Landroidx/appcompat/widget/AppCompatTextView;

.field public Q1:Lcom/google/android/material/tabs/TabLayout;

.field public R1:Landroidx/viewpager2/widget/ViewPager2;

.field public S1:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public T1:Landroid/widget/RelativeLayout;

.field public U1:Lcom/mycompany/app/view/MyRecyclerView;

.field public V1:Landroid/widget/ImageView;

.field public W1:Lcom/mycompany/app/view/MyCoverView;

.field public X1:Lcom/mycompany/app/view/MyManagerLinear;

.field public Y1:Lcom/mycompany/app/setting/SettingFontAdapter;

.field public Z1:Lcom/mycompany/app/setting/SettingFont$BaseTask;

.field public a2:Lcom/mycompany/app/setting/SettingFont$AppTask;

.field public b2:Z

.field public c2:Z

.field public d2:Ljava/util/ArrayList;

.field public e2:Ljava/util/ArrayList;

.field public f2:Ljava/util/List;

.field public g2:I

.field public h2:Z

.field public i2:Landroid/widget/RelativeLayout;

.field public j2:Lcom/mycompany/app/view/MyRecyclerView;

.field public k2:Landroid/widget/ImageView;

.field public l2:Lcom/mycompany/app/view/MyButtonImage;

.field public m2:Lcom/mycompany/app/view/MyCoverView;

.field public n2:Lcom/mycompany/app/view/MyManagerLinear;

.field public o2:Lcom/mycompany/app/setting/SettingFontAdapter;

.field public p2:Lcom/mycompany/app/setting/SettingFont$UserTask;

.field public q2:Lcom/mycompany/app/dialog/DialogConfirm;

.field public r2:Lcom/mycompany/app/dialog/DialogSaveConfirm;

.field public s2:Z

.field public t2:Z

.field public u2:Z

.field public v2:Ljava/lang/String;

.field public w2:Z

.field public x2:Ljava/lang/String;

.field public y2:Ljava/lang/String;

.field public z2:Ljava/lang/String;


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

.method public static D0(Lcom/mycompany/app/setting/SettingFont;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10

    .line 1
    const-string v0, ","

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    if-eqz v2, :cond_5

    .line 9
    .line 10
    array-length v3, v2

    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto/16 :goto_2

    .line 14
    .line 15
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 18
    .line 19
    .line 20
    :try_start_1
    array-length v4, v2

    .line 21
    const/4 v5, 0x0

    .line 22
    :goto_0
    if-ge v5, v4, :cond_4

    .line 23
    .line 24
    aget-object v6, v2, v5

    .line 25
    .line 26
    iget-object v7, p0, Lcom/mycompany/app/setting/SettingFont;->a2:Lcom/mycompany/app/setting/SettingFont$AppTask;

    .line 27
    .line 28
    if-eqz v7, :cond_5

    .line 29
    .line 30
    iget-boolean v7, v7, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 31
    .line 32
    if-eqz v7, :cond_1

    .line 33
    .line 34
    goto :goto_2

    .line 35
    :cond_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v7

    .line 39
    if-eqz v7, :cond_2

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const-string v7, ".ttf"

    .line 43
    .line 44
    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-nez v7, :cond_3

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v8, "app://"

    .line 57
    .line 58
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    new-instance v8, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v9, "/"

    .line 85
    .line 86
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    new-instance v9, Lcom/mycompany/app/setting/SettingFont$FontItem;

    .line 93
    .line 94
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v7

    .line 101
    iput-object v7, v9, Lcom/mycompany/app/setting/SettingFont$FontItem;->b:Ljava/lang/String;

    .line 102
    .line 103
    iput-object v6, v9, Lcom/mycompany/app/setting/SettingFont$FontItem;->c:Ljava/lang/String;

    .line 104
    .line 105
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 106
    .line 107
    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v6

    .line 111
    iput-object v6, v9, Lcom/mycompany/app/setting/SettingFont$FontItem;->d:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    invoke-static {p1, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 118
    .line 119
    .line 120
    move-result-object v6

    .line 121
    iput-object v6, v9, Lcom/mycompany/app/setting/SettingFont$FontItem;->e:Landroid/graphics/Typeface;

    .line 122
    .line 123
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 124
    .line 125
    .line 126
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catch_0
    move-object v1, v3

    .line 130
    goto :goto_2

    .line 131
    :cond_4
    return-object v3

    .line 132
    :catch_1
    :cond_5
    :goto_2
    return-object v1
.end method

.method public static E0(Lcom/mycompany/app/setting/SettingFont;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "white;}"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const-string v0, "black;}"

    .line 9
    .line 10
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    const-string v2, "<!DOCTYPE html><html><head><meta charset=\"utf-8\"/><meta name=\'viewport\' content=\'width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no\'/><style>@font-face{font-family:soul_user_font;src:url(\"soul_user_font.ttf\")}body,body *:not([class*=\"icon\"]):not([class^=\"fa\"]):not(ion-icon){font-family:soul_user_font !important;"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-boolean v2, p0, Lcom/mycompany/app/setting/SettingFont;->w2:Z

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    const-string v2, "font-weight:bold !important;"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    :cond_1
    const-string v2, "}body{margin:0;}p{margin:0;width:100%;line-height:1.8;word-wrap:break-word;font-size:18px;text-align:center;color:"

    .line 27
    .line 28
    const-string v3, "</style></head><body><div style=\'position:absolute;top:50%;transform:translate(0,-50%);margin:0;width:100%;user-select:none;\'><p>ABCDEabcde</p><p>1234567890</p><p>"

    .line 29
    .line 30
    invoke-static {v1, v2, v0, v3}, Landroid/support/v4/media/a;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    sget v0, Lnet/kaki87/soul2/testing/R$string;->font_preview:I

    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string p0, "</p></div></body></html>"

    .line 43
    .line 44
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    return-object p0
.end method

.method public static F0(Lcom/mycompany/app/setting/SettingFont;Z)V
    .locals 8

    .line 1
    new-instance v0, Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 7
    .line 8
    const/4 v2, -0x1

    .line 9
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/mycompany/app/view/MyRecyclerView;

    .line 16
    .line 17
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    const/4 v3, 0x1

    .line 21
    invoke-virtual {v1, v3}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    invoke-virtual {v1, v3}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 29
    .line 30
    .line 31
    new-instance v3, Landroid/widget/ImageView;

    .line 32
    .line 33
    invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 37
    .line 38
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 39
    .line 40
    .line 41
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->logo_gray:I

    .line 42
    .line 43
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    .line 45
    .line 46
    const/16 v5, 0x8

    .line 47
    .line 48
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    .line 52
    .line 53
    invoke-direct {v6, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    .line 58
    .line 59
    if-nez p1, :cond_0

    .line 60
    .line 61
    new-instance v6, Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    invoke-direct {v6, p0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 67
    .line 68
    .line 69
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_sd_card_white_24:I

    .line 70
    .line 71
    invoke-virtual {v6, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 72
    .line 73
    .line 74
    sget v4, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 75
    .line 76
    div-int/lit8 v4, v4, 0x2

    .line 77
    .line 78
    int-to-float v4, v4

    .line 79
    invoke-virtual {v6, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgNorRadius(F)V

    .line 80
    .line 81
    .line 82
    const v4, -0x595616

    .line 83
    .line 84
    .line 85
    invoke-virtual {v6, v4, v4}, Lcom/mycompany/app/view/MyButtonImage;->k(II)V

    .line 86
    .line 87
    .line 88
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 89
    .line 90
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 91
    .line 92
    invoke-direct {v4, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 93
    .line 94
    .line 95
    const/16 v7, 0xc

    .line 96
    .line 97
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 98
    .line 99
    .line 100
    const/16 v7, 0x15

    .line 101
    .line 102
    invoke-virtual {v4, v7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 103
    .line 104
    .line 105
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 106
    .line 107
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 108
    .line 109
    .line 110
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 111
    .line 112
    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 113
    .line 114
    invoke-virtual {v0, v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_0
    const/4 v6, 0x0

    .line 119
    :goto_0
    new-instance v4, Lcom/mycompany/app/view/MyCoverView;

    .line 120
    .line 121
    invoke-direct {v4, p0}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v4, v5}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0, v4, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 128
    .line 129
    .line 130
    if-eqz p1, :cond_1

    .line 131
    .line 132
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->T1:Landroid/widget/RelativeLayout;

    .line 133
    .line 134
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingFont;->U1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 135
    .line 136
    iput-object v3, p0, Lcom/mycompany/app/setting/SettingFont;->V1:Landroid/widget/ImageView;

    .line 137
    .line 138
    iput-object v4, p0, Lcom/mycompany/app/setting/SettingFont;->W1:Lcom/mycompany/app/view/MyCoverView;

    .line 139
    .line 140
    return-void

    .line 141
    :cond_1
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->i2:Landroid/widget/RelativeLayout;

    .line 142
    .line 143
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingFont;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 144
    .line 145
    iput-object v3, p0, Lcom/mycompany/app/setting/SettingFont;->k2:Landroid/widget/ImageView;

    .line 146
    .line 147
    iput-object v6, p0, Lcom/mycompany/app/setting/SettingFont;->l2:Lcom/mycompany/app/view/MyButtonImage;

    .line 148
    .line 149
    iput-object v4, p0, Lcom/mycompany/app/setting/SettingFont;->m2:Lcom/mycompany/app/view/MyCoverView;

    .line 150
    .line 151
    return-void
.end method

.method public static G0(Lcom/mycompany/app/setting/SettingFont;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->m2:Lcom/mycompany/app/view/MyCoverView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingFont;->P0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->s2:Z

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_2
    const/4 v0, 0x1

    .line 19
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->s2:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->I2:Z

    .line 22
    .line 23
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingFont;->W1:Lcom/mycompany/app/view/MyCoverView;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingFont;->m2:Lcom/mycompany/app/view/MyCoverView;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/mycompany/app/setting/SettingFont$31;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingFont$31;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method

.method public static H0(Lcom/mycompany/app/setting/SettingFont;ZI)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->b2:Z

    .line 2
    .line 3
    if-eqz v0, :cond_b

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->c2:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_6

    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->b2:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->c2:Z

    .line 15
    .line 16
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingFont;->d2:Ljava/util/ArrayList;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->e2:Ljava/util/ArrayList;

    .line 19
    .line 20
    const/4 v3, 0x0

    .line 21
    iput-object v3, p0, Lcom/mycompany/app/setting/SettingFont;->d2:Ljava/util/ArrayList;

    .line 22
    .line 23
    iput-object v3, p0, Lcom/mycompany/app/setting/SettingFont;->e2:Ljava/util/ArrayList;

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 29
    .line 30
    .line 31
    move-result v5

    .line 32
    if-nez v5, :cond_1

    .line 33
    .line 34
    move v5, v4

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    move v5, v0

    .line 37
    :goto_0
    if-eqz v2, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    if-nez v6, :cond_2

    .line 44
    .line 45
    move v6, v4

    .line 46
    goto :goto_1

    .line 47
    :cond_2
    move v6, v0

    .line 48
    :goto_1
    if-eqz v5, :cond_5

    .line 49
    .line 50
    if-eqz v6, :cond_5

    .line 51
    .line 52
    invoke-static {v4, v2}, Landroid/support/v4/media/a;->c(ILjava/util/ArrayList;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Lcom/mycompany/app/setting/SettingFont$FontItem;

    .line 57
    .line 58
    if-eqz v3, :cond_3

    .line 59
    .line 60
    const/4 v7, 0x2

    .line 61
    iput v7, v3, Lcom/mycompany/app/setting/SettingFont$FontItem;->a:I

    .line 62
    .line 63
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Lcom/mycompany/app/setting/SettingFont$FontItem;

    .line 68
    .line 69
    if-eqz v3, :cond_4

    .line 70
    .line 71
    iput v4, v3, Lcom/mycompany/app/setting/SettingFont$FontItem;->a:I

    .line 72
    .line 73
    :cond_4
    new-instance v3, Lcom/mycompany/app/setting/SettingFont$FontItem;

    .line 74
    .line 75
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 76
    .line 77
    .line 78
    const/4 v7, 0x3

    .line 79
    iput v7, v3, Lcom/mycompany/app/setting/SettingFont$FontItem;->a:I

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_5
    if-eqz v5, :cond_6

    .line 89
    .line 90
    goto :goto_3

    .line 91
    :cond_6
    if-eqz v6, :cond_7

    .line 92
    .line 93
    :goto_2
    move-object v1, v2

    .line 94
    goto :goto_3

    .line 95
    :cond_7
    move-object v1, v3

    .line 96
    :goto_3
    if-eqz p1, :cond_9

    .line 97
    .line 98
    if-eqz v1, :cond_9

    .line 99
    .line 100
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 101
    .line 102
    .line 103
    move-result p1

    .line 104
    if-nez p1, :cond_9

    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    move v2, v0

    .line 111
    move v3, v2

    .line 112
    :goto_4
    if-ge v3, p1, :cond_9

    .line 113
    .line 114
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v7

    .line 118
    add-int/lit8 v3, v3, 0x1

    .line 119
    .line 120
    check-cast v7, Lcom/mycompany/app/setting/SettingFont$FontItem;

    .line 121
    .line 122
    if-eqz v7, :cond_8

    .line 123
    .line 124
    iget-object v8, v7, Lcom/mycompany/app/setting/SettingFont$FontItem;->b:Ljava/lang/String;

    .line 125
    .line 126
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-nez v8, :cond_8

    .line 131
    .line 132
    iget-object v7, v7, Lcom/mycompany/app/setting/SettingFont$FontItem;->b:Ljava/lang/String;

    .line 133
    .line 134
    iget-object v8, p0, Lcom/mycompany/app/setting/SettingFont;->v2:Ljava/lang/String;

    .line 135
    .line 136
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    if-eqz v7, :cond_8

    .line 141
    .line 142
    move p2, v2

    .line 143
    goto :goto_5

    .line 144
    :cond_8
    add-int/lit8 v2, v2, 0x1

    .line 145
    .line 146
    goto :goto_4

    .line 147
    :cond_9
    :goto_5
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingFont;->f2:Ljava/util/List;

    .line 148
    .line 149
    iput p2, p0, Lcom/mycompany/app/setting/SettingFont;->g2:I

    .line 150
    .line 151
    if-eqz v5, :cond_a

    .line 152
    .line 153
    if-eqz v6, :cond_a

    .line 154
    .line 155
    move v0, v4

    .line 156
    :cond_a
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->h2:Z

    .line 157
    .line 158
    :cond_b
    :goto_6
    return-void
.end method

.method public static I0(Lcom/mycompany/app/setting/SettingFont;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->Z1:Lcom/mycompany/app/setting/SettingFont$BaseTask;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->a2:Lcom/mycompany/app/setting/SettingFont$AppTask;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->f2:Ljava/util/List;

    .line 11
    .line 12
    iget v1, p0, Lcom/mycompany/app/setting/SettingFont;->g2:I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->f2:Ljava/util/List;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->Y1:Lcom/mycompany/app/setting/SettingFontAdapter;

    .line 18
    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iput-object v0, v2, Lcom/mycompany/app/setting/SettingFontAdapter;->d:Ljava/util/List;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 24
    .line 25
    .line 26
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->W1:Lcom/mycompany/app/view/MyCoverView;

    .line 27
    .line 28
    if-nez v2, :cond_2

    .line 29
    .line 30
    goto :goto_2

    .line 31
    :cond_2
    const/4 v3, 0x1

    .line 32
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 33
    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->V1:Landroid/widget/ImageView;

    .line 45
    .line 46
    const/16 v2, 0x8

    .line 47
    .line 48
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->V1:Landroid/widget/ImageView;

    .line 53
    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    :goto_1
    const/4 v0, -0x1

    .line 59
    if-eq v1, v0, :cond_5

    .line 60
    .line 61
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->X1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->x0(I)V

    .line 64
    .line 65
    .line 66
    :cond_5
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->h2:Z

    .line 67
    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->U1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 71
    .line 72
    new-instance v1, Lcom/mycompany/app/setting/SettingFont$21;

    .line 73
    .line 74
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingFont$21;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 78
    .line 79
    .line 80
    :cond_6
    :goto_2
    return-void
.end method

.method public static J0(Lcom/mycompany/app/setting/SettingFont;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->z2:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    move v1, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const-string v1, "app://"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    :goto_0
    if-eqz v1, :cond_d

    .line 19
    .line 20
    const-string v1, "/"

    .line 21
    .line 22
    if-eqz v0, :cond_c

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    const/4 v4, 0x6

    .line 29
    if-gt v3, v4, :cond_1

    .line 30
    .line 31
    goto/16 :goto_5

    .line 32
    .line 33
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_2

    .line 42
    .line 43
    goto/16 :goto_5

    .line 44
    .line 45
    :cond_2
    const-string v3, ","

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    if-eqz v0, :cond_c

    .line 52
    .line 53
    array-length v3, v0

    .line 54
    const/4 v4, 0x3

    .line 55
    if-eq v3, v4, :cond_3

    .line 56
    .line 57
    goto/16 :goto_5

    .line 58
    .line 59
    :cond_3
    aget-object v3, v0, v2

    .line 60
    .line 61
    const/4 v4, 0x1

    .line 62
    aget-object v4, v0, v4

    .line 63
    .line 64
    const/4 v5, 0x2

    .line 65
    aget-object v0, v0, v5

    .line 66
    .line 67
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-eqz v5, :cond_4

    .line 72
    .line 73
    goto/16 :goto_5

    .line 74
    .line 75
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v5

    .line 79
    if-eqz v5, :cond_5

    .line 80
    .line 81
    goto :goto_5

    .line 82
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-eqz v5, :cond_6

    .line 87
    .line 88
    goto :goto_5

    .line 89
    :cond_6
    const/4 v5, 0x0

    .line 90
    :try_start_0
    invoke-virtual {p0, v3, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    if-nez v3, :cond_7

    .line 95
    .line 96
    goto :goto_5

    .line 97
    :cond_7
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 98
    .line 99
    .line 100
    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_1

    .line 102
    :catch_0
    move-object v3, v5

    .line 103
    :goto_1
    if-nez v3, :cond_8

    .line 104
    .line 105
    goto :goto_5

    .line 106
    :cond_8
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v6

    .line 110
    if-nez v6, :cond_9

    .line 111
    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    goto :goto_2

    .line 131
    :catch_1
    move-object p0, v5

    .line 132
    goto :goto_4

    .line 133
    :cond_9
    :goto_2
    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 134
    .line 135
    .line 136
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 137
    :try_start_2
    iget-object p0, p0, Lcom/mycompany/app/setting/SettingFont;->y2:Ljava/lang/String;

    .line 138
    .line 139
    invoke-static {p0, v2}, Lcom/mycompany/app/main/MainUtil;->c1(Ljava/lang/String;Z)Ljava/io/OutputStream;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    const/16 p0, 0x2000

    .line 144
    .line 145
    new-array v1, p0, [B

    .line 146
    .line 147
    :goto_3
    invoke-virtual {v0, v1, v2, p0}, Ljava/io/InputStream;->read([BII)I

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    const/4 v4, -0x1

    .line 152
    if-eq v3, v4, :cond_a

    .line 153
    .line 154
    invoke-virtual {v5, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 155
    .line 156
    .line 157
    goto :goto_3

    .line 158
    :catch_2
    move-object p0, v5

    .line 159
    move-object v5, v0

    .line 160
    :goto_4
    move-object v0, v5

    .line 161
    move-object v5, p0

    .line 162
    :cond_a
    if-eqz v5, :cond_b

    .line 163
    .line 164
    :try_start_3
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 165
    .line 166
    .line 167
    :catch_3
    :cond_b
    if-eqz v0, :cond_c

    .line 168
    .line 169
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 170
    .line 171
    .line 172
    :catch_4
    :cond_c
    :goto_5
    return-void

    .line 173
    :cond_d
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 174
    .line 175
    iget-object p0, p0, Lcom/mycompany/app/setting/SettingFont;->y2:Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v1, v0, p0}, Lcom/mycompany/app/main/MainUtil;->t(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method public static K0(Lcom/mycompany/app/setting/SettingFont;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->M1:Lcom/mycompany/app/view/MySwitchView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingFont;->P0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->G2:Z

    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/mycompany/app/setting/SettingFont;->w2:Z

    .line 17
    .line 18
    xor-int/2addr v1, v0

    .line 19
    iput-boolean v1, p0, Lcom/mycompany/app/setting/SettingFont;->w2:Z

    .line 20
    .line 21
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->M1:Lcom/mycompany/app/view/MySwitchView;

    .line 22
    .line 23
    invoke-virtual {v2, v1, v0}, Lcom/mycompany/app/view/MySwitchView;->b(ZZ)V

    .line 24
    .line 25
    .line 26
    new-instance v0, Lcom/mycompany/app/setting/SettingFont$20;

    .line 27
    .line 28
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingFont$20;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public static L0(Lcom/mycompany/app/setting/SettingFont;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingFont;->y2:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->h6(Landroid/content/Context;Ljava/lang/String;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v1, Lcom/mycompany/app/setting/SettingFont$25;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingFont$25;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    :goto_0
    return-void

    .line 30
    :cond_2
    new-instance v1, Lcom/mycompany/app/setting/SettingFont$26;

    .line 31
    .line 32
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingFont$26;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public static M0(Lcom/mycompany/app/setting/SettingFont;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->I1:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/16 v0, 0x2e

    .line 15
    .line 16
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const/4 v2, -0x1

    .line 21
    if-ne v0, v2, :cond_2

    .line 22
    .line 23
    :goto_0
    const/4 p2, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_2
    add-int/2addr v0, v1

    .line 26
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 31
    .line 32
    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {p2}, Lcom/mycompany/app/compress/Compress;->B(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    :goto_1
    if-nez p2, :cond_3

    .line 41
    .line 42
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_file:I

    .line 43
    .line 44
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingFont;->P0()Z

    .line 49
    .line 50
    .line 51
    move-result p2

    .line 52
    if-eqz p2, :cond_4

    .line 53
    .line 54
    :goto_2
    return-void

    .line 55
    :cond_4
    iput-boolean v1, p0, Lcom/mycompany/app/setting/SettingFont;->H2:Z

    .line 56
    .line 57
    new-instance p2, Lcom/mycompany/app/setting/SettingFont$24;

    .line 58
    .line 59
    invoke-direct {p2, p0, p1}, Lcom/mycompany/app/setting/SettingFont$24;-><init>(Lcom/mycompany/app/setting/SettingFont;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, p2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public final N0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->q2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogConfirm;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->q2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final O0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->r2:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSaveConfirm;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->r2:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final P0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->F2:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->G2:Z

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->H2:Z

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->I2:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return v0

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    return v0
.end method

.method public final Q0()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->t2:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->w2:Z

    .line 7
    .line 8
    sget-boolean v2, Lcom/mycompany/app/pref/PrefRead;->p:Z

    .line 9
    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->w2:Z

    .line 14
    .line 15
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZone;->m:Z

    .line 16
    .line 17
    if-eq v0, v2, :cond_1

    .line 18
    .line 19
    return v1

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->v2:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 29
    .line 30
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    return v0

    .line 38
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->v2:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    xor-int/2addr v0, v1

    .line 47
    return v0
.end method

.method public final R0()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_2

    .line 6
    .line 7
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 8
    .line 9
    const/4 v2, -0x1

    .line 10
    const v3, -0xdededf

    .line 11
    .line 12
    .line 13
    const/high16 v4, -0x1000000

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_dark_24:I

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    .line 24
    const v1, -0x50506

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 31
    .line 32
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_24:I

    .line 33
    .line 34
    invoke-virtual {v0, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 38
    .line 39
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_dark_24:I

    .line 40
    .line 41
    invoke-virtual {v0, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 45
    .line 46
    const v5, -0xc0c0c1

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 53
    .line 54
    invoke-virtual {v0, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 58
    .line 59
    invoke-virtual {v0, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 63
    .line 64
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    .line 74
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 75
    .line 76
    invoke-virtual {v0, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->L1:Lcom/mycompany/app/view/MyRoundItem;

    .line 80
    .line 81
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 82
    .line 83
    invoke-virtual {v0, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->O1:Lcom/mycompany/app/view/MyLineText;

    .line 92
    .line 93
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->P1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 99
    .line 100
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->Q1:Lcom/google/android/material/tabs/TabLayout;

    .line 106
    .line 107
    const v1, -0x4f4f50

    .line 108
    .line 109
    .line 110
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 114
    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_1
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_black_24:I

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 124
    .line 125
    .line 126
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 127
    .line 128
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 132
    .line 133
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_24:I

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 139
    .line 140
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_help_black_24:I

    .line 141
    .line 142
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 143
    .line 144
    .line 145
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 146
    .line 147
    const/high16 v1, 0x21000000

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 155
    .line 156
    .line 157
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 160
    .line 161
    .line 162
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 163
    .line 164
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 168
    .line 169
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 173
    .line 174
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 175
    .line 176
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->L1:Lcom/mycompany/app/view/MyRoundItem;

    .line 180
    .line 181
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 184
    .line 185
    .line 186
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 187
    .line 188
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->O1:Lcom/mycompany/app/view/MyLineText;

    .line 192
    .line 193
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 194
    .line 195
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 196
    .line 197
    .line 198
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->P1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 199
    .line 200
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->Q1:Lcom/google/android/material/tabs/TabLayout;

    .line 206
    .line 207
    const v1, -0x595616

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 214
    .line 215
    if-eqz v0, :cond_2

    .line 216
    .line 217
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 218
    .line 219
    .line 220
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->U1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 221
    .line 222
    if-eqz v0, :cond_6

    .line 223
    .line 224
    iget-boolean v1, p0, Lcom/mycompany/app/setting/SettingFont;->h2:Z

    .line 225
    .line 226
    if-eqz v1, :cond_4

    .line 227
    .line 228
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 229
    .line 230
    if-eqz v1, :cond_3

    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_3
    const v4, -0x70708

    .line 234
    .line 235
    .line 236
    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 237
    .line 238
    .line 239
    return-void

    .line 240
    :cond_4
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 241
    .line 242
    if-eqz v1, :cond_5

    .line 243
    .line 244
    move v2, v3

    .line 245
    :cond_5
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 246
    .line 247
    .line 248
    :cond_6
    :goto_2
    return-void
.end method

.method public final S0(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->O1:Lcom/mycompany/app/view/MyLineText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const v1, -0x9e9e9f

    .line 7
    .line 8
    .line 9
    const v2, -0xe19938

    .line 10
    .line 11
    .line 12
    const v3, -0x3e3e3f

    .line 13
    .line 14
    .line 15
    const v4, -0x50506

    .line 16
    .line 17
    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingFont;->P1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingFont;->P1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_2
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 43
    .line 44
    if-eqz p1, :cond_3

    .line 45
    .line 46
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingFont;->P1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingFont;->P1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method public final T0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->q2:Lcom/mycompany/app/dialog/DialogConfirm;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->r2:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingFont;->O0()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 15
    .line 16
    new-instance v1, Lcom/mycompany/app/setting/SettingFont$29;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingFont$29;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, p0, v1}, Lcom/mycompany/app/dialog/DialogSaveConfirm;-><init>(Landroid/app/Activity;Lcom/mycompany/app/dialog/DialogSeekAudio$DialogSeekListener;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->r2:Lcom/mycompany/app/dialog/DialogSaveConfirm;

    .line 25
    .line 26
    new-instance v1, Lcom/mycompany/app/setting/SettingFont$30;

    .line 27
    .line 28
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingFont$30;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingFont;->P0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    iget-wide v3, p0, Lcom/mycompany/app/setting/SettingFont;->E2:J

    .line 19
    .line 20
    cmp-long p1, v3, v1

    .line 21
    .line 22
    if-nez p1, :cond_2

    .line 23
    .line 24
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    iput-wide v1, p0, Lcom/mycompany/app/setting/SettingFont;->E2:J

    .line 29
    .line 30
    return v0

    .line 31
    :cond_0
    if-eq p1, v0, :cond_1

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    if-ne p1, v3, :cond_2

    .line 35
    .line 36
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v3

    .line 40
    iget-wide v5, p0, Lcom/mycompany/app/setting/SettingFont;->E2:J

    .line 41
    .line 42
    sub-long/2addr v3, v5

    .line 43
    const-wide/16 v5, 0x1f4

    .line 44
    .line 45
    cmp-long p1, v3, v5

    .line 46
    .line 47
    if-lez p1, :cond_2

    .line 48
    .line 49
    iput-wide v1, p0, Lcom/mycompany/app/setting/SettingFont;->E2:J

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingFont;->F2:Z

    .line 53
    .line 54
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingFont;->G2:Z

    .line 55
    .line 56
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingFont;->H2:Z

    .line 57
    .line 58
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingFont;->I2:Z

    .line 59
    .line 60
    :cond_2
    return v0

    .line 61
    :cond_3
    iput-wide v1, p0, Lcom/mycompany/app/setting/SettingFont;->E2:J

    .line 62
    .line 63
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    return p1
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 2

    .line 1
    const/16 v0, 0x13

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, -0x1

    .line 7
    if-ne p2, p1, :cond_7

    .line 8
    .line 9
    if-nez p3, :cond_1

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_2

    .line 17
    .line 18
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 19
    .line 20
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    invoke-static {p1}, Lcom/mycompany/app/main/MainUri;->a(Landroid/net/Uri;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 29
    .line 30
    .line 31
    move-result p3

    .line 32
    if-eqz p3, :cond_3

    .line 33
    .line 34
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 35
    .line 36
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_3
    sget-object p3, Lcom/mycompany/app/pref/PrefPath;->v:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result p3

    .line 46
    if-nez p3, :cond_4

    .line 47
    .line 48
    sput-object p2, Lcom/mycompany/app/pref/PrefPath;->v:Ljava/lang/String;

    .line 49
    .line 50
    iget-object p3, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 51
    .line 52
    const/4 v0, 0x6

    .line 53
    const-string v1, "mScanFont"

    .line 54
    .line 55
    invoke-static {v0, p3, v1, p2}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_4
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 61
    .line 62
    .line 63
    sget p1, Lnet/kaki87/soul2/testing/R$string;->dir_scanning:I

    .line 64
    .line 65
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingFont;->m2:Lcom/mycompany/app/view/MyCoverView;

    .line 69
    .line 70
    if-nez p1, :cond_5

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_5
    const/4 p2, 0x1

    .line 74
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingFont;->p2:Lcom/mycompany/app/setting/SettingFont$UserTask;

    .line 78
    .line 79
    if-eqz p1, :cond_6

    .line 80
    .line 81
    iput-boolean p2, p1, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 82
    .line 83
    :cond_6
    const/4 p1, 0x0

    .line 84
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingFont;->p2:Lcom/mycompany/app/setting/SettingFont$UserTask;

    .line 85
    .line 86
    new-instance p1, Lcom/mycompany/app/setting/SettingFont$UserTask;

    .line 87
    .line 88
    const/4 p3, 0x0

    .line 89
    invoke-direct {p1, p0, p3, p2}, Lcom/mycompany/app/setting/SettingFont$UserTask;-><init>(Lcom/mycompany/app/setting/SettingFont;ZZ)V

    .line 90
    .line 91
    .line 92
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingFont;->p2:Lcom/mycompany/app/setting/SettingFont$UserTask;

    .line 93
    .line 94
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 95
    .line 96
    invoke-virtual {p1, p2}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 97
    .line 98
    .line 99
    :cond_7
    :goto_0
    return-void
.end method

.method public final l0()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingFont;->P0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x0

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-wide v3, p0, Lcom/mycompany/app/setting/SettingFont;->E2:J

    .line 10
    .line 11
    cmp-long v0, v3, v1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iput-wide v0, p0, Lcom/mycompany/app/setting/SettingFont;->E2:J

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    iget-wide v5, p0, Lcom/mycompany/app/setting/SettingFont;->E2:J

    .line 27
    .line 28
    sub-long/2addr v3, v5

    .line 29
    const-wide/16 v5, 0x1f4

    .line 30
    .line 31
    cmp-long v0, v3, v5

    .line 32
    .line 33
    if-lez v0, :cond_2

    .line 34
    .line 35
    iput-wide v1, p0, Lcom/mycompany/app/setting/SettingFont;->E2:J

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->F2:Z

    .line 39
    .line 40
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->G2:Z

    .line 41
    .line 42
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->H2:Z

    .line 43
    .line 44
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->I2:Z

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iput-wide v1, p0, Lcom/mycompany/app/setting/SettingFont;->E2:J

    .line 48
    .line 49
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->s2:Z

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    :cond_2
    return-void

    .line 54
    :cond_3
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingFont;->Q0()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    .line 60
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingFont;->T0()V

    .line 61
    .line 62
    .line 63
    return-void

    .line 64
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final onBackPressed()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->Y()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingFont;->l0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->i5(ZLandroid/content/res/Configuration;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->i5(ZLandroid/content/res/Configuration;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    sput-boolean p1, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 17
    .line 18
    iget-boolean p1, p0, Lcom/mycompany/app/setting/SettingFont;->u2:Z

    .line 19
    .line 20
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 21
    .line 22
    if-ne p1, v0, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->u2:Z

    .line 26
    .line 27
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingFont;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 28
    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 37
    .line 38
    if-eqz v1, :cond_2

    .line 39
    .line 40
    const/high16 v1, -0x1000000

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const v1, -0x70708

    .line 44
    .line 45
    .line 46
    :goto_0
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyMainRelative;->b(Landroid/view/Window;I)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingFont;->R0()V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingFont;->H1:Lcom/mycompany/app/view/MyRoundRelative;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyRoundRelative;->a()V

    .line 55
    .line 56
    .line 57
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingFont;->R1:Landroidx/viewpager2/widget/ViewPager2;

    .line 58
    .line 59
    if-nez p1, :cond_3

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    invoke-virtual {p0, p1}, Lcom/mycompany/app/setting/SettingFont;->S0(I)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingFont;->Y1:Lcom/mycompany/app/setting/SettingFontAdapter;

    .line 70
    .line 71
    if-eqz p1, :cond_4

    .line 72
    .line 73
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingFont;->o2:Lcom/mycompany/app/setting/SettingFontAdapter;

    .line 77
    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 81
    .line 82
    .line 83
    :cond_5
    invoke-virtual {p0}, Lcom/mycompany/app/setting/CastActivity;->A0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .line 85
    .line 86
    :catch_0
    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/setting/CastActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "EXTRA_PAGE"

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingFont;->t2:Z

    .line 18
    .line 19
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 20
    .line 21
    iput-boolean v2, v0, Lcom/mycompany/app/setting/SettingFont;->u2:Z

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    sget-object v1, Lcom/mycompany/app/pref/PrefRead;->o:Ljava/lang/String;

    .line 26
    .line 27
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->v2:Ljava/lang/String;

    .line 28
    .line 29
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->p:Z

    .line 30
    .line 31
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingFont;->w2:Z

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    sget-object v1, Lcom/mycompany/app/pref/PrefZone;->l:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->v2:Ljava/lang/String;

    .line 37
    .line 38
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->m:Z

    .line 39
    .line 40
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingFont;->w2:Z

    .line 41
    .line 42
    :goto_0
    const/16 v1, 0x13

    .line 43
    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 46
    .line 47
    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    sget v4, Lnet/kaki87/soul2/testing/R$string;->font:I

    .line 54
    .line 55
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v4, " ("

    .line 63
    .line 64
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-boolean v4, v0, Lcom/mycompany/app/setting/SettingFont;->t2:Z

    .line 68
    .line 69
    if-eqz v4, :cond_1

    .line 70
    .line 71
    sget v4, Lnet/kaki87/soul2/testing/R$string;->reader_mode:I

    .line 72
    .line 73
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v4

    .line 77
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    sget v4, Lnet/kaki87/soul2/testing/R$string;->web_page:I

    .line 82
    .line 83
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    :goto_1
    const-string v4, ")"

    .line 91
    .line 92
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    sget v4, Lnet/kaki87/soul2/testing/R$id;->set_icon_frame:I

    .line 100
    .line 101
    sget v5, Lnet/kaki87/soul2/testing/R$id;->set_cast_ctrl:I

    .line 102
    .line 103
    new-instance v6, Lcom/mycompany/app/view/MyMainRelative;

    .line 104
    .line 105
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 106
    .line 107
    .line 108
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    .line 109
    .line 110
    const/4 v8, -0x1

    .line 111
    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    .line 116
    .line 117
    new-instance v7, Landroid/widget/LinearLayout;

    .line 118
    .line 119
    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 120
    .line 121
    .line 122
    const/4 v9, 0x1

    .line 123
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 124
    .line 125
    .line 126
    const/4 v10, 0x2

    .line 127
    invoke-static {v8, v8, v10, v5}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 128
    .line 129
    .line 130
    move-result-object v10

    .line 131
    invoke-virtual {v6, v7, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    .line 133
    .line 134
    new-instance v10, Lcom/mycompany/app/view/MyHeaderView;

    .line 135
    .line 136
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 137
    .line 138
    .line 139
    sget v11, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 140
    .line 141
    invoke-virtual {v7, v10, v8, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 142
    .line 143
    .line 144
    new-instance v11, Lcom/mycompany/app/view/MyButtonImage;

    .line 145
    .line 146
    invoke-direct {v11, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 147
    .line 148
    .line 149
    sget-object v12, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 150
    .line 151
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 152
    .line 153
    .line 154
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 155
    .line 156
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 157
    .line 158
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 159
    .line 160
    invoke-direct {v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 161
    .line 162
    .line 163
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 164
    .line 165
    invoke-virtual {v13, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v10, v11, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    .line 170
    .line 171
    new-instance v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 172
    .line 173
    invoke-direct {v13, v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    .line 175
    .line 176
    const/16 v14, 0x10

    .line 177
    .line 178
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 182
    .line 183
    .line 184
    const/high16 v15, 0x41900000    # 18.0f

    .line 185
    .line 186
    invoke-virtual {v13, v9, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 187
    .line 188
    .line 189
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 193
    .line 194
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 195
    .line 196
    invoke-direct {v1, v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1, v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 200
    .line 201
    .line 202
    sget v14, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 203
    .line 204
    invoke-virtual {v1, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v10, v13, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    .line 209
    .line 210
    new-instance v1, Landroid/widget/LinearLayout;

    .line 211
    .line 212
    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 222
    .line 223
    .line 224
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 225
    .line 226
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 227
    .line 228
    const/4 v15, -0x2

    .line 229
    invoke-direct {v4, v15, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 230
    .line 231
    .line 232
    const/16 v14, 0x15

    .line 233
    .line 234
    invoke-virtual {v4, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 235
    .line 236
    .line 237
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 238
    .line 239
    iput v14, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 240
    .line 241
    invoke-virtual {v10, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    .line 243
    .line 244
    const/high16 v4, 0x41600000    # 14.0f

    .line 245
    .line 246
    invoke-static {v0, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 247
    .line 248
    .line 249
    move-result v4

    .line 250
    float-to-int v4, v4

    .line 251
    new-instance v10, Lcom/mycompany/app/view/MyButtonImage;

    .line 252
    .line 253
    invoke-direct {v10, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {v10, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 257
    .line 258
    .line 259
    invoke-virtual {v10, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 260
    .line 261
    .line 262
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 263
    .line 264
    invoke-virtual {v1, v10, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 265
    .line 266
    .line 267
    new-instance v14, Lcom/mycompany/app/view/MyButtonImage;

    .line 268
    .line 269
    invoke-direct {v14, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v14, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v14, v12}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 276
    .line 277
    .line 278
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 279
    .line 280
    invoke-virtual {v1, v14, v4, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 281
    .line 282
    .line 283
    new-instance v4, Landroid/widget/FrameLayout;

    .line 284
    .line 285
    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 286
    .line 287
    .line 288
    const/4 v12, 0x4

    .line 289
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 290
    .line 291
    .line 292
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 293
    .line 294
    invoke-virtual {v1, v4, v15, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 295
    .line 296
    .line 297
    const/high16 v1, 0x43140000    # 148.0f

    .line 298
    .line 299
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    float-to-int v1, v1

    .line 304
    new-instance v12, Lcom/mycompany/app/view/MyRoundRelative;

    .line 305
    .line 306
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyRoundRelative;-><init>(Lcom/mycompany/app/setting/CastActivity;)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v7, v12, v8, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 310
    .line 311
    .line 312
    new-instance v1, Lcom/mycompany/app/view/MyRoundItem;

    .line 313
    .line 314
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {v1, v9, v3}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 318
    .line 319
    .line 320
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 321
    .line 322
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 323
    .line 324
    invoke-direct {v15, v8, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 325
    .line 326
    .line 327
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 328
    .line 329
    iput v3, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 330
    .line 331
    invoke-virtual {v7, v1, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    .line 333
    .line 334
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 335
    .line 336
    invoke-direct {v3, v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 337
    .line 338
    .line 339
    const/16 v15, 0x11

    .line 340
    .line 341
    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setGravity(I)V

    .line 342
    .line 343
    .line 344
    const/high16 v15, 0x41800000    # 16.0f

    .line 345
    .line 346
    invoke-virtual {v3, v9, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 347
    .line 348
    .line 349
    sget v15, Lnet/kaki87/soul2/testing/R$string;->font_default:I

    .line 350
    .line 351
    invoke-virtual {v3, v15}, Landroid/widget/TextView;->setText(I)V

    .line 352
    .line 353
    .line 354
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 355
    .line 356
    invoke-virtual {v1, v3, v8, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 357
    .line 358
    .line 359
    new-instance v15, Lcom/mycompany/app/view/MyRoundItem;

    .line 360
    .line 361
    invoke-direct {v15, v0}, Lcom/mycompany/app/view/MyRoundItem;-><init>(Landroid/content/Context;)V

    .line 362
    .line 363
    .line 364
    const/4 v2, 0x0

    .line 365
    invoke-virtual {v15, v2, v9}, Lcom/mycompany/app/view/MyRoundItem;->d(ZZ)V

    .line 366
    .line 367
    .line 368
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 369
    .line 370
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 371
    .line 372
    invoke-virtual {v15, v8, v2, v9, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 373
    .line 374
    .line 375
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 376
    .line 377
    const/4 v8, 0x1

    .line 378
    iput-boolean v8, v15, Lcom/mycompany/app/view/MyRoundItem;->g:Z

    .line 379
    .line 380
    iput-boolean v8, v15, Lcom/mycompany/app/view/MyRoundItem;->h:Z

    .line 381
    .line 382
    iput v2, v15, Lcom/mycompany/app/view/MyRoundItem;->j:I

    .line 383
    .line 384
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 385
    .line 386
    if-eqz v2, :cond_2

    .line 387
    .line 388
    const v2, -0xc0c0c1

    .line 389
    .line 390
    .line 391
    goto :goto_2

    .line 392
    :cond_2
    const v2, -0x252526

    .line 393
    .line 394
    .line 395
    :goto_2
    iput v2, v15, Lcom/mycompany/app/view/MyRoundItem;->l:I

    .line 396
    .line 397
    const/high16 v2, 0x3f000000    # 0.5f

    .line 398
    .line 399
    iput v2, v15, Lcom/mycompany/app/view/MyRoundItem;->k:F

    .line 400
    .line 401
    new-instance v2, Landroid/graphics/Paint;

    .line 402
    .line 403
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 404
    .line 405
    .line 406
    iput-object v2, v15, Lcom/mycompany/app/view/MyRoundItem;->m:Landroid/graphics/Paint;

    .line 407
    .line 408
    const/4 v8, 0x1

    .line 409
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 410
    .line 411
    .line 412
    iget-object v2, v15, Lcom/mycompany/app/view/MyRoundItem;->m:Landroid/graphics/Paint;

    .line 413
    .line 414
    sget-object v8, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 415
    .line 416
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 417
    .line 418
    .line 419
    iget-object v2, v15, Lcom/mycompany/app/view/MyRoundItem;->m:Landroid/graphics/Paint;

    .line 420
    .line 421
    iget v8, v15, Lcom/mycompany/app/view/MyRoundItem;->l:I

    .line 422
    .line 423
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 424
    .line 425
    .line 426
    iget-object v2, v15, Lcom/mycompany/app/view/MyRoundItem;->m:Landroid/graphics/Paint;

    .line 427
    .line 428
    const/high16 v8, 0x3f800000    # 1.0f

    .line 429
    .line 430
    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 431
    .line 432
    .line 433
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 434
    .line 435
    const/4 v9, -0x1

    .line 436
    invoke-virtual {v7, v15, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 437
    .line 438
    .line 439
    new-instance v2, Lcom/mycompany/app/view/MySwitchView;

    .line 440
    .line 441
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MySwitchView;-><init>(Landroid/content/Context;)V

    .line 442
    .line 443
    .line 444
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 445
    .line 446
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 447
    .line 448
    invoke-direct {v9, v8, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 449
    .line 450
    .line 451
    const/16 v8, 0x15

    .line 452
    .line 453
    invoke-virtual {v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 454
    .line 455
    .line 456
    const/16 v8, 0xf

    .line 457
    .line 458
    invoke-virtual {v9, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 459
    .line 460
    .line 461
    invoke-virtual {v15, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 462
    .line 463
    .line 464
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 465
    .line 466
    const/4 v8, 0x0

    .line 467
    invoke-direct {v9, v0, v8}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 468
    .line 469
    .line 470
    move-object/from16 v18, v4

    .line 471
    .line 472
    const/4 v4, 0x1

    .line 473
    const/high16 v8, 0x41800000    # 16.0f

    .line 474
    .line 475
    invoke-virtual {v9, v4, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 476
    .line 477
    .line 478
    sget v4, Lnet/kaki87/soul2/testing/R$string;->font_bold:I

    .line 479
    .line 480
    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(I)V

    .line 481
    .line 482
    .line 483
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 484
    .line 485
    move-object/from16 v19, v2

    .line 486
    .line 487
    const/4 v2, -0x1

    .line 488
    const/4 v8, -0x2

    .line 489
    invoke-direct {v4, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 490
    .line 491
    .line 492
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 493
    .line 494
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 495
    .line 496
    add-int/2addr v2, v8

    .line 497
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 498
    .line 499
    .line 500
    const/16 v2, 0xf

    .line 501
    .line 502
    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 503
    .line 504
    .line 505
    invoke-virtual {v15, v9, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 506
    .line 507
    .line 508
    new-instance v2, Landroid/widget/LinearLayout;

    .line 509
    .line 510
    invoke-direct {v2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 511
    .line 512
    .line 513
    const/4 v4, 0x0

    .line 514
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 515
    .line 516
    .line 517
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 518
    .line 519
    .line 520
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 521
    .line 522
    const/4 v4, -0x1

    .line 523
    invoke-virtual {v7, v2, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 524
    .line 525
    .line 526
    new-instance v8, Lcom/mycompany/app/view/MyLineText;

    .line 527
    .line 528
    invoke-direct {v8, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 529
    .line 530
    .line 531
    const/16 v4, 0x11

    .line 532
    .line 533
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 534
    .line 535
    .line 536
    move-object/from16 p1, v9

    .line 537
    .line 538
    const/high16 v4, 0x41800000    # 16.0f

    .line 539
    .line 540
    const/4 v9, 0x1

    .line 541
    invoke-virtual {v8, v9, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 542
    .line 543
    .line 544
    sget v4, Lnet/kaki87/soul2/testing/R$string;->system_name:I

    .line 545
    .line 546
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setText(I)V

    .line 547
    .line 548
    .line 549
    invoke-virtual {v8, v0}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 550
    .line 551
    .line 552
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 553
    .line 554
    move-object/from16 v17, v15

    .line 555
    .line 556
    const/4 v9, 0x0

    .line 557
    const/4 v15, -0x1

    .line 558
    invoke-direct {v4, v9, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 559
    .line 560
    .line 561
    const/high16 v9, 0x3f800000    # 1.0f

    .line 562
    .line 563
    iput v9, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 564
    .line 565
    invoke-virtual {v2, v8, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 566
    .line 567
    .line 568
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 569
    .line 570
    const/4 v9, 0x0

    .line 571
    invoke-direct {v4, v0, v9}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 572
    .line 573
    .line 574
    const/16 v9, 0x11

    .line 575
    .line 576
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 577
    .line 578
    .line 579
    const/high16 v9, 0x41800000    # 16.0f

    .line 580
    .line 581
    const/4 v15, 0x1

    .line 582
    invoke-virtual {v4, v15, v9}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 583
    .line 584
    .line 585
    sget v9, Lnet/kaki87/soul2/testing/R$string;->storage:I

    .line 586
    .line 587
    move-object/from16 v16, v8

    .line 588
    .line 589
    const/4 v8, -0x1

    .line 590
    const/4 v15, 0x0

    .line 591
    invoke-static {v4, v9, v15, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 592
    .line 593
    .line 594
    move-result-object v9

    .line 595
    const/high16 v8, 0x3f800000    # 1.0f

    .line 596
    .line 597
    iput v8, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 598
    .line 599
    invoke-virtual {v2, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 600
    .line 601
    .line 602
    new-instance v2, Lcom/google/android/material/tabs/TabLayout;

    .line 603
    .line 604
    invoke-direct {v2, v0}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;)V

    .line 605
    .line 606
    .line 607
    const/4 v8, 0x1

    .line 608
    invoke-virtual {v2, v8}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v2, v15}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 612
    .line 613
    .line 614
    const/high16 v8, 0x40000000    # 2.0f

    .line 615
    .line 616
    invoke-static {v0, v8}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 617
    .line 618
    .line 619
    move-result v8

    .line 620
    float-to-int v8, v8

    .line 621
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 622
    .line 623
    const/4 v15, -0x1

    .line 624
    invoke-direct {v9, v15, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 625
    .line 626
    .line 627
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 628
    .line 629
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 630
    .line 631
    .line 632
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 633
    .line 634
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 635
    .line 636
    .line 637
    invoke-virtual {v7, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 638
    .line 639
    .line 640
    new-instance v8, Landroidx/viewpager2/widget/ViewPager2;

    .line 641
    .line 642
    invoke-direct {v8, v0}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    .line 643
    .line 644
    .line 645
    const/4 v9, 0x0

    .line 646
    invoke-virtual {v8, v9}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    .line 647
    .line 648
    .line 649
    invoke-virtual {v7, v8, v15, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 650
    .line 651
    .line 652
    new-instance v7, Landroid/widget/FrameLayout;

    .line 653
    .line 654
    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v7, v5}, Landroid/view/View;->setId(I)V

    .line 658
    .line 659
    .line 660
    const/16 v5, 0x8

    .line 661
    .line 662
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 663
    .line 664
    .line 665
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 666
    .line 667
    const/4 v9, -0x2

    .line 668
    invoke-direct {v5, v15, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 669
    .line 670
    .line 671
    const/16 v9, 0xc

    .line 672
    .line 673
    invoke-virtual {v5, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v6, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 677
    .line 678
    .line 679
    iput-object v6, v0, Lcom/mycompany/app/setting/SettingFont;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 680
    .line 681
    iput-object v11, v0, Lcom/mycompany/app/setting/SettingFont;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 682
    .line 683
    iput-object v13, v0, Lcom/mycompany/app/setting/SettingFont;->E1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 684
    .line 685
    iput-object v10, v0, Lcom/mycompany/app/setting/SettingFont;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 686
    .line 687
    iput-object v14, v0, Lcom/mycompany/app/setting/SettingFont;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 688
    .line 689
    iput-object v12, v0, Lcom/mycompany/app/setting/SettingFont;->H1:Lcom/mycompany/app/view/MyRoundRelative;

    .line 690
    .line 691
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 692
    .line 693
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingFont;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 694
    .line 695
    move-object/from16 v1, v17

    .line 696
    .line 697
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->L1:Lcom/mycompany/app/view/MyRoundItem;

    .line 698
    .line 699
    move-object/from16 v1, v19

    .line 700
    .line 701
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->M1:Lcom/mycompany/app/view/MySwitchView;

    .line 702
    .line 703
    move-object/from16 v1, p1

    .line 704
    .line 705
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 706
    .line 707
    move-object/from16 v1, v16

    .line 708
    .line 709
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->O1:Lcom/mycompany/app/view/MyLineText;

    .line 710
    .line 711
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingFont;->P1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 712
    .line 713
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingFont;->Q1:Lcom/google/android/material/tabs/TabLayout;

    .line 714
    .line 715
    iput-object v8, v0, Lcom/mycompany/app/setting/SettingFont;->R1:Landroidx/viewpager2/widget/ViewPager2;

    .line 716
    .line 717
    move-object/from16 v1, v18

    .line 718
    .line 719
    invoke-virtual {v0, v6, v1, v7}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 720
    .line 721
    .line 722
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 723
    .line 724
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 725
    .line 726
    .line 727
    move-result-object v2

    .line 728
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 729
    .line 730
    .line 731
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingFont;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 732
    .line 733
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 734
    .line 735
    .line 736
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 737
    .line 738
    if-nez v1, :cond_3

    .line 739
    .line 740
    return-void

    .line 741
    :cond_3
    new-instance v2, Lcom/mycompany/app/setting/SettingFont$1;

    .line 742
    .line 743
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingFont$1;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 747
    .line 748
    .line 749
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->R1:Landroidx/viewpager2/widget/ViewPager2;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingFont;->S1:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->R1:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->S1:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    if-eqz v1, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroidx/viewpager2/widget/ViewPager2;->f(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 22
    .line 23
    .line 24
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->H1:Lcom/mycompany/app/view/MyRoundRelative;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    iput-object v2, v0, Lcom/mycompany/app/view/MyRoundRelative;->f:Landroid/graphics/RectF;

    .line 47
    .line 48
    iput-object v2, v0, Lcom/mycompany/app/view/MyRoundRelative;->g:Landroid/graphics/Paint;

    .line 49
    .line 50
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->H1:Lcom/mycompany/app/view/MyRoundRelative;

    .line 51
    .line 52
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->I1:Lcom/mycompany/app/web/WebNestView;

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->F(Landroid/webkit/WebView;Z)V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->I1:Lcom/mycompany/app/web/WebNestView;

    .line 61
    .line 62
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 63
    .line 64
    if-eqz v0, :cond_6

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundItem;->b()V

    .line 67
    .line 68
    .line 69
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->J1:Lcom/mycompany/app/view/MyRoundItem;

    .line 70
    .line 71
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->L1:Lcom/mycompany/app/view/MyRoundItem;

    .line 72
    .line 73
    if-eqz v0, :cond_7

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundItem;->b()V

    .line 76
    .line 77
    .line 78
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->L1:Lcom/mycompany/app/view/MyRoundItem;

    .line 79
    .line 80
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->M1:Lcom/mycompany/app/view/MySwitchView;

    .line 81
    .line 82
    if-eqz v0, :cond_8

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/mycompany/app/view/MySwitchView;->a()V

    .line 85
    .line 86
    .line 87
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->M1:Lcom/mycompany/app/view/MySwitchView;

    .line 88
    .line 89
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->O1:Lcom/mycompany/app/view/MyLineText;

    .line 90
    .line 91
    if-eqz v0, :cond_9

    .line 92
    .line 93
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 94
    .line 95
    .line 96
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->O1:Lcom/mycompany/app/view/MyLineText;

    .line 97
    .line 98
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->U1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 99
    .line 100
    if-eqz v0, :cond_a

    .line 101
    .line 102
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 103
    .line 104
    .line 105
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->U1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 106
    .line 107
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->W1:Lcom/mycompany/app/view/MyCoverView;

    .line 108
    .line 109
    if-eqz v0, :cond_b

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 112
    .line 113
    .line 114
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->W1:Lcom/mycompany/app/view/MyCoverView;

    .line 115
    .line 116
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->Y1:Lcom/mycompany/app/setting/SettingFontAdapter;

    .line 117
    .line 118
    if-eqz v0, :cond_c

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingFontAdapter;->d()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    iput v1, v0, Lcom/mycompany/app/setting/SettingFontAdapter;->h:I

    .line 125
    .line 126
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingFontAdapter;->d:Ljava/util/List;

    .line 127
    .line 128
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingFontAdapter;->e:Lcom/mycompany/app/setting/SettingFontAdapter$SettingFontListener;

    .line 129
    .line 130
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingFontAdapter;->f:Ljava/lang/String;

    .line 131
    .line 132
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingFontAdapter;->g:Ljava/util/regex/Pattern;

    .line 133
    .line 134
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->Y1:Lcom/mycompany/app/setting/SettingFontAdapter;

    .line 135
    .line 136
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 137
    .line 138
    if-eqz v0, :cond_d

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 141
    .line 142
    .line 143
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 144
    .line 145
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->l2:Lcom/mycompany/app/view/MyButtonImage;

    .line 146
    .line 147
    if-eqz v0, :cond_e

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 150
    .line 151
    .line 152
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->l2:Lcom/mycompany/app/view/MyButtonImage;

    .line 153
    .line 154
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->m2:Lcom/mycompany/app/view/MyCoverView;

    .line 155
    .line 156
    if-eqz v0, :cond_f

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 159
    .line 160
    .line 161
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->m2:Lcom/mycompany/app/view/MyCoverView;

    .line 162
    .line 163
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->o2:Lcom/mycompany/app/setting/SettingFontAdapter;

    .line 164
    .line 165
    if-eqz v0, :cond_10

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingFontAdapter;->d()I

    .line 168
    .line 169
    .line 170
    move-result v1

    .line 171
    iput v1, v0, Lcom/mycompany/app/setting/SettingFontAdapter;->h:I

    .line 172
    .line 173
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingFontAdapter;->d:Ljava/util/List;

    .line 174
    .line 175
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingFontAdapter;->e:Lcom/mycompany/app/setting/SettingFontAdapter$SettingFontListener;

    .line 176
    .line 177
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingFontAdapter;->f:Ljava/lang/String;

    .line 178
    .line 179
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingFontAdapter;->g:Ljava/util/regex/Pattern;

    .line 180
    .line 181
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->o2:Lcom/mycompany/app/setting/SettingFontAdapter;

    .line 182
    .line 183
    :cond_10
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->K1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 184
    .line 185
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 186
    .line 187
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->P1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 188
    .line 189
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->Q1:Lcom/google/android/material/tabs/TabLayout;

    .line 190
    .line 191
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->T1:Landroid/widget/RelativeLayout;

    .line 192
    .line 193
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->V1:Landroid/widget/ImageView;

    .line 194
    .line 195
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->X1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 196
    .line 197
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->i2:Landroid/widget/RelativeLayout;

    .line 198
    .line 199
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->k2:Landroid/widget/ImageView;

    .line 200
    .line 201
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->n2:Lcom/mycompany/app/view/MyManagerLinear;

    .line 202
    .line 203
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->v2:Ljava/lang/String;

    .line 204
    .line 205
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->x2:Ljava/lang/String;

    .line 206
    .line 207
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->A2:Ljava/lang/String;

    .line 208
    .line 209
    return-void
.end method

.method public final onPause()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/CastActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_5

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingFont;->N0()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/mycompany/app/setting/SettingFont;->O0()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->Z1:Lcom/mycompany/app/setting/SettingFont$BaseTask;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->Z1:Lcom/mycompany/app/setting/SettingFont$BaseTask;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->a2:Lcom/mycompany/app/setting/SettingFont$AppTask;

    .line 27
    .line 28
    if-eqz v2, :cond_1

    .line 29
    .line 30
    iput-boolean v1, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 31
    .line 32
    :cond_1
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->a2:Lcom/mycompany/app/setting/SettingFont$AppTask;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/mycompany/app/setting/SettingFont;->p2:Lcom/mycompany/app/setting/SettingFont$UserTask;

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    iput-boolean v1, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 39
    .line 40
    :cond_2
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->p2:Lcom/mycompany/app/setting/SettingFont$UserTask;

    .line 41
    .line 42
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->s2:Z

    .line 43
    .line 44
    if-eqz v0, :cond_3

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_3
    iget-boolean v0, p0, Lcom/mycompany/app/setting/SettingFont;->t2:Z

    .line 48
    .line 49
    if-eqz v0, :cond_4

    .line 50
    .line 51
    sget-boolean v0, Lcom/mycompany/app/pref/PrefRead;->n:Z

    .line 52
    .line 53
    if-eqz v0, :cond_5

    .line 54
    .line 55
    sget-object v0, Lcom/mycompany/app/pref/PrefRead;->o:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingFont;->z2:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-nez v1, :cond_5

    .line 64
    .line 65
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->z2:Ljava/lang/String;

    .line 66
    .line 67
    new-instance v0, Lcom/mycompany/app/setting/SettingFont$32;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingFont$32;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 73
    .line 74
    .line 75
    return-void

    .line 76
    :cond_4
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZone;->k:Z

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    sget-object v0, Lcom/mycompany/app/pref/PrefZone;->l:Ljava/lang/String;

    .line 81
    .line 82
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingFont;->z2:Ljava/lang/String;

    .line 83
    .line 84
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-nez v1, :cond_5

    .line 89
    .line 90
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingFont;->z2:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v0, Lcom/mycompany/app/setting/SettingFont$33;

    .line 93
    .line 94
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingFont$33;-><init>(Lcom/mycompany/app/setting/SettingFont;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_0
    return-void
.end method
