.class public Lcom/mycompany/app/setting/SettingInfoLegalView;
.super Lcom/mycompany/app/setting/SettingActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;
    }
.end annotation


# static fields
.field public static final synthetic i2:I


# instance fields
.field public X1:Z

.field public Y1:Z

.field public Z1:Lcom/mycompany/app/view/MyCoverView;

.field public a2:Lcom/mycompany/app/main/MainTxtAdapter;

.field public b2:Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;

.field public c2:Landroid/view/GestureDetector;

.field public d2:Landroid/view/ScaleGestureDetector;

.field public e2:Z

.field public f2:Ljava/net/HttpURLConnection;

.field public g2:Ljava/io/InputStream;

.field public h2:Ljava/io/BufferedReader;


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
.method public final O0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->h2:Ljava/io/BufferedReader;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->g2:Ljava/io/InputStream;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 13
    .line 14
    .line 15
    :catch_1
    :cond_1
    const/4 v0, 0x0

    .line 16
    if-eqz p1, :cond_2

    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->f2:Ljava/net/HttpURLConnection;

    .line 19
    .line 20
    if-eqz p1, :cond_3

    .line 21
    .line 22
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->f2:Ljava/net/HttpURLConnection;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->f2:Ljava/net/HttpURLConnection;

    .line 29
    .line 30
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->f2:Ljava/net/HttpURLConnection;

    .line 31
    .line 32
    if-nez p1, :cond_4

    .line 33
    .line 34
    :cond_3
    :goto_0
    return-void

    .line 35
    :cond_4
    new-instance v0, Lcom/mycompany/app/setting/SettingInfoLegalView$4;

    .line 36
    .line 37
    invoke-direct {v0, p1}, Lcom/mycompany/app/setting/SettingInfoLegalView$4;-><init>(Ljava/net/HttpURLConnection;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, v0}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 41
    .line 42
    .line 43
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x5

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v1, 0x1

    .line 18
    if-le v0, v1, :cond_4

    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->d2:Landroid/view/ScaleGestureDetector;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 26
    .line 27
    if-nez v0, :cond_3

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_3
    new-instance v0, Landroid/view/ScaleGestureDetector;

    .line 31
    .line 32
    new-instance v1, Lcom/mycompany/app/setting/SettingInfoLegalView$6;

    .line 33
    .line 34
    invoke-direct {v1, p0}, Lcom/mycompany/app/setting/SettingInfoLegalView$6;-><init>(Lcom/mycompany/app/setting/SettingInfoLegalView;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {v0, p0, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->d2:Landroid/view/ScaleGestureDetector;

    .line 41
    .line 42
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->c2:Landroid/view/GestureDetector;

    .line 43
    .line 44
    if-eqz v0, :cond_5

    .line 45
    .line 46
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 47
    .line 48
    .line 49
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->d2:Landroid/view/ScaleGestureDetector;

    .line 50
    .line 51
    if-eqz v0, :cond_6

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 54
    .line 55
    .line 56
    :cond_6
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 57
    .line 58
    .line 59
    move-result p1

    .line 60
    return p1
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->e2:Z

    .line 5
    .line 6
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    iput-boolean v0, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->e2:Z

    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const v0, -0xdededf

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 v0, -0x1

    .line 25
    :goto_0
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->a2:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 29
    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    :catch_0
    :cond_3
    :goto_1
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/setting/SettingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 5
    .line 6
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->e2:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "EXTRA_WEB"

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->X1:Z

    .line 20
    .line 21
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "EXTRA_TOS"

    .line 26
    .line 27
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    iput-boolean p1, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->Y1:Z

    .line 32
    .line 33
    if-eqz p1, :cond_0

    .line 34
    .line 35
    sget p1, Lnet/kaki87/soul2/testing/R$string;->notice_tos:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    sget p1, Lnet/kaki87/soul2/testing/R$string;->notice_privacy:I

    .line 39
    .line 40
    :goto_0
    sget v0, Lnet/kaki87/soul2/testing/R$id;->set_icon_frame:I

    .line 41
    .line 42
    sget v2, Lnet/kaki87/soul2/testing/R$id;->set_cast_ctrl:I

    .line 43
    .line 44
    new-instance v3, Lcom/mycompany/app/view/MyMainRelative;

    .line 45
    .line 46
    invoke-direct {v3, p0}, Lcom/mycompany/app/view/MyMainRelative;-><init>(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    .line 50
    .line 51
    const/4 v5, -0x1

    .line 52
    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    new-instance v4, Lcom/mycompany/app/view/MyRecyclerView;

    .line 59
    .line 60
    invoke-direct {v4, p0}, Lcom/mycompany/app/view/MyRecyclerView;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    const/4 v6, 0x1

    .line 64
    invoke-virtual {v4, v6, v6}, Lcom/mycompany/app/view/MyRecyclerView;->u0(ZZ)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v4, v6}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 74
    .line 75
    invoke-direct {v1, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 76
    .line 77
    .line 78
    sget v7, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 79
    .line 80
    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 81
    .line 82
    const/4 v7, 0x2

    .line 83
    invoke-virtual {v1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v4, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    .line 88
    .line 89
    new-instance v1, Lcom/mycompany/app/view/MyCoverView;

    .line 90
    .line 91
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyCoverView;-><init>(Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    const/16 v8, 0x8

    .line 95
    .line 96
    invoke-virtual {v1, v8}, Lcom/mycompany/app/view/MyCoverView;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    new-instance v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 100
    .line 101
    invoke-direct {v9, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 102
    .line 103
    .line 104
    sget v10, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 105
    .line 106
    iput v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 107
    .line 108
    invoke-virtual {v9, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v1, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    .line 113
    .line 114
    new-instance v7, Lcom/mycompany/app/view/MyHeaderView;

    .line 115
    .line 116
    invoke-direct {v7, p0}, Lcom/mycompany/app/view/MyHeaderView;-><init>(Landroid/content/Context;)V

    .line 117
    .line 118
    .line 119
    sget v9, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 120
    .line 121
    invoke-virtual {v3, v7, v5, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 122
    .line 123
    .line 124
    new-instance v9, Lcom/mycompany/app/view/MyButtonImage;

    .line 125
    .line 126
    invoke-direct {v9, p0}, Lcom/mycompany/app/view/MyButtonImage;-><init>(Landroid/content/Context;)V

    .line 127
    .line 128
    .line 129
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 130
    .line 131
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 132
    .line 133
    .line 134
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    .line 135
    .line 136
    sget v11, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 137
    .line 138
    sget v12, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 139
    .line 140
    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 141
    .line 142
    .line 143
    sget v11, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 144
    .line 145
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v7, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    .line 150
    .line 151
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextView;

    .line 152
    .line 153
    const/4 v11, 0x0

    .line 154
    invoke-direct {v10, p0, v11}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 155
    .line 156
    .line 157
    const/16 v11, 0x10

    .line 158
    .line 159
    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 163
    .line 164
    .line 165
    const/high16 v12, 0x41900000    # 18.0f

    .line 166
    .line 167
    invoke-virtual {v10, v6, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 168
    .line 169
    .line 170
    if-lez p1, :cond_1

    .line 171
    .line 172
    invoke-virtual {v10, p1}, Landroid/widget/TextView;->setText(I)V

    .line 173
    .line 174
    .line 175
    :cond_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 176
    .line 177
    sget v6, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 178
    .line 179
    invoke-direct {p1, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {p1, v11, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 183
    .line 184
    .line 185
    sget v6, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 186
    .line 187
    invoke-virtual {p1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v7, v10, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    .line 192
    .line 193
    new-instance p1, Landroid/widget/FrameLayout;

    .line 194
    .line 195
    invoke-direct {p1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    .line 199
    .line 200
    .line 201
    const/4 v0, 0x4

    .line 202
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 206
    .line 207
    sget v6, Lcom/mycompany/app/main/MainApp;->b1:I

    .line 208
    .line 209
    const/4 v11, -0x2

    .line 210
    invoke-direct {v0, v11, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 211
    .line 212
    .line 213
    const/16 v6, 0x15

    .line 214
    .line 215
    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 216
    .line 217
    .line 218
    invoke-virtual {v7, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    .line 220
    .line 221
    new-instance v0, Landroid/widget/FrameLayout;

    .line 222
    .line 223
    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v0, v2}, Landroid/view/View;->setId(I)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 233
    .line 234
    invoke-direct {v2, v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 235
    .line 236
    .line 237
    const/16 v5, 0xc

    .line 238
    .line 239
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v3, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    .line 244
    .line 245
    iput-object v3, p0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 246
    .line 247
    iput-object v7, p0, Lcom/mycompany/app/setting/SettingActivity;->F1:Lcom/mycompany/app/view/MyHeaderView;

    .line 248
    .line 249
    iput-object v9, p0, Lcom/mycompany/app/setting/SettingActivity;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 250
    .line 251
    iput-object v10, p0, Lcom/mycompany/app/setting/SettingActivity;->H1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 252
    .line 253
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->Z1:Lcom/mycompany/app/view/MyCoverView;

    .line 254
    .line 255
    iput-object v4, p0, Lcom/mycompany/app/setting/SettingActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 256
    .line 257
    invoke-virtual {p0, v3, p1, v0}, Lcom/mycompany/app/setting/CastActivity;->B0(Landroid/view/View;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    .line 258
    .line 259
    .line 260
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 261
    .line 262
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V

    .line 267
    .line 268
    .line 269
    iget-object p1, p0, Lcom/mycompany/app/setting/SettingActivity;->E1:Lcom/mycompany/app/view/MyMainRelative;

    .line 270
    .line 271
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 275
    .line 276
    if-nez p1, :cond_2

    .line 277
    .line 278
    return-void

    .line 279
    :cond_2
    new-instance v0, Lcom/mycompany/app/setting/SettingInfoLegalView$1;

    .line 280
    .line 281
    invoke-direct {v0, p0}, Lcom/mycompany/app/setting/SettingInfoLegalView$1;-><init>(Lcom/mycompany/app/setting/SettingInfoLegalView;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 285
    .line 286
    .line 287
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/setting/SettingActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->Z1:Lcom/mycompany/app/view/MyCoverView;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyCoverView;->i()V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->Z1:Lcom/mycompany/app/view/MyCoverView;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->a2:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainTxtAdapter;->d()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iput v2, v0, Lcom/mycompany/app/main/MainTxtAdapter;->n:I

    .line 23
    .line 24
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtAdapter;->f:Ljava/util/List;

    .line 25
    .line 26
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtAdapter;->h:Landroid/graphics/Typeface;

    .line 27
    .line 28
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtAdapter;->l:Lcom/mycompany/app/view/MyManagerLinear;

    .line 29
    .line 30
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtAdapter;->m:Lcom/mycompany/app/main/MainTxtAdapter$MainTxtListener;

    .line 31
    .line 32
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->a2:Lcom/mycompany/app/main/MainTxtAdapter;

    .line 33
    .line 34
    :cond_1
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->c2:Landroid/view/GestureDetector;

    .line 35
    .line 36
    iput-object v1, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->d2:Landroid/view/ScaleGestureDetector;

    .line 37
    .line 38
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
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, v0}, Lcom/mycompany/app/setting/SettingInfoLegalView;->O0(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->b2:Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 20
    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lcom/mycompany/app/setting/SettingInfoLegalView;->b2:Lcom/mycompany/app/setting/SettingInfoLegalView$LoadTask;

    .line 23
    .line 24
    :cond_1
    return-void
.end method
