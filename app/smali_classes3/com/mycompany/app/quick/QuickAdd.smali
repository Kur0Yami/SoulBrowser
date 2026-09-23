.class public Lcom/mycompany/app/quick/QuickAdd;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/quick/QuickAdd$ViewPagerAdapter;,
        Lcom/mycompany/app/quick/QuickAdd$BookTask;,
        Lcom/mycompany/app/quick/QuickAdd$HistTask;,
        Lcom/mycompany/app/quick/QuickAdd$ViewPagerHolder;
    }
.end annotation


# static fields
.field public static final synthetic X2:I


# instance fields
.field public A2:Lcom/mycompany/app/view/MyCoverView;

.field public B2:Lcom/mycompany/app/view/MyManagerLinear;

.field public C2:Lcom/mycompany/app/quick/QuickAddAdapter;

.field public D2:Lcom/mycompany/app/quick/QuickAdd$HistTask;

.field public E2:Lcom/mycompany/app/main/MainListLoader;

.field public F2:Lcom/mycompany/app/view/MyPopupMenu;

.field public G2:Lcom/mycompany/app/view/MyPopupMenu;

.field public H2:Landroid/net/Uri;

.field public I2:Ljava/lang/String;

.field public J2:Lcom/mycompany/app/dialog/DialogQuickIcon;

.field public K2:Lcom/mycompany/app/dialog/DialogQuickColor;

.field public L2:Z

.field public M2:Ljava/lang/String;

.field public N2:Ljava/lang/String;

.field public O2:Z

.field public P2:Landroid/graphics/Bitmap;

.field public Q2:I

.field public R2:I

.field public S2:Z

.field public T2:Ljava/util/regex/Pattern;

.field public U2:Ljava/lang/String;

.field public V2:Ljava/lang/String;

.field public W2:Z

.field public X1:Lcom/mycompany/app/view/MyButtonImage;

.field public Y1:Lcom/mycompany/app/view/MyRoundRelative;

.field public Z1:Lcom/mycompany/app/view/MyRoundImage;

.field public a2:Lcom/mycompany/app/view/MyLineView;

.field public b2:Lcom/mycompany/app/view/MyEditText;

.field public c2:Lcom/mycompany/app/view/MyButtonImage;

.field public d2:Lcom/mycompany/app/view/MyEditText;

.field public e2:Lcom/mycompany/app/view/MyButtonImage;

.field public f2:Lcom/mycompany/app/view/MyButtonImage;

.field public g2:Lcom/mycompany/app/view/MyRoundLinear;

.field public h2:Landroidx/appcompat/widget/AppCompatTextView;

.field public i2:Lcom/mycompany/app/view/MyLineText;

.field public j2:Landroidx/appcompat/widget/AppCompatTextView;

.field public k2:Lcom/google/android/material/tabs/TabLayout;

.field public l2:Landroidx/viewpager2/widget/ViewPager2;

.field public m2:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field public n2:Landroid/widget/RelativeLayout;

.field public o2:Lcom/mycompany/app/view/MyRecyclerView;

.field public p2:Landroid/widget/ImageView;

.field public q2:Lcom/mycompany/app/view/MyButtonText;

.field public r2:Lcom/mycompany/app/view/MyCoverView;

.field public s2:Lcom/mycompany/app/view/MyManagerLinear;

.field public t2:Lcom/mycompany/app/quick/QuickAddAdapter;

.field public u2:Lcom/mycompany/app/quick/QuickAdd$BookTask;

.field public v2:Z

.field public w2:Landroid/widget/RelativeLayout;

.field public x2:Lcom/mycompany/app/view/MyRecyclerView;

.field public y2:Landroid/widget/ImageView;

.field public z2:Lcom/mycompany/app/view/MyButtonText;


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

.method public static O0(Lcom/mycompany/app/quick/QuickAdd;Z)V
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
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->n2:Landroid/widget/RelativeLayout;

    .line 166
    .line 167
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdd;->o2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 168
    .line 169
    iput-object v4, p0, Lcom/mycompany/app/quick/QuickAdd;->p2:Landroid/widget/ImageView;

    .line 170
    .line 171
    iput-object v6, p0, Lcom/mycompany/app/quick/QuickAdd;->q2:Lcom/mycompany/app/view/MyButtonText;

    .line 172
    .line 173
    iput-object v3, p0, Lcom/mycompany/app/quick/QuickAdd;->r2:Lcom/mycompany/app/view/MyCoverView;

    .line 174
    .line 175
    return-void

    .line 176
    :cond_2
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->w2:Landroid/widget/RelativeLayout;

    .line 177
    .line 178
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdd;->x2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 179
    .line 180
    iput-object v4, p0, Lcom/mycompany/app/quick/QuickAdd;->y2:Landroid/widget/ImageView;

    .line 181
    .line 182
    iput-object v6, p0, Lcom/mycompany/app/quick/QuickAdd;->z2:Lcom/mycompany/app/view/MyButtonText;

    .line 183
    .line 184
    iput-object v3, p0, Lcom/mycompany/app/quick/QuickAdd;->A2:Lcom/mycompany/app/view/MyCoverView;

    .line 185
    .line 186
    return-void
.end method

