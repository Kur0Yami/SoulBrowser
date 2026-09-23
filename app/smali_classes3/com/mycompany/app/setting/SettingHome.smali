.class public Lcom/mycompany/app/setting/SettingHome;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/setting/SettingHome$ViewPagerAdapter;,
        Lcom/mycompany/app/setting/SettingHome$BookTask;,
        Lcom/mycompany/app/setting/SettingHome$HistTask;,
        Lcom/mycompany/app/setting/SettingHome$ViewPagerHolder;
    }
.end annotation


# static fields
.field public static final synthetic E2:I


# instance fields
.field public A2:Z

.field public B2:I

.field public C2:Ljava/lang/String;

.field public D2:Z

.field public X1:Lcom/mycompany/app/main/MainSelectAdapter;

.field public Y1:Lcom/mycompany/app/view/MyButtonImage;

.field public Z1:Lcom/mycompany/app/view/MyRoundRelative;

.field public a2:Lcom/mycompany/app/view/MyEditText;

.field public b2:Lcom/mycompany/app/view/MyButtonImage;

.field public c2:Lcom/mycompany/app/view/MyButtonImage;

.field public d2:Lcom/mycompany/app/view/MyLineText;

.field public e2:Landroidx/appcompat/widget/AppCompatTextView;

.field public f2:Lcom/google/android/material/tabs/TabLayout;

.field public g2:Landroidx/viewpager2/widget/ViewPager2;

.field public h2:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public i2:Landroid/widget/RelativeLayout;

.field public j2:Lcom/mycompany/app/view/MyRecyclerView;

.field public k2:Landroid/widget/ImageView;

.field public l2:Lcom/mycompany/app/view/MyButtonText;

.field public m2:Lcom/mycompany/app/view/MyCoverView;

.field public n2:Lcom/mycompany/app/view/MyManagerLinear;

.field public o2:Lcom/mycompany/app/quick/QuickAddAdapter;

.field public p2:Lcom/mycompany/app/setting/SettingHome$BookTask;

.field public q2:Z

.field public r2:Landroid/widget/RelativeLayout;

.field public s2:Lcom/mycompany/app/view/MyRecyclerView;

.field public t2:Landroid/widget/ImageView;

.field public u2:Lcom/mycompany/app/view/MyButtonText;

.field public v2:Lcom/mycompany/app/view/MyCoverView;

.field public w2:Lcom/mycompany/app/view/MyManagerLinear;

.field public x2:Lcom/mycompany/app/quick/QuickAddAdapter;

.field public y2:Lcom/mycompany/app/setting/SettingHome$HistTask;

.field public z2:Lcom/mycompany/app/view/MyPopupMenu;


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