.method public static P0(Lcom/mycompany/app/quick/QuickAdd;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

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
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    sget v0, Lnet/kaki87/soul2/testing/R$string;->input_name:I

    .line 24
    .line 25
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 26
    .line 27
    .line 28
    iput-boolean v3, p0, Lcom/mycompany/app/quick/QuickAdd;->L2:Z

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 32
    .line 33
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 46
    .line 47
    .line 48
    sget v0, Lnet/kaki87/soul2/testing/R$string;->input_url:I

    .line 49
    .line 50
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 51
    .line 52
    .line 53
    iput-boolean v3, p0, Lcom/mycompany/app/quick/QuickAdd;->L2:Z

    .line 54
    .line 55
    return-void

    .line 56
    :cond_2
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdd;->U2:Ljava/lang/String;

    .line 57
    .line 58
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->V2:Ljava/lang/String;

    .line 59
    .line 60
    new-instance v0, Lcom/mycompany/app/quick/QuickAdd$32;

    .line 61
    .line 62
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickAdd$32;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 66
    .line 67
    .line 68
    return-void
.end method


# virtual methods
.method public final Q0(Ljava/lang/String;ZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->u2:Lcom/mycompany/app/quick/QuickAdd$BookTask;

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
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->u2:Lcom/mycompany/app/quick/QuickAdd$BookTask;

    .line 10
    .line 11
    new-instance v0, Lcom/mycompany/app/quick/QuickAdd$BookTask;

    .line 12
    .line 13
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/mycompany/app/quick/QuickAdd$BookTask;-><init>(Lcom/mycompany/app/quick/QuickAdd;Ljava/lang/String;ZZ)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->u2:Lcom/mycompany/app/quick/QuickAdd$BookTask;

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

.method public final R0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->K2:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogQuickColor;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->K2:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final S0(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->Z1:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/quick/QuickAdd;->Q2:I

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->Z1:Lcom/mycompany/app/view/MyRoundImage;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_public_black_24:I

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget v0, p0, Lcom/mycompany/app/quick/QuickAdd;->Q2:I

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    invoke-static {}, Lcom/mycompany/app/db/book/DbBookQuick;->m()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/mycompany/app/quick/QuickAdd;->Q2:I

    .line 34
    .line 35
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->Z1:Lcom/mycompany/app/view/MyRoundImage;

    .line 36
    .line 37
    iget v1, p0, Lcom/mycompany/app/quick/QuickAdd;->Q2:I

    .line 38
    .line 39
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->T2:Ljava/util/regex/Pattern;

    .line 40
    .line 41
    if-nez v2, :cond_3

    .line 42
    .line 43
    const-string v2, "\\p{Punct}"

    .line 44
    .line 45
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->T2:Ljava/util/regex/Pattern;

    .line 50
    .line 51
    :cond_3
    iget-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->T2:Ljava/util/regex/Pattern;

    .line 52
    .line 53
    invoke-virtual {v0, v1, p1, v2}, Lcom/mycompany/app/view/MyRoundImage;->t(ILjava/lang/String;Ljava/util/regex/Pattern;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method public final T0(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->Z1:Lcom/mycompany/app/view/MyRoundImage;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iput-boolean v1, p0, Lcom/mycompany/app/quick/QuickAdd;->O2:Z

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->P2:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    invoke-virtual {p0, p3}, Lcom/mycompany/app/quick/QuickAdd;->S0(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    new-instance p3, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 23
    .line 24
    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    .line 25
    .line 26
    .line 27
    iput p1, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 28
    .line 29
    iput-object p2, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 30
    .line 31
    iput-object p2, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->z:Ljava/lang/String;

    .line 32
    .line 33
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 34
    .line 35
    iput-boolean v0, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->N:Z

    .line 36
    .line 37
    const/4 v2, 0x1

    .line 38
    if-nez p1, :cond_2

    .line 39
    .line 40
    iput v2, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const/16 v3, 0xb

    .line 44
    .line 45
    iput v3, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->c:I

    .line 46
    .line 47
    :goto_0
    const/16 v3, 0x21

    .line 48
    .line 49
    if-ne p1, v3, :cond_3

    .line 50
    .line 51
    invoke-static {p2, v0}, Lcom/mycompany/app/main/MainListLoader;->c(Ljava/lang/String;Z)Landroid/graphics/Bitmap;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_1

    .line 56
    :cond_3
    invoke-static {p3}, Lcom/mycompany/app/main/MainListLoader;->b(Lcom/mycompany/app/main/MainItem$ChildItem;)Landroid/graphics/Bitmap;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    :goto_1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-eqz p2, :cond_4

    .line 65
    .line 66
    iput-boolean v2, p0, Lcom/mycompany/app/quick/QuickAdd;->O2:Z

    .line 67
    .line 68
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->P2:Landroid/graphics/Bitmap;

    .line 69
    .line 70
    iput v1, p0, Lcom/mycompany/app/quick/QuickAdd;->Q2:I

    .line 71
    .line 72
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickAdd;->Z1:Lcom/mycompany/app/view/MyRoundImage;

    .line 73
    .line 74
    invoke-virtual {p2, v1}, Lcom/mycompany/app/view/MyRoundImage;->setBackColor(I)V

    .line 75
    .line 76
    .line 77
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickAdd;->Z1:Lcom/mycompany/app/view/MyRoundImage;

    .line 78
    .line 79
    invoke-virtual {p2, p1}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_4
    new-instance p1, Lcom/mycompany/app/main/MainListLoader;

    .line 84
    .line 85
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 86
    .line 87
    new-instance v0, Lcom/mycompany/app/quick/QuickAdd$25;

    .line 88
    .line 89
    invoke-direct {v0, p0}, Lcom/mycompany/app/quick/QuickAdd$25;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p1, p2, v1, v0}, Lcom/mycompany/app/main/MainListLoader;-><init>(Landroid/content/Context;ZLcom/mycompany/app/main/MainListLoader$ListLoadListener;)V

    .line 93
    .line 94
    .line 95
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->E2:Lcom/mycompany/app/main/MainListLoader;

    .line 96
    .line 97
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->Z1:Lcom/mycompany/app/view/MyRoundImage;

    .line 98
    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->E2:Lcom/mycompany/app/main/MainListLoader;

    .line 107
    .line 108
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickAdd;->Z1:Lcom/mycompany/app/view/MyRoundImage;

    .line 109
    .line 110
    invoke-virtual {p1, p3, p2}, Lcom/mycompany/app/main/MainListLoader;->e(Lcom/mycompany/app/main/MainItem$ChildItem;Landroid/view/View;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 5

    .line 1
    const/16 v0, 0x9

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    const/16 v3, 0xc

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    if-eq p1, v0, :cond_4

    .line 9
    .line 10
    if-eq p1, v3, :cond_0

    .line 11
    .line 12
    goto :goto_3

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->I2:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v4, p0, Lcom/mycompany/app/quick/QuickAdd;->I2:Ljava/lang/String;

    .line 16
    .line 17
    if-eq p2, v2, :cond_1

    .line 18
    .line 19
    goto :goto_3

    .line 20
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_3

    .line 25
    .line 26
    new-instance p2, Ljava/io/File;

    .line 27
    .line 28
    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_2

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_2
    iget-object p2, p0, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 39
    .line 40
    invoke-static {p2, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const/4 p3, 0x0

    .line 45
    invoke-virtual {p0, p3, p1, p2}, Lcom/mycompany/app/quick/QuickAdd;->T0(ILjava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_3
    :goto_0
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 50
    .line 51
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->H2:Landroid/net/Uri;

    .line 56
    .line 57
    iput-object v4, p0, Lcom/mycompany/app/quick/QuickAdd;->H2:Landroid/net/Uri;

    .line 58
    .line 59
    if-eq p2, v2, :cond_5

    .line 60
    .line 61
    goto :goto_3

    .line 62
    :cond_5
    if-nez p3, :cond_6

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_6
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    :goto_1
    if-nez v4, :cond_7

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_7
    move-object p1, v4

    .line 73
    :goto_2
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 74
    .line 75
    invoke-static {p2, p1}, Lcom/mycompany/app/main/MainUtil;->z7(Landroid/content/Context;Landroid/net/Uri;)V

    .line 76
    .line 77
    .line 78
    iget-object p2, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 79
    .line 80
    if-nez p2, :cond_8

    .line 81
    .line 82
    :goto_3
    return-void

    .line 83
    :cond_8
    if-nez p1, :cond_9

    .line 84
    .line 85
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 86
    .line 87
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_9
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->m0(Landroid/content/Context;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    iput-object p2, p0, Lcom/mycompany/app/quick/QuickAdd;->I2:Ljava/lang/String;

    .line 96
    .line 97
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 98
    .line 99
    .line 100
    move-result p2

    .line 101
    if-eqz p2, :cond_a

    .line 102
    .line 103
    sget p1, Lnet/kaki87/soul2/testing/R$string;->invalid_path:I

    .line 104
    .line 105
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 106
    .line 107
    .line 108
    return-void

    .line 109
    :cond_a
    new-instance p2, Landroid/content/Intent;

    .line 110
    .line 111
    iget-object p3, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 112
    .line 113
    const-class v0, Lcom/mycompany/app/main/image/MainImageCropper;

    .line 114
    .line 115
    invoke-direct {p2, p3, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 119
    .line 120
    .line 121
    const-string p1, "EXTRA_DST"

    .line 122
    .line 123
    iget-object p3, p0, Lcom/mycompany/app/quick/QuickAdd;->I2:Ljava/lang/String;

    .line 124
    .line 125
    invoke-virtual {p2, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 126
    .line 127
    .line 128
    const-string p1, "EXTRA_ICON"

    .line 129
    .line 130
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p0, p2, v3}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/mycompany/app/quick/QuickAdd;->S2:Z

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
    iput-boolean v0, p0, Lcom/mycompany/app/quick/QuickAdd;->S2:Z

    .line 13
    .line 14
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->X1:Lcom/mycompany/app/view/MyButtonImage;

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
    :try_start_0
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_dark_24:I

    .line 30
    .line 31
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->a2:Lcom/mycompany/app/view/MyLineView;

    .line 35
    .line 36
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_overlay_dark:I

    .line 37
    .line 38
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 42
    .line 43
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 47
    .line 48
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_dark_18:I

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 54
    .line 55
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->e2:Lcom/mycompany/app/view/MyButtonImage;

    .line 59
    .line 60
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_dark_18:I

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->f2:Lcom/mycompany/app/view/MyButtonImage;

    .line 66
    .line 67
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_dark_24:I

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 73
    .line 74
    const v0, -0xc0c0c1

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 81
    .line 82
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->e2:Lcom/mycompany/app/view/MyButtonImage;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->f2:Lcom/mycompany/app/view/MyButtonImage;

    .line 91
    .line 92
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 93
    .line 94
    .line 95
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->h2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 96
    .line 97
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 98
    .line 99
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->i2:Lcom/mycompany/app/view/MyLineText;

    .line 103
    .line 104
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 105
    .line 106
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->j2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 110
    .line 111
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->h2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 117
    .line 118
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->k2:Lcom/google/android/material/tabs/TabLayout;

    .line 122
    .line 123
    const v0, -0x4f4f50

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->o2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 130
    .line 131
    const v0, -0xdededf

    .line 132
    .line 133
    .line 134
    if-eqz p1, :cond_2

    .line 135
    .line 136
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 137
    .line 138
    .line 139
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->x2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 140
    .line 141
    if-eqz p1, :cond_5

    .line 142
    .line 143
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_3
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_24:I

    .line 148
    .line 149
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 150
    .line 151
    .line 152
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->a2:Lcom/mycompany/app/view/MyLineView;

    .line 153
    .line 154
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_overlay:I

    .line 155
    .line 156
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 157
    .line 158
    .line 159
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 160
    .line 161
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    .line 163
    .line 164
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 165
    .line 166
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_black_18:I

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 169
    .line 170
    .line 171
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 172
    .line 173
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 174
    .line 175
    .line 176
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->e2:Lcom/mycompany/app/view/MyButtonImage;

    .line 177
    .line 178
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_black_18:I

    .line 179
    .line 180
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->f2:Lcom/mycompany/app/view/MyButtonImage;

    .line 184
    .line 185
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_more_vert_black_24:I

    .line 186
    .line 187
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 188
    .line 189
    .line 190
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 191
    .line 192
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 193
    .line 194
    .line 195
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 196
    .line 197
    const v0, -0x1f1f20

    .line 198
    .line 199
    .line 200
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 201
    .line 202
    .line 203
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->e2:Lcom/mycompany/app/view/MyButtonImage;

    .line 204
    .line 205
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 206
    .line 207
    .line 208
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->f2:Lcom/mycompany/app/view/MyButtonImage;

    .line 209
    .line 210
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 211
    .line 212
    .line 213
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->h2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 214
    .line 215
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 216
    .line 217
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 218
    .line 219
    .line 220
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->i2:Lcom/mycompany/app/view/MyLineText;

    .line 221
    .line 222
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 223
    .line 224
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 225
    .line 226
    .line 227
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->j2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 228
    .line 229
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 230
    .line 231
    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 232
    .line 233
    .line 234
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->h2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 235
    .line 236
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->k2:Lcom/google/android/material/tabs/TabLayout;

    .line 240
    .line 241
    const v0, -0x595616

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setSelectedTabIndicatorColor(I)V

    .line 245
    .line 246
    .line 247
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->o2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 248
    .line 249
    const/4 v0, -0x1

    .line 250
    if-eqz p1, :cond_4

    .line 251
    .line 252
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 253
    .line 254
    .line 255
    :cond_4
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->x2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 256
    .line 257
    if-eqz p1, :cond_5

    .line 258
    .line 259
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 260
    .line 261
    .line 262
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->Y1:Lcom/mycompany/app/view/MyRoundRelative;

    .line 263
    .line 264
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyRoundRelative;->a()V

    .line 265
    .line 266
    .line 267
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 268
    .line 269
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyEditText;->d()V

    .line 270
    .line 271
    .line 272
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 273
    .line 274
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyEditText;->d()V

    .line 275
    .line 276
    .line 277
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->l2:Landroidx/viewpager2/widget/ViewPager2;

    .line 278
    .line 279
    if-nez p1, :cond_6

    .line 280
    .line 281
    goto/16 :goto_3

    .line 282
    .line 283
    :cond_6
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->getCurrentItem()I

    .line 284
    .line 285
    .line 286
    move-result p1

    .line 287
    const v0, -0x9e9e9f

    .line 288
    .line 289
    .line 290
    const v4, -0xe19938

    .line 291
    .line 292
    .line 293
    const v5, -0x3e3e3f

    .line 294
    .line 295
    .line 296
    if-nez p1, :cond_8

    .line 297
    .line 298
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 299
    .line 300
    if-eqz p1, :cond_7

    .line 301
    .line 302
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->i2:Lcom/mycompany/app/view/MyLineText;

    .line 303
    .line 304
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    .line 306
    .line 307
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->j2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 308
    .line 309
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 310
    .line 311
    .line 312
    goto :goto_1

    .line 313
    :cond_7
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->i2:Lcom/mycompany/app/view/MyLineText;

    .line 314
    .line 315
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 316
    .line 317
    .line 318
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->j2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 319
    .line 320
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 321
    .line 322
    .line 323
    goto :goto_1

    .line 324
    :cond_8
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 325
    .line 326
    if-eqz p1, :cond_9

    .line 327
    .line 328
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->i2:Lcom/mycompany/app/view/MyLineText;

    .line 329
    .line 330
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 331
    .line 332
    .line 333
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->j2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 334
    .line 335
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 336
    .line 337
    .line 338
    goto :goto_1

    .line 339
    :cond_9
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->i2:Lcom/mycompany/app/view/MyLineText;

    .line 340
    .line 341
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 342
    .line 343
    .line 344
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->j2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 345
    .line 346
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 347
    .line 348
    .line 349
    :goto_1
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->t2:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 350
    .line 351
    if-eqz p1, :cond_a

    .line 352
    .line 353
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 354
    .line 355
    .line 356
    :cond_a
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->C2:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 357
    .line 358
    if-eqz p1, :cond_b

    .line 359
    .line 360
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 361
    .line 362
    .line 363
    :cond_b
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->q2:Lcom/mycompany/app/view/MyButtonText;

    .line 364
    .line 365
    const v0, -0x70708

    .line 366
    .line 367
    .line 368
    const v4, -0xd8d8d9

    .line 369
    .line 370
    .line 371
    if-eqz p1, :cond_d

    .line 372
    .line 373
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 374
    .line 375
    if-eqz v5, :cond_c

    .line 376
    .line 377
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 378
    .line 379
    .line 380
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->q2:Lcom/mycompany/app/view/MyButtonText;

    .line 381
    .line 382
    invoke-virtual {p1, v2, v4}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 383
    .line 384
    .line 385
    goto :goto_2

    .line 386
    :cond_c
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 387
    .line 388
    .line 389
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->q2:Lcom/mycompany/app/view/MyButtonText;

    .line 390
    .line 391
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 392
    .line 393
    .line 394
    :cond_d
    :goto_2
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->z2:Lcom/mycompany/app/view/MyButtonText;

    .line 395
    .line 396
    if-eqz p1, :cond_f

    .line 397
    .line 398
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 399
    .line 400
    if-eqz v5, :cond_e

    .line 401
    .line 402
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 403
    .line 404
    .line 405
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->z2:Lcom/mycompany/app/view/MyButtonText;

    .line 406
    .line 407
    invoke-virtual {p1, v2, v4}, Lcom/mycompany/app/view/MyButtonText;->u(II)V

    .line 408
    .line 409
    .line 410
    return-void

    .line 411
    :cond_e
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 412
    .line 413
    .line 414
    iget-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->z2:Lcom/mycompany/app/view/MyButtonText;

    .line 415
    .line 416
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/view/MyButtonText;->u(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .line 418
    .line 419
    :catch_0
    :cond_f
    :goto_3
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 27

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
    iput-boolean v1, v0, Lcom/mycompany/app/quick/QuickAdd;->S2:Z

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "EXTRA_PATH"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iput-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->M2:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    const-string v2, "EXTRA_NAME"

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->N2:Ljava/lang/String;

    .line 33
    .line 34
    const/16 v1, 0x9

    .line 35
    .line 36
    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 38
    .line 39
    .line 40
    const/16 v1, 0xc

    .line 41
    .line 42
    invoke-virtual {v0, v2, v1}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 43
    .line 44
    .line 45
    sget v3, Lnet/kaki87/soul2/testing/R$string;->quick_access:I

    .line 46
    .line 47
    sget v4, Lnet/kaki87/soul2/testing/R$id;->set_icon_frame:I

    .line 48
    .line 49
    sget v5, Lnet/kaki87/soul2/testing/R$id;->set_cast_ctrl:I

    .line 50
    .line 51
    new-instance v6, Lcom/mycompany/app/view/MyMainRelative;

    .line 52
    .line 53
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 54
    .line 55
    .line 56
    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    .line 57
    .line 58
    const/4 v8, -0x1

    .line 59
    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 63
    .line 64
    .line 65
    new-instance v7, Landroid/widget/LinearLayout;

    .line 66
    .line 67
    invoke-direct {v7, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    const/4 v9, 0x1

    .line 71
    invoke-virtual {v7, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 72
    .line 73
    .line 74
    const/4 v10, 0x2

    .line 75
    invoke-static {v8, v8, v10, v5}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 76
    .line 77
    .line 78
    move-result-object v11

    .line 79
    invoke-virtual {v6, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 80
    .line 81
    .line 82
    new-instance v11, Lcom/mycompany/app/view/MyHeaderView;

    .line 83
    .line 84
    invoke-direct {v11, v0}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 88
    .line 89
    invoke-virtual {v7, v11, v8, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 90
    .line 91
    .line 92
    new-instance v12, Lcom/mycompany/app/view/MyButtonImage;

    .line 93
    .line 94
    invoke-direct {v12, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 95
    .line 96
    .line 97
    sget-object v13, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 98
    .line 99
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 100
    .line 101
    .line 102
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 103
    .line 104
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 105
    .line 106
    move/from16 p1, v10

    .line 107
    .line 108
    sget v10, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 109
    .line 110
    invoke-direct {v14, v15, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 111
    .line 112
    .line 113
    sget v10, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 114
    .line 115
    invoke-virtual {v14, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v11, v12, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    .line 120
    .line 121
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 122
    .line 123
    invoke-direct {v10, v0, v2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 124
    .line 125
    .line 126
    const/16 v14, 0x10

    .line 127
    .line 128
    invoke-virtual {v10, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 132
    .line 133
    .line 134
    const/high16 v15, 0x41900000    # 18.0f

    .line 135
    .line 136
    invoke-virtual {v10, v9, v15}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 137
    .line 138
    .line 139
    if-lez v3, :cond_0

    .line 140
    .line 141
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(I)V

    .line 142
    .line 143
    .line 144
    :cond_0
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 145
    .line 146
    sget v15, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 147
    .line 148
    invoke-direct {v3, v8, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v3, v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 152
    .line 153
    .line 154
    sget v15, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 155
    .line 156
    invoke-virtual {v3, v15}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v11, v10, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    .line 161
    .line 162
    new-instance v3, Landroid/widget/LinearLayout;

    .line 163
    .line 164
    invoke-direct {v3, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v3, v4}, Landroid/view/View;->setId(I)V

    .line 168
    .line 169
    .line 170
    const/4 v4, 0x0

    .line 171
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 175
    .line 176
    .line 177
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    .line 178
    .line 179
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 180
    .line 181
    const/4 v2, -0x2

    .line 182
    invoke-direct {v15, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 183
    .line 184
    .line 185
    const/16 v1, 0x15

    .line 186
    .line 187
    invoke-virtual {v15, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 188
    .line 189
    .line 190
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 191
    .line 192
    iput v1, v15, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 193
    .line 194
    invoke-virtual {v11, v3, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    .line 196
    .line 197
    const/high16 v1, 0x41600000    # 14.0f

    .line 198
    .line 199
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 200
    .line 201
    .line 202
    move-result v1

    .line 203
    float-to-int v1, v1

    .line 204
    new-instance v15, Lcom/mycompany/app/view/MyButtonImage;

    .line 205
    .line 206
    invoke-direct {v15, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v15, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v15, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 213
    .line 214
    .line 215
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 216
    .line 217
    invoke-virtual {v3, v15, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 218
    .line 219
    .line 220
    new-instance v1, Landroid/widget/FrameLayout;

    .line 221
    .line 222
    invoke-direct {v1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 223
    .line 224
    .line 225
    const/4 v9, 0x4

    .line 226
    invoke-virtual {v1, v9}, Landroid/view/View;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 230
    .line 231
    invoke-virtual {v3, v1, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 232
    .line 233
    .line 234
    new-instance v3, Lcom/mycompany/app/view/MyRoundRelative;

    .line 235
    .line 236
    invoke-direct {v3, v0}, Lcom/mycompany/app/view/MyRoundRelative;-><init>(Lcom/mycompany/app/setting/CastActivity;)V

    .line 237
    .line 238
    .line 239
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 240
    .line 241
    sget v18, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 242
    .line 243
    add-int v14, v9, v18

    .line 244
    .line 245
    invoke-virtual {v3, v4, v9, v4, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v7, v3, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 249
    .line 250
    .line 251
    new-instance v9, Lcom/mycompany/app/view/MyRoundImage;

    .line 252
    .line 253
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 254
    .line 255
    .line 256
    sget-object v14, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 257
    .line 258
    invoke-virtual {v9, v14}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 259
    .line 260
    .line 261
    sget v14, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 262
    .line 263
    div-int/lit8 v14, v14, 0x2

    .line 264
    .line 265
    int-to-float v14, v14

    .line 266
    invoke-virtual {v9, v14}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 267
    .line 268
    .line 269
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    .line 270
    .line 271
    sget v2, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 272
    .line 273
    invoke-direct {v14, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 274
    .line 275
    .line 276
    sget v2, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 277
    .line 278
    iput v2, v14, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 279
    .line 280
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 281
    .line 282
    invoke-virtual {v14, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v3, v9, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    .line 287
    .line 288
    new-instance v2, Lcom/mycompany/app/view/MyLineView;

    .line 289
    .line 290
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyLineView;-><init>(Landroid/content/Context;)V

    .line 291
    .line 292
    .line 293
    const/high16 v14, 0x40000000    # 2.0f

    .line 294
    .line 295
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 296
    .line 297
    .line 298
    move-result v8

    .line 299
    invoke-virtual {v2, v8}, Lcom/mycompany/app/view/MyLineView;->a(F)V

    .line 300
    .line 301
    .line 302
    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    .line 303
    .line 304
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 305
    .line 306
    invoke-direct {v8, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 307
    .line 308
    .line 309
    sget v14, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 310
    .line 311
    sget v20, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 312
    .line 313
    add-int v14, v14, v20

    .line 314
    .line 315
    invoke-virtual {v8, v14}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v3, v2, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 319
    .line 320
    .line 321
    new-instance v8, Lcom/mycompany/app/view/MyEditText;

    .line 322
    .line 323
    invoke-direct {v8, v0}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 324
    .line 325
    .line 326
    const/high16 v14, 0x42000000    # 32.0f

    .line 327
    .line 328
    invoke-static {v0, v14}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 329
    .line 330
    .line 331
    move-result v14

    .line 332
    float-to-int v14, v14

    .line 333
    invoke-virtual {v8, v4, v4, v14, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 334
    .line 335
    .line 336
    const/4 v4, 0x3

    .line 337
    move-object/from16 v21, v1

    .line 338
    .line 339
    move-object/from16 v22, v2

    .line 340
    .line 341
    const/4 v1, 0x1

    .line 342
    const/16 v2, 0x10

    .line 343
    .line 344
    invoke-static {v8, v2, v1, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 345
    .line 346
    .line 347
    const/high16 v2, 0x41800000    # 16.0f

    .line 348
    .line 349
    invoke-virtual {v8, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 350
    .line 351
    .line 352
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 353
    .line 354
    const/16 v2, 0x1d

    .line 355
    .line 356
    if-lt v1, v2, :cond_1

    .line 357
    .line 358
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 359
    .line 360
    invoke-virtual {v8, v2}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 361
    .line 362
    .line 363
    :cond_1
    sget v2, Lnet/kaki87/soul2/testing/R$string;->name:I

    .line 364
    .line 365
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 366
    .line 367
    .line 368
    const v2, -0x7e7e7f

    .line 369
    .line 370
    .line 371
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 372
    .line 373
    .line 374
    const/high16 v2, 0x10000000

    .line 375
    .line 376
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 377
    .line 378
    .line 379
    const/4 v2, 0x0

    .line 380
    invoke-virtual {v8, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 381
    .line 382
    .line 383
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 384
    .line 385
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 386
    .line 387
    move-object/from16 v26, v9

    .line 388
    .line 389
    const/4 v9, -0x1

    .line 390
    invoke-direct {v2, v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 391
    .line 392
    .line 393
    const/high16 v4, 0x42900000    # 72.0f

    .line 394
    .line 395
    invoke-static {v0, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 396
    .line 397
    .line 398
    move-result v4

    .line 399
    float-to-int v4, v4

    .line 400
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 401
    .line 402
    .line 403
    sget v4, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 404
    .line 405
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v3, v8, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 409
    .line 410
    .line 411
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 412
    .line 413
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 414
    .line 415
    .line 416
    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 417
    .line 418
    .line 419
    const/16 v4, 0x8

    .line 420
    .line 421
    invoke-virtual {v2, v4}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 422
    .line 423
    .line 424
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 425
    .line 426
    sget v4, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 427
    .line 428
    invoke-direct {v9, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 429
    .line 430
    .line 431
    const/16 v4, 0x15

    .line 432
    .line 433
    invoke-virtual {v9, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 434
    .line 435
    .line 436
    invoke-virtual {v3, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 437
    .line 438
    .line 439
    new-instance v4, Lcom/mycompany/app/view/MyEditText;

    .line 440
    .line 441
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 442
    .line 443
    .line 444
    const/4 v9, 0x0

    .line 445
    invoke-virtual {v4, v9, v9, v14, v9}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 446
    .line 447
    .line 448
    move-object/from16 v19, v2

    .line 449
    .line 450
    const/16 v2, 0x10

    .line 451
    .line 452
    const/4 v9, 0x3

    .line 453
    const/4 v14, 0x1

    .line 454
    invoke-static {v4, v2, v14, v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 455
    .line 456
    .line 457
    const/high16 v9, 0x41800000    # 16.0f

    .line 458
    .line 459
    invoke-virtual {v4, v14, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 460
    .line 461
    .line 462
    const/16 v9, 0x1d

    .line 463
    .line 464
    if-lt v1, v9, :cond_2

    .line 465
    .line 466
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 467
    .line 468
    invoke-virtual {v4, v1}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 469
    .line 470
    .line 471
    :cond_2
    sget v1, Lnet/kaki87/soul2/testing/R$string;->url:I

    .line 472
    .line 473
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setHint(I)V

    .line 474
    .line 475
    .line 476
    const v1, -0x7e7e7f

    .line 477
    .line 478
    .line 479
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 480
    .line 481
    .line 482
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setInputType(I)V

    .line 483
    .line 484
    .line 485
    const v1, 0x10000006

    .line 486
    .line 487
    .line 488
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 489
    .line 490
    .line 491
    const/4 v2, 0x0

    .line 492
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 493
    .line 494
    .line 495
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 496
    .line 497
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 498
    .line 499
    const/4 v9, -0x1

    .line 500
    invoke-direct {v1, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 501
    .line 502
    .line 503
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 504
    .line 505
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 506
    .line 507
    add-int/2addr v2, v9

    .line 508
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 509
    .line 510
    invoke-virtual {v1, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 511
    .line 512
    .line 513
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 514
    .line 515
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    .line 520
    .line 521
    new-instance v1, Lcom/mycompany/app/view/MyButtonImage;

    .line 522
    .line 523
    invoke-direct {v1, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 524
    .line 525
    .line 526
    invoke-virtual {v1, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 527
    .line 528
    .line 529
    const/16 v2, 0x8

    .line 530
    .line 531
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setVisibility(I)V

    .line 532
    .line 533
    .line 534
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 535
    .line 536
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 537
    .line 538
    invoke-direct {v2, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 539
    .line 540
    .line 541
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 542
    .line 543
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 544
    .line 545
    add-int/2addr v9, v14

    .line 546
    iput v9, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 547
    .line 548
    const/16 v9, 0x15

    .line 549
    .line 550
    invoke-virtual {v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 551
    .line 552
    .line 553
    invoke-virtual {v3, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 554
    .line 555
    .line 556
    new-instance v2, Lcom/mycompany/app/view/MyButtonImage;

    .line 557
    .line 558
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 559
    .line 560
    .line 561
    invoke-virtual {v2, v13}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 562
    .line 563
    .line 564
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 565
    .line 566
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 567
    .line 568
    invoke-direct {v9, v13, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 569
    .line 570
    .line 571
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 572
    .line 573
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 574
    .line 575
    add-int/2addr v13, v14

    .line 576
    iput v13, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 577
    .line 578
    const/16 v13, 0x15

    .line 579
    .line 580
    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 581
    .line 582
    .line 583
    invoke-virtual {v3, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 584
    .line 585
    .line 586
    new-instance v9, Lcom/mycompany/app/view/MyRoundLinear;

    .line 587
    .line 588
    invoke-direct {v9, v0}, Lcom/mycompany/app/view/MyRoundLinear;-><init>(Landroid/content/Context;)V

    .line 589
    .line 590
    .line 591
    const/16 v13, 0x8

    .line 592
    .line 593
    invoke-virtual {v9, v13}, Landroid/view/View;->setVisibility(I)V

    .line 594
    .line 595
    .line 596
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 597
    .line 598
    sget v14, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 599
    .line 600
    move-object/from16 v17, v2

    .line 601
    .line 602
    const/4 v2, -0x1

    .line 603
    invoke-direct {v13, v2, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 604
    .line 605
    .line 606
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 607
    .line 608
    iput v14, v13, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 609
    .line 610
    invoke-virtual {v7, v9, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 611
    .line 612
    .line 613
    new-instance v13, Landroidx/appcompat/widget/AppCompatTextView;

    .line 614
    .line 615
    const/4 v14, 0x0

    .line 616
    invoke-direct {v13, v0, v14}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 617
    .line 618
    .line 619
    const/16 v14, 0x11

    .line 620
    .line 621
    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setGravity(I)V

    .line 622
    .line 623
    .line 624
    const/4 v2, 0x1

    .line 625
    const/high16 v14, 0x41800000    # 16.0f

    .line 626
    .line 627
    invoke-virtual {v13, v2, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 628
    .line 629
    .line 630
    sget v2, Lnet/kaki87/soul2/testing/R$string;->current_page:I

    .line 631
    .line 632
    invoke-virtual {v13, v2}, Landroid/widget/TextView;->setText(I)V

    .line 633
    .line 634
    .line 635
    const/4 v2, -0x1

    .line 636
    invoke-virtual {v9, v13, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 637
    .line 638
    .line 639
    new-instance v14, Landroid/widget/LinearLayout;

    .line 640
    .line 641
    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 642
    .line 643
    .line 644
    const/4 v2, 0x0

    .line 645
    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 646
    .line 647
    .line 648
    invoke-virtual {v14, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 649
    .line 650
    .line 651
    sget v2, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 652
    .line 653
    move-object/from16 v24, v13

    .line 654
    .line 655
    const/4 v13, -0x1

    .line 656
    invoke-virtual {v7, v14, v13, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 657
    .line 658
    .line 659
    new-instance v2, Lcom/mycompany/app/view/MyLineText;

    .line 660
    .line 661
    invoke-direct {v2, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 662
    .line 663
    .line 664
    const/16 v13, 0x11

    .line 665
    .line 666
    invoke-virtual {v2, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 667
    .line 668
    .line 669
    move-object/from16 v25, v9

    .line 670
    .line 671
    const/4 v9, 0x1

    .line 672
    const/high16 v13, 0x41800000    # 16.0f

    .line 673
    .line 674
    invoke-virtual {v2, v9, v13}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 675
    .line 676
    .line 677
    sget v9, Lnet/kaki87/soul2/testing/R$string;->bookmark:I

    .line 678
    .line 679
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v2, v0}, Lcom/mycompany/app/view/MyLineText;->s(Landroid/content/Context;)V

    .line 683
    .line 684
    .line 685
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 686
    .line 687
    move-object/from16 v23, v1

    .line 688
    .line 689
    const/4 v1, -0x1

    .line 690
    const/4 v13, 0x0

    .line 691
    invoke-direct {v9, v13, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 692
    .line 693
    .line 694
    const/high16 v1, 0x3f800000    # 1.0f

    .line 695
    .line 696
    iput v1, v9, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 697
    .line 698
    invoke-virtual {v14, v2, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 699
    .line 700
    .line 701
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 702
    .line 703
    const/4 v1, 0x0

    .line 704
    invoke-direct {v9, v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 705
    .line 706
    .line 707
    const/16 v1, 0x11

    .line 708
    .line 709
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 710
    .line 711
    .line 712
    const/high16 v1, 0x41800000    # 16.0f

    .line 713
    .line 714
    const/4 v13, 0x1

    .line 715
    invoke-virtual {v9, v13, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 716
    .line 717
    .line 718
    sget v1, Lnet/kaki87/soul2/testing/R$string;->history:I

    .line 719
    .line 720
    move-object/from16 v16, v2

    .line 721
    .line 722
    const/4 v2, -0x1

    .line 723
    const/4 v13, 0x0

    .line 724
    invoke-static {v9, v1, v13, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 725
    .line 726
    .line 727
    move-result-object v1

    .line 728
    const/high16 v2, 0x3f800000    # 1.0f

    .line 729
    .line 730
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 731
    .line 732
    invoke-virtual {v14, v9, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 733
    .line 734
    .line 735
    new-instance v1, Lcom/google/android/material/tabs/TabLayout;

    .line 736
    .line 737
    invoke-direct {v1, v0}, Lcom/google/android/material/tabs/TabLayout;-><init>(Landroid/content/Context;)V

    .line 738
    .line 739
    .line 740
    const/4 v14, 0x1

    .line 741
    invoke-virtual {v1, v14}, Lcom/google/android/material/tabs/TabLayout;->setTabMode(I)V

    .line 742
    .line 743
    .line 744
    invoke-virtual {v1, v13}, Lcom/google/android/material/tabs/TabLayout;->setTabGravity(I)V

    .line 745
    .line 746
    .line 747
    const/high16 v2, 0x40000000    # 2.0f

    .line 748
    .line 749
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 750
    .line 751
    .line 752
    move-result v2

    .line 753
    float-to-int v2, v2

    .line 754
    new-instance v13, Landroid/widget/LinearLayout$LayoutParams;

    .line 755
    .line 756
    const/4 v14, -0x1

    .line 757
    invoke-direct {v13, v14, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 758
    .line 759
    .line 760
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 761
    .line 762
    invoke-virtual {v13, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 763
    .line 764
    .line 765
    sget v2, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 766
    .line 767
    invoke-virtual {v13, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 768
    .line 769
    .line 770
    invoke-virtual {v7, v1, v13}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 771
    .line 772
    .line 773
    new-instance v2, Landroidx/viewpager2/widget/ViewPager2;

    .line 774
    .line 775
    invoke-direct {v2, v0}, Landroidx/viewpager2/widget/ViewPager2;-><init>(Landroid/content/Context;)V

    .line 776
    .line 777
    .line 778
    const/4 v13, 0x0

    .line 779
    invoke-virtual {v2, v13}, Landroidx/viewpager2/widget/ViewPager2;->setOrientation(I)V

    .line 780
    .line 781
    .line 782
    invoke-virtual {v7, v2, v14, v14}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 783
    .line 784
    .line 785
    new-instance v7, Landroid/widget/FrameLayout;

    .line 786
    .line 787
    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v7, v5}, Landroid/view/View;->setId(I)V

    .line 791
    .line 792
    .line 793
    const/16 v13, 0x8

    .line 794
    .line 795
    invoke-virtual {v7, v13}, Landroid/view/View;->setVisibility(I)V

    .line 796
    .line 797
    .line 798
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 799
    .line 800
    const/4 v13, -0x2

    .line 801
    invoke-direct {v5, v14, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 802
    .line 803
    .line 804
    const/16 v13, 0xc

    .line 805
    .line 806
    invoke-virtual {v5, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 807
    .line 808
    .line 809
    invoke-virtual {v6, v7, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 810
    .line 811
    .line 812
    iput-object v6, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 813
    .line 814
    iput-object v11, v0, Lcom/mycompany/app/setting/SettingActivity;->F1:Lcom/mycompany/app/view/MyHeaderView;

    .line 815
    .line 816
    iput-object v12, v0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 817
    .line 818
    iput-object v10, v0, Lcom/mycompany/app/setting/SettingActivity;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 819
    .line 820
    iput-object v15, v0, Lcom/mycompany/app/quick/QuickAdd;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 821
    .line 822
    iput-object v3, v0, Lcom/mycompany/app/quick/QuickAdd;->Y1:Lcom/mycompany/app/view/MyRoundRelative;

    .line 823
    .line 824
    move-object/from16 v3, v26

    .line 825
    .line 826
    iput-object v3, v0, Lcom/mycompany/app/quick/QuickAdd;->Z1:Lcom/mycompany/app/view/MyRoundImage;

    .line 827
    .line 828
    move-object/from16 v3, v22

    .line 829
    .line 830
    iput-object v3, v0, Lcom/mycompany/app/quick/QuickAdd;->a2:Lcom/mycompany/app/view/MyLineView;

    .line 831
    .line 832
    iput-object v8, v0, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 833
    .line 834
    move-object/from16 v3, v19

    .line 835
    .line 836
    iput-object v3, v0, Lcom/mycompany/app/quick/QuickAdd;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 837
    .line 838
    iput-object v4, v0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 839
    .line 840
    move-object/from16 v3, v23

    .line 841
    .line 842
    iput-object v3, v0, Lcom/mycompany/app/quick/QuickAdd;->e2:Lcom/mycompany/app/view/MyButtonImage;

    .line 843
    .line 844
    move-object/from16 v3, v17

    .line 845
    .line 846
    iput-object v3, v0, Lcom/mycompany/app/quick/QuickAdd;->f2:Lcom/mycompany/app/view/MyButtonImage;

    .line 847
    .line 848
    move-object/from16 v3, v25

    .line 849
    .line 850
    iput-object v3, v0, Lcom/mycompany/app/quick/QuickAdd;->g2:Lcom/mycompany/app/view/MyRoundLinear;

    .line 851
    .line 852
    move-object/from16 v3, v24

    .line 853
    .line 854
    iput-object v3, v0, Lcom/mycompany/app/quick/QuickAdd;->h2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 855
    .line 856
    move-object/from16 v3, v16

    .line 857
    .line 858
    iput-object v3, v0, Lcom/mycompany/app/quick/QuickAdd;->i2:Lcom/mycompany/app/view/MyLineText;

    .line 859
    .line 860
    iput-object v9, v0, Lcom/mycompany/app/quick/QuickAdd;->j2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 861
    .line 862
    iput-object v1, v0, Lcom/mycompany/app/quick/QuickAdd;->k2:Lcom/google/android/material/tabs/TabLayout;

    .line 863
    .line 864
    iput-object v2, v0, Lcom/mycompany/app/quick/QuickAdd;->l2:Landroidx/viewpager2/widget/ViewPager2;

    .line 865
    .line 866
    move-object/from16 v1, v21

    .line 867
    .line 868
    invoke-virtual {v0, v6, v1, v7}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 869
    .line 870
    .line 871
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 872
    .line 873
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 874
    .line 875
    .line 876
    move-result-object v2

    .line 877
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 878
    .line 879
    .line 880
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 881
    .line 882
    const/4 v14, 0x1

    .line 883
    invoke-virtual {v1, v14}, Landroid/view/View;->setFocusable(Z)V

    .line 884
    .line 885
    .line 886
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 887
    .line 888
    invoke-virtual {v1, v14}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 889
    .line 890
    .line 891
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 892
    .line 893
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 894
    .line 895
    .line 896
    iget-object v1, v0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 897
    .line 898
    if-nez v1, :cond_3

    .line 899
    .line 900
    return-void

    .line 901
    :cond_3
    new-instance v2, Lcom/mycompany/app/quick/QuickAdd$1;

    .line 902
    .line 903
    invoke-direct {v2, v0}, Lcom/mycompany/app/quick/QuickAdd$1;-><init>(Lcom/mycompany/app/quick/QuickAdd;)V

    .line 904
    .line 905
    .line 906
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 907
    .line 908
    .line 909
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->l2:Landroidx/viewpager2/widget/ViewPager2;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/mycompany/app/quick/QuickAdd;->m2:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->l2:Landroidx/viewpager2/widget/ViewPager2;

    .line 10
    .line 11
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->m2:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

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
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->Y1:Lcom/mycompany/app/view/MyRoundRelative;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    iput-object v2, v0, Lcom/mycompany/app/view/MyRoundRelative;->f:Landroid/graphics/RectF;

    .line 38
    .line 39
    iput-object v2, v0, Lcom/mycompany/app/view/MyRoundRelative;->g:Landroid/graphics/Paint;

    .line 40
    .line 41
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->Y1:Lcom/mycompany/app/view/MyRoundRelative;

    .line 42
    .line 43
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->Z1:Lcom/mycompany/app/view/MyRoundImage;

    .line 44
    .line 45
    if-eqz v0, :cond_4

    .line 46
    .line 47
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 48
    .line 49
    .line 50
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->Z1:Lcom/mycompany/app/view/MyRoundImage;

    .line 51
    .line 52
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->a2:Lcom/mycompany/app/view/MyLineView;

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineView;->b()V

    .line 57
    .line 58
    .line 59
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->a2:Lcom/mycompany/app/view/MyLineView;

    .line 60
    .line 61
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 62
    .line 63
    if-eqz v0, :cond_6

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->b2:Lcom/mycompany/app/view/MyEditText;

    .line 69
    .line 70
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 71
    .line 72
    if-eqz v0, :cond_7

    .line 73
    .line 74
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 75
    .line 76
    .line 77
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->c2:Lcom/mycompany/app/view/MyButtonImage;

    .line 78
    .line 79
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 80
    .line 81
    if-eqz v0, :cond_8

    .line 82
    .line 83
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 84
    .line 85
    .line 86
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->d2:Lcom/mycompany/app/view/MyEditText;

    .line 87
    .line 88
    :cond_8
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->e2:Lcom/mycompany/app/view/MyButtonImage;

    .line 89
    .line 90
    if-eqz v0, :cond_9

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 93
    .line 94
    .line 95
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->e2:Lcom/mycompany/app/view/MyButtonImage;

    .line 96
    .line 97
    :cond_9
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->f2:Lcom/mycompany/app/view/MyButtonImage;

    .line 98
    .line 99
    if-eqz v0, :cond_a

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 102
    .line 103
    .line 104
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->f2:Lcom/mycompany/app/view/MyButtonImage;

    .line 105
    .line 106
    :cond_a
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->g2:Lcom/mycompany/app/view/MyRoundLinear;

    .line 107
    .line 108
    if-eqz v0, :cond_b

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRoundLinear;->a()V

    .line 111
    .line 112
    .line 113
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->g2:Lcom/mycompany/app/view/MyRoundLinear;

    .line 114
    .line 115
    :cond_b
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->i2:Lcom/mycompany/app/view/MyLineText;

    .line 116
    .line 117
    if-eqz v0, :cond_c

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 120
    .line 121
    .line 122
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->i2:Lcom/mycompany/app/view/MyLineText;

    .line 123
    .line 124
    :cond_c
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->o2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 125
    .line 126
    if-eqz v0, :cond_d

    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 129
    .line 130
    .line 131
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->o2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 132
    .line 133
    :cond_d
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->q2:Lcom/mycompany/app/view/MyButtonText;

    .line 134
    .line 135
    if-eqz v0, :cond_e

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 138
    .line 139
    .line 140
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->q2:Lcom/mycompany/app/view/MyButtonText;

    .line 141
    .line 142
    :cond_e
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->r2:Lcom/mycompany/app/view/MyCoverView;

    .line 143
    .line 144
    if-eqz v0, :cond_f

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 147
    .line 148
    .line 149
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->r2:Lcom/mycompany/app/view/MyCoverView;

    .line 150
    .line 151
    :cond_f
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->x2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 152
    .line 153
    if-eqz v0, :cond_10

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyRecyclerView;->s0()V

    .line 156
    .line 157
    .line 158
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->x2:Lcom/mycompany/app/view/MyRecyclerView;

    .line 159
    .line 160
    :cond_10
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->z2:Lcom/mycompany/app/view/MyButtonText;

    .line 161
    .line 162
    if-eqz v0, :cond_11

    .line 163
    .line 164
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyButtonText;->t()V

    .line 165
    .line 166
    .line 167
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->z2:Lcom/mycompany/app/view/MyButtonText;

    .line 168
    .line 169
    :cond_11
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->A2:Lcom/mycompany/app/view/MyCoverView;

    .line 170
    .line 171
    if-eqz v0, :cond_12

    .line 172
    .line 173
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 174
    .line 175
    .line 176
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->A2:Lcom/mycompany/app/view/MyCoverView;

    .line 177
    .line 178
    :cond_12
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->t2:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 179
    .line 180
    if-eqz v0, :cond_13

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAddAdapter;->w()V

    .line 183
    .line 184
    .line 185
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->t2:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 186
    .line 187
    :cond_13
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->C2:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 188
    .line 189
    if-eqz v0, :cond_14

    .line 190
    .line 191
    invoke-virtual {v0}, Lcom/mycompany/app/quick/QuickAddAdapter;->w()V

    .line 192
    .line 193
    .line 194
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->C2:Lcom/mycompany/app/quick/QuickAddAdapter;

    .line 195
    .line 196
    :cond_14
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->E2:Lcom/mycompany/app/main/MainListLoader;

    .line 197
    .line 198
    if-eqz v0, :cond_15

    .line 199
    .line 200
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 201
    .line 202
    .line 203
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->E2:Lcom/mycompany/app/main/MainListLoader;

    .line 204
    .line 205
    :cond_15
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->h2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 206
    .line 207
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->j2:Landroidx/appcompat/widget/AppCompatTextView;

    .line 208
    .line 209
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->k2:Lcom/google/android/material/tabs/TabLayout;

    .line 210
    .line 211
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->n2:Landroid/widget/RelativeLayout;

    .line 212
    .line 213
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->p2:Landroid/widget/ImageView;

    .line 214
    .line 215
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->w2:Landroid/widget/RelativeLayout;

    .line 216
    .line 217
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->y2:Landroid/widget/ImageView;

    .line 218
    .line 219
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->s2:Lcom/mycompany/app/view/MyManagerLinear;

    .line 220
    .line 221
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->B2:Lcom/mycompany/app/view/MyManagerLinear;

    .line 222
    .line 223
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->M2:Ljava/lang/String;

    .line 224
    .line 225
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->N2:Ljava/lang/String;

    .line 226
    .line 227
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->P2:Landroid/graphics/Bitmap;

    .line 228
    .line 229
    iput-object v2, p0, Lcom/mycompany/app/quick/QuickAdd;->T2:Ljava/util/regex/Pattern;

    .line 230
    .line 231
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
    if-eqz v0, :cond_5

    .line 9
    .line 10
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->J2:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogQuickIcon;->dismiss()V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdd;->J2:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/quick/QuickAdd;->R0()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->F2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 24
    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdd;->F2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->G2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 35
    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdd;->G2:Lcom/mycompany/app/view/MyPopupMenu;

    .line 44
    .line 45
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->u2:Lcom/mycompany/app/quick/QuickAdd$BookTask;

    .line 46
    .line 47
    const/4 v2, 0x1

    .line 48
    if-eqz v0, :cond_3

    .line 49
    .line 50
    iput-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 51
    .line 52
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdd;->u2:Lcom/mycompany/app/quick/QuickAdd$BookTask;

    .line 53
    .line 54
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdd;->D2:Lcom/mycompany/app/quick/QuickAdd$HistTask;

    .line 55
    .line 56
    if-eqz v0, :cond_4

    .line 57
    .line 58
    iput-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 59
    .line 60
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/quick/QuickAdd;->D2:Lcom/mycompany/app/quick/QuickAdd$HistTask;

    .line 61
    .line 62
    sput-object v1, Lcom/mycompany/app/main/MainApp;->T1:Landroid/widget/Toast;

    .line 63
    .line 64
    :cond_5
    return-void
.end method

.method public final onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 2
    .line 3
    .line 4
    const/16 p2, 0x1e

    .line 5
    .line 6
    if-ne p1, p2, :cond_0

    .line 7
    .line 8
    if-eqz p3, :cond_0

    .line 9
    .line 10
    array-length p1, p3

    .line 11
    if-lez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    aget p2, p3, p1

    .line 15
    .line 16
    if-nez p2, :cond_0

    .line 17
    .line 18
    const/16 p2, 0x9

    .line 19
    .line 20
    invoke-static {p2, p0, p1}, Lcom/mycompany/app/main/MainUtil;->C4(ILcom/mycompany/app/main/MainActivity;Z)Landroid/net/Uri;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdd;->H2:Landroid/net/Uri;

    .line 25
    .line 26
    :cond_0
    return-void
.end method