.method public static O0(Lcom/mycompany/app/setting/SettingHome;Z)V
    .locals 11

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
    const/4 v4, 0x0

    .line 25
    invoke-virtual {v1, v4}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 29
    .line 30
    .line 31
    new-instance v4, Landroid/widget/ImageView;

    .line 32
    .line 33
    invoke-direct {v4, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 39
    .line 40
    .line 41
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->logo_gray:I

    .line 42
    .line 43
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 44
    .line 45
    .line 46
    const/16 v5, 0x8

    .line 47
    .line 48
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

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
    sget-boolean v7, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 57
    .line 58
    if-eqz v7, :cond_0

    .line 59
    .line 60
    sget v7, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 61
    .line 62
    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 63
    .line 64
    :cond_0
    invoke-virtual {v0, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    sget-boolean v6, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 68
    .line 69
    if-eqz v6, :cond_1

    .line 70
    .line 71
    new-instance v6, Lcom/mycompany/app/view/MyButtonText;

    .line 72
    .line 73
    invoke-direct {v6, p0}, Lcom/mycompany/app/view/MyButtonText;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 77
    .line 78
    sget v8, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 79
    .line 80
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 81
    .line 82
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 83
    .line 84
    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 85
    .line 86
    .line 87
    const/16 v7, 0x11

    .line 88
    .line 89
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 90
    .line 91
    .line 92
    sget v7, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 93
    .line 94
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 95
    .line 96
    .line 97
    const/high16 v7, 0x41600000    # 14.0f

    .line 98
    .line 99
    invoke-virtual {v6, v3, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 100
    .line 101
    .line 102
    sget v7, Lnet/kaki87/soul2/testing/R$string;->import_normal:I

    .line 103
    .line 104
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v6, v3}, Lcom/mycompany/app/view/MyButtonText;->setBgNorFixed(Z)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v6, v3}, Lcom/mycompany/app/view/MyButtonText;->setRoundRect(Z)V

    .line 111
    .line 112
    .line 113
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 114
    .line 115
    invoke-virtual {v6, v3}, Lcom/mycompany/app/view/MyButtonText;->setRoundRadius(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6, v5}, Lcom/mycompany/app/view/MyButtonText;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    const/high16 v3, 0x41a00000    # 20.0f

    .line 122
    .line 123
    invoke-static {p0, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 124
    .line 125
    .line 126
    move-result v3

    .line 127
    float-to-int v3, v3

    .line 128
    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    .line 129
    .line 130
    const/4 v8, -0x2

    .line 131
    invoke-direct {v7, v2, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 132
    .line 133
    .line 134
    const/16 v8, 0xc

    .line 135
    .line 136
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 143
    .line 144
    .line 145
    iput v3, v7, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 146
    .line 147
    invoke-virtual {v0, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_1
    const/4 v6, 0x0

    .line 152
    :goto_0
    new-instance v3, Lcom/mycompany/app/view/MyCoverView;

    .line 153
    .line 154
    invoke-direct {v3, p0}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v3, v5}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v0, v3, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 161
    .line 162
    .line 163
    if-eqz p1, :cond_2

    .line 164
    .line 165
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->i2:Landroid/widget/RelativeLayout;

    .line 166
    .line 167
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingHome;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 168
    .line 169
    iput-object v4, p0, Lcom/mycompany/app/setting/SettingHome;->k2:Landroid/widget/ImageView;

    .line 170
    .line 171
    iput-object v6, p0, Lcom/mycompany/app/setting/SettingHome;->l2:Lcom/mycompany/app/view/MyButtonText;

    .line 172
    .line 173
    iput-object v3, p0, Lcom/mycompany/app/setting/SettingHome;->m2:Lcom/mycompany/app/view/MyCoverView;

    .line 174
    .line 175
    return-void

    .line 176
    :cond_2
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->r2:Landroid/widget/RelativeLayout;

    .line 177
    .line 178
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingHome;->s2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 179
    .line 180
    iput-object v4, p0, Lcom/mycompany/app/setting/SettingHome;->t2:Landroid/widget/ImageView;

    .line 181
    .line 182
    iput-object v6, p0, Lcom/mycompany/app/setting/SettingHome;->u2:Lcom/mycompany/app/view/MyButtonText;

    .line 183
    .line 184
    iput-object v3, p0, Lcom/mycompany/app/setting/SettingHome;->v2:Lcom/mycompany/app/view/MyCoverView;

    .line 185
    .line 186
    return-void
.end method

.method public static P0(Lcom/mycompany/app/setting/SettingHome;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 20
    .line 21
    .line 22
    sget v0, Lnet/kaki87/soul2/testing/R$string;->input_url:I

    .line 23
    .line 24
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    iget v2, p0, Lcom/mycompany/app/setting/SettingHome;->B2:I

    .line 29
    .line 30
    const/16 v3, 0xe

    .line 31
    .line 32
    if-ne v2, v1, :cond_2

    .line 33
    .line 34
    sget-object v1, Lcom/mycompany/app/pref/PrefWeb;->k:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-nez v1, :cond_4

    .line 41
    .line 42
    sput-object v0, Lcom/mycompany/app/pref/PrefWeb;->k:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 45
    .line 46
    const-string v2, "mHomePage3"

    .line 47
    .line 48
    invoke-static {v3, v1, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v1, 0x2

    .line 53
    if-ne v2, v1, :cond_3

    .line 54
    .line 55
    sget-object v1, Lcom/mycompany/app/pref/PrefWeb;->l:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_4

    .line 62
    .line 63
    sput-object v0, Lcom/mycompany/app/pref/PrefWeb;->l:Ljava/lang/String;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 66
    .line 67
    const-string v2, "mStartPage"

    .line 68
    .line 69
    invoke-static {v3, v1, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    sget-object v1, Lcom/mycompany/app/pref/PrefWeb;->m:Ljava/lang/String;

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_4

    .line 80
    .line 81
    sput-object v0, Lcom/mycompany/app/pref/PrefWeb;->m:Ljava/lang/String;

    .line 82
    .line 83
    iget-object v1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 84
    .line 85
    const-string v2, "mTabPage"

    .line 86
    .line 87
    invoke-static {v3, v1, v2, v0}, Lcom/mycompany/app/pref/PrefSet;->c(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_0
    new-instance v0, Landroid/content/Intent;

    .line 91
    .line 92
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v1, "EXTRA_TYPE"

    .line 96
    .line 97
    iget v2, p0, Lcom/mycompany/app/setting/SettingHome;->B2:I

    .line 98
    .line 99
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    const/4 v1, -0x1

    .line 103
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 107
    .line 108
    .line 109
    return-void
.end method


# virtual methods
.method public final Q0(Ljava/lang/String;ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->p2:Lcom/mycompany/app/setting/SettingHome$BookTask;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->p2:Lcom/mycompany/app/setting/SettingHome$BookTask;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/setting/SettingHome$BookTask;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mycompany/app/setting/SettingHome$BookTask;-><init>(Lcom/mycompany/app/setting/SettingHome;Ljava/lang/String;ZZ)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->p2:Lcom/mycompany/app/setting/SettingHome$BookTask;

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/mycompany/app/setting/SettingHome;->D2:Z

    .line 5
    .line 6
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_3

    .line 11
    .line 12
    :cond_0
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingHome;->D2:Z

    .line 13
    .line 14
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 15
    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto/16 :goto_3

    .line 19
    .line 20
    :cond_1
    const/high16 v1, 0x21000000

    .line 21
    .line 22
    const/high16 v2, -0x1000000

    .line 23
    .line 24
    const v3, -0x50506

    .line 25
    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    const v0, -0xdededf

    .line 30
    .line 31
    .line 32
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 36
    .line 37
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_24:I

    .line 38
    .line 39
    invoke-virtual {p1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 43
    .line 44
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_dark_18:I

    .line 50
    .line 51
    invoke-virtual {p1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 55
    .line 56
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_24:I

    .line 57
    .line 58
    invoke-virtual {p1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    const v4, -0xc0c0c1

    .line 64
    .line 65
    .line 66
    invoke-virtual {p1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 70
    .line 71
    invoke-virtual {p1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 75
    .line 76
    invoke-virtual {p1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->d2:Lcom/mycompany/app/view/MyLineText;

    .line 80
    .line 81
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 82
    .line 83
    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->e2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 87
    .line 88
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 89
    .line 90
    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->f2:Lcom/google/android/material/tabs/TabLayout;

    .line 94
    .line 95
    const v4, -0x4f4f50

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v4}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 102
    .line 103
    if-eqz p1, :cond_2

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 106
    .line 107
    .line 108
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->s2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 109
    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    const/4 v0, -0x1

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 118
    .line 119
    .line 120
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 121
    .line 122
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_24:I

    .line 123
    .line 124
    invoke-virtual {p1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 128
    .line 129
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    .line 131
    .line 132
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 133
    .line 134
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_black_18:I

    .line 135
    .line 136
    invoke-virtual {p1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 140
    .line 141
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_24:I

    .line 142
    .line 143
    invoke-virtual {p1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 147
    .line 148
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 152
    .line 153
    const v4, -0x1f1f20

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 160
    .line 161
    invoke-virtual {p1, v4}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->d2:Lcom/mycompany/app/view/MyLineText;

    .line 165
    .line 166
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 167
    .line 168
    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->e2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 172
    .line 173
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 174
    .line 175
    invoke-virtual {p1, v4}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->f2:Lcom/google/android/material/tabs/TabLayout;

    .line 179
    .line 180
    const v4, -0x595616

    .line 181
    .line 182
    .line 183
    invoke-virtual {p1, v4}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 184
    .line 185
    .line 186
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 187
    .line 188
    if-eqz p1, :cond_4

    .line 189
    .line 190
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 191
    .line 192
    .line 193
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->s2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 194
    .line 195
    if-eqz p1, :cond_5

    .line 196
    .line 197
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 198
    .line 199
    .line 200
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->Z1:Lcom/mycompany/app/view/MyRoundRelative;

    .line 201
    .line 202
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyRoundRelative;->a()V

    .line 203
    .line 204
    .line 205
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 206
    .line 207
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyEditText;->d()V

    .line 208
    .line 209
    .line 210
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->g2:Landroidx/viewpager2/widget/ViewPager2;

    .line 211
    .line 212
    if-nez p1, :cond_6

    .line 213
    .line 214
    goto/16 :goto_3

    .line 215
    .line 216
    :cond_6
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 217
    .line 218
    .line 219
    move-result p1

    .line 220
    const v0, -0x9e9e9f

    .line 221
    .line 222
    .line 223
    const v4, -0xe19938

    .line 224
    .line 225
    .line 226
    const v5, -0x3e3e3f

    .line 227
    .line 228
    .line 229
    if-nez p1, :cond_8

    .line 230
    .line 231
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 232
    .line 233
    if-eqz p1, :cond_7

    .line 234
    .line 235
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->d2:Lcom/mycompany/app/view/MyLineText;

    .line 236
    .line 237
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 238
    .line 239
    .line 240
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->e2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 241
    .line 242
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 243
    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_7
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->d2:Lcom/mycompany/app/view/MyLineText;

    .line 247
    .line 248
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    .line 250
    .line 251
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->e2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 252
    .line 253
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    .line 255
    .line 256
    goto :goto_1

    .line 257
    :cond_8
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 258
    .line 259
    if-eqz p1, :cond_9

    .line 260
    .line 261
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->d2:Lcom/mycompany/app/view/MyLineText;

    .line 262
    .line 263
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 264
    .line 265
    .line 266
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->e2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 267
    .line 268
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 269
    .line 270
    .line 271
    goto :goto_1

    .line 272
    :cond_9
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->d2:Lcom/mycompany/app/view/MyLineText;

    .line 273
    .line 274
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 275
    .line 276
    .line 277
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->e2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 278
    .line 279
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 280
    .line 281
    .line 282
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->X1:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 283
    .line 284
    if-eqz p1, :cond_a

    .line 285
    .line 286
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 287
    .line 288
    .line 289
    :cond_a
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->o2:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 290
    .line 291
    if-eqz p1, :cond_b

    .line 292
    .line 293
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 294
    .line 295
    .line 296
    :cond_b
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->x2:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 297
    .line 298
    if-eqz p1, :cond_c

    .line 299
    .line 300
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 301
    .line 302
    .line 303
    :cond_c
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->l2:Lcom/mycompany/app/view/MyButtonText;

    .line 304
    .line 305
    const v0, -0x70708

    .line 306
    .line 307
    .line 308
    const v4, -0xd8d8d9

    .line 309
    .line 310
    .line 311
    if-eqz p1, :cond_e

    .line 312
    .line 313
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 314
    .line 315
    if-eqz v5, :cond_d

    .line 316
    .line 317
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 318
    .line 319
    .line 320
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->l2:Lcom/mycompany/app/view/MyButtonText;

    .line 321
    .line 322
    invoke-virtual {p1, v2, v4}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 323
    .line 324
    .line 325
    goto :goto_2

    .line 326
    :cond_d
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    .line 328
    .line 329
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->l2:Lcom/mycompany/app/view/MyButtonText;

    .line 330
    .line 331
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 332
    .line 333
    .line 334
    :cond_e
    :goto_2
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->u2:Lcom/mycompany/app/view/MyButtonText;

    .line 335
    .line 336
    if-eqz p1, :cond_10

    .line 337
    .line 338
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 339
    .line 340
    if-eqz v5, :cond_f

    .line 341
    .line 342
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 343
    .line 344
    .line 345
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->u2:Lcom/mycompany/app/view/MyButtonText;

    .line 346
    .line 347
    invoke-virtual {p1, v2, v4}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 348
    .line 349
    .line 350
    return-void

    .line 351
    :cond_f
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 352
    .line 353
    .line 354
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingHome;->u2:Lcom/mycompany/app/view/MyButtonText;

    .line 355
    .line 356
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyButtonText;->u(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .line 358
    .line 359
    :catch_0
    :cond_10
    :goto_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-super/range {p0 .. p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 4
    .line 5
    .line 6
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    iput-boolean v1, v0, Lcom/mycompany/app/setting/SettingHome;->D2:Z

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "EXTRA_TYPE"

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iput v1, v0, Lcom/mycompany/app/setting/SettingHome;->B2:I

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "EXTRA_PATH"

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->C2:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->S6(Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->C2:Ljava/lang/String;

    .line 40
    .line 41
    iget v1, v0, Lcom/mycompany/app/setting/SettingHome;->B2:I

    .line 42
    .line 43
    const/4 v2, 0x2

    .line 44
    if-ne v1, v3, :cond_0

    .line 45
    .line 46
    sget v1, Lnet/kaki87/soul2/testing/R$string;->home_page:I

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    if-ne v1, v2, :cond_1

    .line 50
    .line 51
    sget v1, Lnet/kaki87/soul2/testing/R$string;->start_page:I

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    sget v1, Lnet/kaki87/soul2/testing/R$string;->new_url:I

    .line 55
    .line 56
    :goto_0
    sget v4, Lnet/kaki87/soul2/testing/R$id;->set_icon_frame:I

    .line 57
    .line 58
    sget v5, Lnet/kaki87/soul2/testing/R$id;->set_cast_ctrl:I

    .line 59
    .line 60
    new-instance v6, Lcom/mycompany/app/view/MyMainRelative;

    .line 61
    .line 62
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    .line 66
    .line 67
    const/4 v8, -0x1

    .line 68
    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    new-instance v7, Landroid/widget/LinearLayout;

    .line 75
    .line 76
    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v7, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 80
    .line 81
    .line 82
    invoke-static {v8, v8, v2, v5}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-virtual {v6, v7, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .line 88
    .line 89
    new-instance v2, Lcom/mycompany/app/view/MyHeaderView;

    .line 90
    .line 91
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    sget v9, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 95
    .line 96
    invoke-virtual {v7, v2, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 97
    .line 98
    .line 99
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 100
    .line 101
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 102
    .line 103
    .line 104
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 105
    .line 106
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 107
    .line 108
    .line 109
    new-instance v11, Landroid/widget/RelativeLayout$LayoutParams;

    .line 110
    .line 111
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 112
    .line 113
    sget v13, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 114
    .line 115
    invoke-direct {v11, v12, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 116
    .line 117
    .line 118
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 119
    .line 120
    invoke-virtual {v11, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v2, v9, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    .line 125
    .line 126
    new-instance v11, Landroidx/appcompat/widget/AppCompatTextView;

    .line 127
    .line 128
    const/4 v12, 0x0

    .line 129
    invoke-direct {v11, v0, v12}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    .line 131
    .line 132
    const/16 v13, 0x10

    .line 133
    .line 134
    invoke-virtual {v11, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v11, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 138
    .line 139
    .line 140
    const/high16 v14, 0x41900000    # 18.0f

    .line 141
    .line 142
    invoke-virtual {v11, v3, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 143
    .line 144
    .line 145
    if-lez v1, :cond_2

    .line 146
    .line 147
    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(I)V

    .line 148
    .line 149
    .line 150
    :cond_2
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 151
    .line 152
    sget v14, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 153
    .line 154
    invoke-direct {v1, v8, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v13, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 158
    .line 159
    .line 160
    sget v14, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 161
    .line 162
    invoke-virtual {v1, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2, v11, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    .line 167
    .line 168
    new-instance v1, Landroid/widget/LinearLayout;

    .line 169
    .line 170
    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v4}, Landroid/view/View;->setId(I)V

    .line 174
    .line 175
    .line 176
    const/4 v4, 0x0

    .line 177
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 181
    .line 182
    .line 183
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 184
    .line 185
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 186
    .line 187
    const/4 v12, -0x2

    .line 188
    invoke-direct {v14, v12, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 189
    .line 190
    .line 191
    const/16 v15, 0x15

    .line 192
    .line 193
    invoke-virtual {v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 194
    .line 195
    .line 196
    sget v15, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 197
    .line 198
    iput v15, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 199
    .line 200
    invoke-virtual {v2, v1, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    .line 202
    .line 203
    const/high16 v14, 0x41600000    # 14.0f

    .line 204
    .line 205
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 206
    .line 207
    .line 208
    move-result v14

    .line 209
    float-to-int v14, v14

    .line 210
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 211
    .line 212
    invoke-direct {v15, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v15, v14, v14, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v15, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 219
    .line 220
    .line 221
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 222
    .line 223
    invoke-virtual {v1, v15, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 224
    .line 225
    .line 226
    new-instance v14, Landroid/widget/FrameLayout;

    .line 227
    .line 228
    invoke-direct {v14, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 229
    .line 230
    .line 231
    const/4 v3, 0x4

    .line 232
    invoke-virtual {v14, v3}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .line 234
    .line 235
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 236
    .line 237
    invoke-virtual {v1, v14, v12, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 238
    .line 239
    .line 240
    new-instance v1, Lcom/mycompany/app/view/MyRoundRelative;

    .line 241
    .line 242
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyRoundRelative;-><init>(Lcom/mycompany/app/setting/CastActivity;)V

    .line 243
    .line 244
    .line 245
    sget v3, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 246
    .line 247
    invoke-virtual {v1, v4, v4, v4, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v7, v1, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 251
    .line 252
    .line 253
    new-instance v3, Lcom/mycompany/app/view/MyEditText;

    .line 254
    .line 255
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 256
    .line 257
    .line 258
    const/high16 v12, 0x42000000    # 32.0f

    .line 259
    .line 260
    invoke-static {v0, v12}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 261
    .line 262
    .line 263
    move-result v12

    .line 264
    float-to-int v12, v12

    .line 265
    invoke-virtual {v3, v4, v4, v12, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 266
    .line 267
    .line 268
    const/4 v12, 0x3

    .line 269
    const/4 v4, 0x1

    .line 270
    invoke-static {v3, v13, v4, v12}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 271
    .line 272
    .line 273
    const/high16 v12, 0x41800000    # 16.0f

    .line 274
    .line 275
    invoke-virtual {v3, v4, v12}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 276
    .line 277
    .line 278
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 279
    .line 280
    const/16 v12, 0x1d

    .line 281
    .line 282
    if-lt v4, v12, :cond_3

    .line 283
    .line 284
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 285
    .line 286
    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 287
    .line 288
    .line 289
    :cond_3
    sget v4, Lnet/kaki87/soul2/testing/R$string;->url:I

    .line 290
    .line 291
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHint(I)V

    .line 292
    .line 293
    .line 294
    const v4, -0x7e7e7f

    .line 295
    .line 296
    .line 297
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setInputType(I)V

    .line 301
    .line 302
    .line 303
    const v4, 0x10000006

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 307
    .line 308
    .line 309
    const/4 v4, 0x0

    .line 310
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 311
    .line 312
    .line 313
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 314
    .line 315
    sget v12, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 316
    .line 317
    invoke-direct {v4, v8, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 318
    .line 319
    .line 320
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 321
    .line 322
    invoke-virtual {v4, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 323
    .line 324
    .line 325
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 326
    .line 327
    invoke-virtual {v4, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 328
    .line 329
    .line 330
    invoke-virtual {v1, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    .line 332
    .line 333
    new-instance v4, Lcom/mycompany/app/view/MyButtonImage;

    .line 334
    .line 335
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 339
    .line 340
    .line 341
    const/16 v12, 0x8

    .line 342
    .line 343
    invoke-virtual {v4, v12}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 344
    .line 345
    .line 346
    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    .line 347
    .line 348
    sget v12, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 349
    .line 350
    sget v8, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 351
    .line 352
    invoke-direct {v13, v12, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 353
    .line 354
    .line 355
    const/16 v8, 0x15

    .line 356
    .line 357
    invoke-virtual {v13, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v1, v4, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    .line 362
    .line 363
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 364
    .line 365
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v12, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 369
    .line 370
    .line 371
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 372
    .line 373
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 374
    .line 375
    move-object/from16 v16, v14

    .line 376
    .line 377
    sget v14, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 378
    .line 379
    invoke-direct {v10, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v10, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v1, v12, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 386
    .line 387
    .line 388
    new-instance v8, Lcom/mycompany/app/view/MyRecyclerView;

    .line 389
    .line 390
    invoke-direct {v8, v0}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 391
    .line 392
    .line 393
    const/4 v10, 0x1

    .line 394
    invoke-virtual {v8, v10, v10}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v8, v10}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 398
    .line 399
    .line 400
    const/4 v10, 0x0

    .line 401
    invoke-virtual {v8, v10}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 402
    .line 403
    .line 404
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 405
    .line 406
    const/4 v10, -0x1

    .line 407
    const/4 v14, -0x2

    .line 408
    invoke-direct {v13, v10, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 409
    .line 410
    .line 411
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 412
    .line 413
    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 414
    .line 415
    invoke-virtual {v7, v8, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 416
    .line 417
    .line 418
    new-instance v13, Landroid/widget/LinearLayout;

    .line 419
    .line 420
    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 421
    .line 422
    .line 423
    const/4 v14, 0x0

    .line 424
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 425
    .line 426
    .line 427
    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 428
    .line 429
    .line 430
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 431
    .line 432
    invoke-virtual {v7, v13, v10, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 433
    .line 434
    .line 435
    new-instance v14, Lcom/mycompany/app/view/MyLineText;

    .line 436
    .line 437
    invoke-direct {v14, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 438
    .line 439
    .line 440
    const/16 v10, 0x11

    .line 441
    .line 442
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 443
    .line 444
    .line 445
    move-object/from16 v18, v8

    .line 446
    .line 447
    const/high16 v8, 0x41800000    # 16.0f

    .line 448
    .line 449
    const/4 v10, 0x1

    .line 450
    invoke-virtual {v14, v10, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 451
    .line 452
    .line 453
    sget v8, Lnet/kaki87/soul2/testing/R$string;->bookmark:I

    .line 454
    .line 455
    invoke-virtual {v14, v8}, Landroid/widget/TextView;->setText(I)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v14, v0}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 459
    .line 460
    .line 461
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 462
    .line 463
    move-object/from16 v17, v12

    .line 464
    .line 465
    const/4 v10, 0x0

    .line 466
    const/4 v12, -0x1

    .line 467
    invoke-direct {v8, v10, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 468
    .line 469
    .line 470
    const/high16 v10, 0x3f800000    # 1.0f

    .line 471
    .line 472
    iput v10, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 473
    .line 474
    invoke-virtual {v13, v14, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 475
    .line 476
    .line 477
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 478
    .line 479
    const/4 v10, 0x0

    .line 480
    invoke-direct {v8, v0, v10}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 481
    .line 482
    .line 483
    const/16 v10, 0x11

    .line 484
    .line 485
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 486
    .line 487
    .line 488
    const/4 v10, 0x1

    .line 489
    const/high16 v12, 0x41800000    # 16.0f

    .line 490
    .line 491
    invoke-virtual {v8, v10, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 492
    .line 493
    .line 494
    sget v12, Lnet/kaki87/soul2/testing/R$string;->history:I

    .line 495
    .line 496
    move-object/from16 p1, v14

    .line 497
    .line 498
    const/4 v10, 0x0

    .line 499
    const/4 v14, -0x1

    .line 500
    invoke-static {v8, v12, v10, v14}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 501
    .line 502
    .line 503
    move-result-object v12

    .line 504
    const/high16 v14, 0x3f800000    # 1.0f

    .line 505
    .line 506
    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 507
    .line 508
    invoke-virtual {v13, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 509
    .line 510
    .line 511
    new-instance v12, Lcom/google/android/material/tabs/TabLayout;

    .line 512
    .line 513
    invoke-direct {v12, v0}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;)V

    .line 514
    .line 515
    .line 516
    const/4 v13, 0x1

    .line 517
    invoke-virtual {v12, v13}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v12, v10}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 521
    .line 522
    .line 523
    const/high16 v10, 0x40000000    # 2.0f

    .line 524
    .line 525
    invoke-static {v0, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 526
    .line 527
    .line 528
    move-result v10

    .line 529
    float-to-int v10, v10

    .line 530
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 531
    .line 532
    const/4 v14, -0x1

    .line 533
    invoke-direct {v13, v14, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 534
    .line 535
    .line 536
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 537
    .line 538
    invoke-virtual {v13, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 539
    .line 540
    .line 541
    sget v10, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 542
    .line 543
    invoke-virtual {v13, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 544
    .line 545
    .line 546
    invoke-virtual {v7, v12, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 547
    .line 548
    .line 549
    new-instance v10, Landroidx/viewpager2/widget/ViewPager2;

    .line 550
    .line 551
    invoke-direct {v10, v0}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    .line 552
    .line 553
    .line 554
    const/4 v13, 0x0

    .line 555
    invoke-virtual {v10, v13}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v7, v10, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 559
    .line 560
    .line 561
    new-instance v7, Landroid/widget/FrameLayout;

    .line 562
    .line 563
    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v7, v5}, Landroid/view/View;->setId(I)V

    .line 567
    .line 568
    .line 569
    const/16 v5, 0x8

    .line 570
    .line 571
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    .line 572
    .line 573
    .line 574
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 575
    .line 576
    const/4 v13, -0x2

    .line 577
    invoke-direct {v5, v14, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 578
    .line 579
    .line 580
    const/16 v13, 0xc

    .line 581
    .line 582
    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 583
    .line 584
    .line 585
    invoke-virtual {v6, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    .line 587
    .line 588
    iput-object v6, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 589
    .line 590
    iput-object v2, v0, Lcom/mycompany/app/setting/SettingActivity;->F1:Lcom/mycompany/app/view/MyHeaderView;

    .line 591
    .line 592
    iput-object v9, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 593
    .line 594
    iput-object v11, v0, Lcom/mycompany/app/setting/SettingActivity;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 595
    .line 596
    iput-object v15, v0, Lcom/mycompany/app/setting/SettingHome;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 597
    .line 598
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->Z1:Lcom/mycompany/app/view/MyRoundRelative;

    .line 599
    .line 600
    iput-object v3, v0, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 601
    .line 602
    iput-object v4, v0, Lcom/mycompany/app/setting/SettingHome;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 603
    .line 604
    move-object/from16 v1, v17

    .line 605
    .line 606
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 607
    .line 608
    move-object/from16 v1, v18

    .line 609
    .line 610
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 611
    .line 612
    move-object/from16 v1, p1

    .line 613
    .line 614
    iput-object v1, v0, Lcom/mycompany/app/setting/SettingHome;->d2:Lcom/mycompany/app/view/MyLineText;

    .line 615
    .line 616
    iput-object v8, v0, Lcom/mycompany/app/setting/SettingHome;->e2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 617
    .line 618
    iput-object v12, v0, Lcom/mycompany/app/setting/SettingHome;->f2:Lcom/google/android/material/tabs/TabLayout;

    .line 619
    .line 620
    iput-object v10, v0, Lcom/mycompany/app/setting/SettingHome;->g2:Landroidx/viewpager2/widget/ViewPager2;

    .line 621
    .line 622
    move-object/from16 v1, v16

    .line 623
    .line 624
    invoke-virtual {v0, v6, v1, v7}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 625
    .line 626
    .line 627
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 628
    .line 629
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 634
    .line 635
    .line 636
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 637
    .line 638
    const/4 v10, 0x1

    .line 639
    invoke-virtual {v1, v10}, Landroid/view/View;->setFocusable(Z)V

    .line 640
    .line 641
    .line 642
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 643
    .line 644
    invoke-virtual {v1, v10}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 645
    .line 646
    .line 647
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 648
    .line 649
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 650
    .line 651
    .line 652
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 653
    .line 654
    if-nez v1, :cond_4

    .line 655
    .line 656
    return-void

    .line 657
    :cond_4
    new-instance v2, Lcom/mycompany/app/setting/SettingHome$1;

    .line 658
    .line 659
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingHome$1;-><init>(Lcom/mycompany/app/setting/SettingHome;)V

    .line 660
    .line 661
    .line 662
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 663
    .line 664
    .line 665
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->g2:Landroidx/viewpager2/widget/ViewPager2;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/mycompany/app/setting/SettingHome;->h2:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->g2:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->h2:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

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
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->X1:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainSelectAdapter;->w()V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->X1:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 38
    .line 39
    .line 40
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->Y1:Lcom/mycompany/app/view/MyButtonImage;

    .line 41
    .line 42
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->Z1:Lcom/mycompany/app/view/MyRoundRelative;

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
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->Z1:Lcom/mycompany/app/view/MyRoundRelative;

    .line 51
    .line 52
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 57
    .line 58
    .line 59
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->a2:Lcom/mycompany/app/view/MyEditText;

    .line 60
    .line 61
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->b2:Lcom/mycompany/app/view/MyButtonImage;

    .line 69
    .line 70
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 71
    .line 72
    if-eqz v0, :cond_7

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 78
    .line 79
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->d2:Lcom/mycompany/app/view/MyLineText;

    .line 80
    .line 81
    if-eqz v0, :cond_8

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 84
    .line 85
    .line 86
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->d2:Lcom/mycompany/app/view/MyLineText;

    .line 87
    .line 88
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 89
    .line 90
    if-eqz v0, :cond_9

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 93
    .line 94
    .line 95
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->j2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 96
    .line 97
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->l2:Lcom/mycompany/app/view/MyButtonText;

    .line 98
    .line 99
    if-eqz v0, :cond_a

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 102
    .line 103
    .line 104
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->l2:Lcom/mycompany/app/view/MyButtonText;

    .line 105
    .line 106
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->m2:Lcom/mycompany/app/view/MyCoverView;

    .line 107
    .line 108
    if-eqz v0, :cond_b

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 111
    .line 112
    .line 113
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->m2:Lcom/mycompany/app/view/MyCoverView;

    .line 114
    .line 115
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->s2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 116
    .line 117
    if-eqz v0, :cond_c

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 120
    .line 121
    .line 122
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->s2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 123
    .line 124
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->u2:Lcom/mycompany/app/view/MyButtonText;

    .line 125
    .line 126
    if-eqz v0, :cond_d

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 129
    .line 130
    .line 131
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->u2:Lcom/mycompany/app/view/MyButtonText;

    .line 132
    .line 133
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->v2:Lcom/mycompany/app/view/MyCoverView;

    .line 134
    .line 135
    if-eqz v0, :cond_e

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 138
    .line 139
    .line 140
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->v2:Lcom/mycompany/app/view/MyCoverView;

    .line 141
    .line 142
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->o2:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 143
    .line 144
    if-eqz v0, :cond_f

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAddAdapter;->w()V

    .line 147
    .line 148
    .line 149
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->o2:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 150
    .line 151
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->x2:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 152
    .line 153
    if-eqz v0, :cond_10

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAddAdapter;->w()V

    .line 156
    .line 157
    .line 158
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->x2:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 159
    .line 160
    :cond_10
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->e2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 161
    .line 162
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->f2:Lcom/google/android/material/tabs/TabLayout;

    .line 163
    .line 164
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->i2:Landroid/widget/RelativeLayout;

    .line 165
    .line 166
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->k2:Landroid/widget/ImageView;

    .line 167
    .line 168
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->r2:Landroid/widget/RelativeLayout;

    .line 169
    .line 170
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->t2:Landroid/widget/ImageView;

    .line 171
    .line 172
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->n2:Lcom/mycompany/app/view/MyManagerLinear;

    .line 173
    .line 174
    iput-object v2, p0, Lcom/mycompany/app/setting/SettingHome;->w2:Lcom/mycompany/app/view/MyManagerLinear;

    .line 175
    .line 176
    return-void
.end method

.method public final onPause()V
    .locals 3

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
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->z2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingHome;->z2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->p2:Lcom/mycompany/app/setting/SettingHome$BookTask;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iput-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 28
    .line 29
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingHome;->p2:Lcom/mycompany/app/setting/SettingHome$BookTask;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingHome;->y2:Lcom/mycompany/app/setting/SettingHome$HistTask;

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iput-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 36
    .line 37
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingHome;->y2:Lcom/mycompany/app/setting/SettingHome$HistTask;

    .line 38
    .line 39
    :cond_3
    return-void
.end method
