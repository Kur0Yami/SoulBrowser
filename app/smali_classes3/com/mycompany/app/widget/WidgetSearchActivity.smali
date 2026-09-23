.class public Lcom/mycompany/app/widget/WidgetSearchActivity;
.super Lcom/mycompany/app/main/MainActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;
    }
.end annotation


# static fields
.field public static final synthetic I1:I


# instance fields
.field public A1:Lcom/mycompany/app/view/MyEngineMenu;

.field public B1:Lcom/mycompany/app/view/MyPopupMenu;

.field public C1:Z

.field public D1:Ljava/lang/String;

.field public E1:Z

.field public F1:Z

.field public final G1:Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;

.field public H1:Z

.field public f1:Landroid/content/Context;

.field public g1:Landroid/content/Intent;

.field public h1:Z

.field public i1:Z

.field public j1:Z

.field public k1:Z

.field public l1:Landroid/widget/FrameLayout;

.field public m1:Lcom/mycompany/app/view/MyAddrView;

.field public n1:Lcom/mycompany/app/view/MyIconView;

.field public o1:Lcom/mycompany/app/view/MyIconView;

.field public p1:Lcom/mycompany/app/view/MyIconView;

.field public q1:Lcom/mycompany/app/view/MyIconView;

.field public r1:Lcom/mycompany/app/view/MyEditAuto;

.field public s1:Z

.field public t1:I

.field public u1:I

.field public v1:Lcom/mycompany/app/web/WebSearchAdapter2;

.field public w1:Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;

.field public x1:Lcom/mycompany/app/dialog/DialogSetMsg;

.field public y1:Z

.field public z1:Lcom/mycompany/app/view/MyClipView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/mycompany/app/widget/WidgetSearchActivity$12;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/mycompany/app/widget/WidgetSearchActivity$12;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->G1:Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;

    .line 10
    .line 11
    return-void
.end method

.method public static u0(Lcom/mycompany/app/widget/WidgetSearchActivity;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Lcom/mycompany/app/view/MyAddrView;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/mycompany/app/view/MyAddrView;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const/16 v1, 0x10

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 21
    .line 22
    .line 23
    const/16 v3, 0x8

    .line 24
    .line 25
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    new-instance v4, Lcom/mycompany/app/view/MyIconView;

    .line 29
    .line 30
    invoke-direct {v4, p0}, Lcom/mycompany/app/view/MyIconView;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 34
    .line 35
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 36
    .line 37
    .line 38
    sget v6, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 39
    .line 40
    sget v7, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 41
    .line 42
    invoke-virtual {v0, v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 43
    .line 44
    .line 45
    new-instance v6, Lcom/mycompany/app/view/MyEditAuto;

    .line 46
    .line 47
    invoke-direct {v6, p0}, Lcom/mycompany/app/view/MyEditAuto;-><init>(Lcom/mycompany/app/main/MainActivity;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 51
    .line 52
    .line 53
    const/4 v1, 0x1

    .line 54
    invoke-virtual {v6, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v6, v1}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 61
    .line 62
    .line 63
    const/4 v7, 0x3

    .line 64
    invoke-virtual {v6, v7}, Landroid/view/View;->setTextDirection(I)V

    .line 65
    .line 66
    .line 67
    const/high16 v7, 0x41800000    # 16.0f

    .line 68
    .line 69
    invoke-virtual {v6, v1, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 70
    .line 71
    .line 72
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 73
    .line 74
    const/16 v8, 0x1d

    .line 75
    .line 76
    if-lt v7, v8, :cond_1

    .line 77
    .line 78
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 79
    .line 80
    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 81
    .line 82
    .line 83
    :cond_1
    sget v7, Lnet/kaki87/soul2/testing/R$string;->web_edit_hint:I

    .line 84
    .line 85
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setHint(I)V

    .line 86
    .line 87
    .line 88
    const v7, 0x10000003

    .line 89
    .line 90
    .line 91
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 95
    .line 96
    .line 97
    const/4 v1, 0x0

    .line 98
    invoke-virtual {v6, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 99
    .line 100
    .line 101
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 102
    .line 103
    sget v7, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 104
    .line 105
    invoke-direct {v1, v2, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 106
    .line 107
    .line 108
    const/high16 v7, 0x3f800000    # 1.0f

    .line 109
    .line 110
    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 111
    .line 112
    invoke-virtual {v0, v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    .line 114
    .line 115
    new-instance v1, Lcom/mycompany/app/view/MyIconView;

    .line 116
    .line 117
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyIconView;-><init>(Landroid/content/Context;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 127
    .line 128
    sget v8, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 129
    .line 130
    invoke-virtual {v0, v1, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 131
    .line 132
    .line 133
    new-instance v7, Lcom/mycompany/app/view/MyIconView;

    .line 134
    .line 135
    invoke-direct {v7, p0}, Lcom/mycompany/app/view/MyIconView;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {v7, v3}, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    sget v8, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 145
    .line 146
    sget v9, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 147
    .line 148
    invoke-virtual {v0, v7, v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 149
    .line 150
    .line 151
    new-instance v8, Lcom/mycompany/app/view/MyIconView;

    .line 152
    .line 153
    invoke-direct {v8, p0}, Lcom/mycompany/app/view/MyIconView;-><init>(Landroid/content/Context;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v8, v3}, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    sget v3, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 163
    .line 164
    sget v5, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 165
    .line 166
    invoke-virtual {v0, v8, v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 167
    .line 168
    .line 169
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 170
    .line 171
    iput-object v4, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->n1:Lcom/mycompany/app/view/MyIconView;

    .line 172
    .line 173
    iput-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->o1:Lcom/mycompany/app/view/MyIconView;

    .line 174
    .line 175
    iput-object v7, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->p1:Lcom/mycompany/app/view/MyIconView;

    .line 176
    .line 177
    iput-object v8, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->q1:Lcom/mycompany/app/view/MyIconView;

    .line 178
    .line 179
    iput-object v6, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 180
    .line 181
    iput-boolean v2, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->s1:Z

    .line 182
    .line 183
    iput v2, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->t1:I

    .line 184
    .line 185
    const/16 v0, 0x4d2

    .line 186
    .line 187
    iput v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->u1:I

    .line 188
    .line 189
    return-void
.end method

.method public static v0(Lcom/mycompany/app/widget/WidgetSearchActivity;Landroid/content/Intent;Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainApp;->u(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->h5(Landroid/content/res/Resources;Z)Z

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    sput-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 19
    .line 20
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->h5(Landroid/content/res/Resources;Z)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    sput-boolean p2, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 25
    .line 26
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 27
    .line 28
    iput-boolean p2, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->C1:Z

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    sget-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 32
    .line 33
    iput-boolean p2, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->C1:Z

    .line 34
    .line 35
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->h5(Landroid/content/res/Resources;Z)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    sput-boolean p2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 40
    .line 41
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->h5(Landroid/content/res/Resources;Z)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    sput-boolean p2, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 46
    .line 47
    :goto_0
    const-string p2, "EXTRA_VOICE"

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const-string v0, "EXTRA_LOCK"

    .line 53
    .line 54
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iput-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->h1:Z

    .line 59
    .line 60
    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    iput-boolean p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->i1:Z

    .line 65
    .line 66
    iget-boolean p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->h1:Z

    .line 67
    .line 68
    if-nez p1, :cond_2

    .line 69
    .line 70
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->z6()Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lcom/mycompany/app/main/MainApp;->p(Landroid/content/Context;)Lcom/mycompany/app/main/MainApp;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    iput-boolean v2, p1, Lcom/mycompany/app/main/MainApp;->p:Z

    .line 87
    .line 88
    :cond_3
    :goto_1
    iget-boolean p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->h1:Z

    .line 89
    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_4
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->z6()Z

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    if-nez p1, :cond_f

    .line 98
    .line 99
    :goto_2
    sget-object p1, Lcom/mycompany/app/pref/PrefMain;->E:Ljava/lang/String;

    .line 100
    .line 101
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    if-eqz p1, :cond_5

    .line 106
    .line 107
    array-length p2, p1

    .line 108
    goto :goto_3

    .line 109
    :cond_5
    move p2, v1

    .line 110
    :goto_3
    if-nez p2, :cond_6

    .line 111
    .line 112
    goto :goto_5

    .line 113
    :cond_6
    move v0, v1

    .line 114
    :goto_4
    if-ge v0, p2, :cond_8

    .line 115
    .line 116
    aget v3, p1, v0

    .line 117
    .line 118
    if-ne v3, v2, :cond_7

    .line 119
    .line 120
    move p1, v2

    .line 121
    goto :goto_6

    .line 122
    :cond_7
    add-int/lit8 v0, v0, 0x1

    .line 123
    .line 124
    goto :goto_4

    .line 125
    :cond_8
    :goto_5
    move p1, v1

    .line 126
    :goto_6
    iput-boolean p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->k1:Z

    .line 127
    .line 128
    if-nez p1, :cond_d

    .line 129
    .line 130
    sget-object p1, Lcom/mycompany/app/pref/PrefMain;->D:Ljava/lang/String;

    .line 131
    .line 132
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    if-eqz p1, :cond_9

    .line 137
    .line 138
    array-length p2, p1

    .line 139
    goto :goto_7

    .line 140
    :cond_9
    move p2, v1

    .line 141
    :goto_7
    if-nez p2, :cond_a

    .line 142
    .line 143
    goto :goto_9

    .line 144
    :cond_a
    move v0, v1

    .line 145
    :goto_8
    if-ge v0, p2, :cond_c

    .line 146
    .line 147
    aget v3, p1, v0

    .line 148
    .line 149
    if-ne v3, v2, :cond_b

    .line 150
    .line 151
    move v1, v2

    .line 152
    goto :goto_9

    .line 153
    :cond_b
    add-int/lit8 v0, v0, 0x1

    .line 154
    .line 155
    goto :goto_8

    .line 156
    :cond_c
    :goto_9
    iput-boolean v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->j1:Z

    .line 157
    .line 158
    :cond_d
    iget-object p1, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 159
    .line 160
    if-nez p1, :cond_e

    .line 161
    .line 162
    return-void

    .line 163
    :cond_e
    new-instance p2, Lcom/mycompany/app/widget/WidgetSearchActivity$3;

    .line 164
    .line 165
    invoke-direct {p2, p0}, Lcom/mycompany/app/widget/WidgetSearchActivity$3;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    .line 170
    .line 171
    return-void

    .line 172
    :cond_f
    iput-boolean v2, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->E1:Z

    .line 173
    .line 174
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 175
    .line 176
    .line 177
    iget-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 178
    .line 179
    sget v0, Lcom/mycompany/app/pref/PrefSecret;->s:I

    .line 180
    .line 181
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->i2(Landroid/content/Context;I)Landroid/content/Intent;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    const-string v0, "EXTRA_TYPE"

    .line 186
    .line 187
    const/4 v1, 0x4

    .line 188
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 189
    .line 190
    .line 191
    iget-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->i1:Z

    .line 192
    .line 193
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method public static w0(Lcom/mycompany/app/widget/WidgetSearchActivity;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->q4(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p0, p1}, Lcom/mycompany/app/widget/WidgetSearchActivity;->C0(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public static x0(Lcom/mycompany/app/widget/WidgetSearchActivity;ZIZ)V
    .locals 0

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    iget-object p3, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->z1:Lcom/mycompany/app/view/MyClipView;

    .line 4
    .line 5
    if-eqz p3, :cond_0

    .line 6
    .line 7
    invoke-virtual {p3, p1}, Lcom/mycompany/app/view/MyClipView;->setSearchList(Z)V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object p0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 11
    .line 12
    if-eqz p0, :cond_5

    .line 13
    .line 14
    iget-object p3, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 15
    .line 16
    if-nez p3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    if-nez p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditAuto;->d()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditAuto;->f()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_3

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyEditAuto;->j()V

    .line 32
    .line 33
    .line 34
    :cond_3
    if-gez p2, :cond_4

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_4
    iget-object p0, p0, Lcom/mycompany/app/view/MyEditAuto;->B:Landroid/widget/ListPopupWindow;

    .line 38
    .line 39
    invoke-virtual {p0, p2}, Landroid/widget/ListPopupWindow;->setSelection(I)V

    .line 40
    .line 41
    .line 42
    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public final A0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->x1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetMsg;->dismiss()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->x1:Lcom/mycompany/app/dialog/DialogSetMsg;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public final B0()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->t1:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public final C0(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->E1:Z

    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->o4(Landroid/content/Context;)Landroid/content/Intent;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "EXTRA_PATH"

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final D0(Landroid/widget/FrameLayout$LayoutParams;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->B0()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    sget v1, Lcom/mycompany/app/pref/PrefPdf;->A:I

    .line 12
    .line 13
    sget v2, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 14
    .line 15
    if-ge v1, v2, :cond_1

    .line 16
    .line 17
    move v1, v2

    .line 18
    :cond_1
    const/16 v2, 0x30

    .line 19
    .line 20
    move v3, v2

    .line 21
    move v2, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_2
    sget v1, Lcom/mycompany/app/pref/PrefPdf;->B:I

    .line 24
    .line 25
    sget v2, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 26
    .line 27
    if-ge v1, v2, :cond_3

    .line 28
    .line 29
    move v1, v2

    .line 30
    :cond_3
    const/16 v2, 0x50

    .line 31
    .line 32
    move v3, v2

    .line 33
    move v2, v1

    .line 34
    move v1, v0

    .line 35
    :goto_0
    iget v4, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 36
    .line 37
    if-ne v4, v1, :cond_5

    .line 38
    .line 39
    iget v4, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 40
    .line 41
    if-ne v4, v2, :cond_5

    .line 42
    .line 43
    iget v4, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 44
    .line 45
    if-eq v4, v3, :cond_4

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_4
    return v0

    .line 49
    :cond_5
    :goto_1
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 50
    .line 51
    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 52
    .line 53
    iput v3, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 54
    .line 55
    const/4 p1, 0x1

    .line 56
    return p1
.end method

.method public final E0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->z1:Lcom/mycompany/app/view/MyClipView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->D0(Landroid/widget/FrameLayout$LayoutParams;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->z1:Lcom/mycompany/app/view/MyClipView;

    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public final F0(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->z1:Lcom/mycompany/app/view/MyClipView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->B0()Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    xor-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, p1, v2, v1}, Lcom/mycompany/app/view/MyClipView;->h(ZZZ)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final G0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->B0()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-static {v1, v1}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->u1:I

    .line 16
    .line 17
    if-eq v3, v2, :cond_2

    .line 18
    .line 19
    iput v2, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->u1:I

    .line 20
    .line 21
    invoke-static {v2, v1}, Lcom/mycompany/app/main/MainUtil;->P1(II)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget-object v4, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 26
    .line 27
    invoke-virtual {v4, v2, v3}, Lcom/mycompany/app/view/MyAddrView;->c(II)V

    .line 28
    .line 29
    .line 30
    iget-object v4, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 31
    .line 32
    invoke-virtual {v4, v2, v1, v1, v0}, Lcom/mycompany/app/view/MyAddrView;->b(IIZZ)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 36
    .line 37
    invoke-static {v2, v1}, Lcom/mycompany/app/view/MyIconView;->k(IZ)I

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyEditAuto;->setTextColor(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 45
    .line 46
    const/4 v1, 0x1

    .line 47
    invoke-static {v2, v1}, Lcom/mycompany/app/view/MyIconView;->k(IZ)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setHintTextColor(I)V

    .line 52
    .line 53
    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->o1:Lcom/mycompany/app/view/MyIconView;

    .line 57
    .line 58
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_black_18:I

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->p1:Lcom/mycompany/app/view/MyIconView;

    .line 64
    .line 65
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_content_copy_black_18:I

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->q1:Lcom/mycompany/app/view/MyIconView;

    .line 71
    .line 72
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_delete_black_20:I

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->o1:Lcom/mycompany/app/view/MyIconView;

    .line 79
    .line 80
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_dark_18:I

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->p1:Lcom/mycompany/app/view/MyIconView;

    .line 86
    .line 87
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_content_copy_dark_18:I

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 90
    .line 91
    .line 92
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->q1:Lcom/mycompany/app/view/MyIconView;

    .line 93
    .line 94
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_delete_dark_20:I

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyIconView;->setImageResource(I)V

    .line 97
    .line 98
    .line 99
    :goto_0
    invoke-static {v2}, Lcom/mycompany/app/view/MyIconView;->i(I)F

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iget-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->o1:Lcom/mycompany/app/view/MyIconView;

    .line 104
    .line 105
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyIconView;->setMaxAlpha(F)V

    .line 106
    .line 107
    .line 108
    iget-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->p1:Lcom/mycompany/app/view/MyIconView;

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyIconView;->setMaxAlpha(F)V

    .line 111
    .line 112
    .line 113
    iget-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->q1:Lcom/mycompany/app/view/MyIconView;

    .line 114
    .line 115
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyIconView;->setMaxAlpha(F)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->n1:Lcom/mycompany/app/view/MyIconView;

    .line 119
    .line 120
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyIconView;->setBgPreColor(I)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->o1:Lcom/mycompany/app/view/MyIconView;

    .line 124
    .line 125
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyIconView;->setBgPreColor(I)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->p1:Lcom/mycompany/app/view/MyIconView;

    .line 129
    .line 130
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyIconView;->setBgPreColor(I)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->q1:Lcom/mycompany/app/view/MyIconView;

    .line 134
    .line 135
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyIconView;->setBgPreColor(I)V

    .line 136
    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_2
    iget-object v3, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 140
    .line 141
    iget-boolean v4, v3, Lcom/mycompany/app/view/MyAddrView;->h:Z

    .line 142
    .line 143
    if-eq v0, v4, :cond_3

    .line 144
    .line 145
    invoke-virtual {v3, v2, v1, v1, v0}, Lcom/mycompany/app/view/MyAddrView;->b(IIZZ)V

    .line 146
    .line 147
    .line 148
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->n1:Lcom/mycompany/app/view/MyIconView;

    .line 149
    .line 150
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyIconView;->w()V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public final H0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->l1:Landroid/widget/FrameLayout;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    iget v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->t1:I

    .line 12
    .line 13
    iget-boolean v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->k1:Z

    .line 14
    .line 15
    const/4 v2, 0x2

    .line 16
    if-eqz v1, :cond_1

    .line 17
    .line 18
    iput v2, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->t1:I

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->j1:Z

    .line 22
    .line 23
    const/4 v3, 0x1

    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    sget-boolean v1, Lcom/mycompany/app/pref/PrefPdf;->z:Z

    .line 27
    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    iput v2, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->t1:I

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iput v3, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->t1:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->R4()Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_4

    .line 41
    .line 42
    iput v2, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->t1:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_4
    iput v3, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->t1:I

    .line 46
    .line 47
    :goto_0
    invoke-virtual {p0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->B0()Z

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_5

    .line 52
    .line 53
    sget v1, Lcom/mycompany/app/pref/PrefPdf;->A:I

    .line 54
    .line 55
    const/16 v2, 0x30

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_5
    sget v1, Lcom/mycompany/app/pref/PrefPdf;->B:I

    .line 59
    .line 60
    const/16 v2, 0x50

    .line 61
    .line 62
    :goto_1
    sget v3, Lcom/mycompany/app/main/MainApp;->Y0:I

    .line 63
    .line 64
    if-ge v1, v3, :cond_6

    .line 65
    .line 66
    move v1, v3

    .line 67
    :cond_6
    if-nez v0, :cond_7

    .line 68
    .line 69
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 70
    .line 71
    const/4 v3, -0x1

    .line 72
    invoke-direct {v0, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 73
    .line 74
    .line 75
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 76
    .line 77
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 78
    .line 79
    iget-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->l1:Landroid/widget/FrameLayout;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 82
    .line 83
    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .line 85
    .line 86
    return-void

    .line 87
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 88
    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 94
    .line 95
    if-nez v0, :cond_8

    .line 96
    .line 97
    goto :goto_2

    .line 98
    :cond_8
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 99
    .line 100
    if-ne v3, v1, :cond_9

    .line 101
    .line 102
    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 103
    .line 104
    if-eq v3, v2, :cond_a

    .line 105
    .line 106
    :cond_9
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 107
    .line 108
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 109
    .line 110
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 111
    .line 112
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 113
    .line 114
    .line 115
    :cond_a
    :goto_2
    return-void
.end method

.method public final I0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0, p1}, Lcom/mycompany/app/view/MyAddrView;->d(Z)V

    .line 7
    .line 8
    .line 9
    const/16 v0, 0x8

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->o1:Lcom/mycompany/app/view/MyIconView;

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->p1:Lcom/mycompany/app/view/MyIconView;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->q1:Lcom/mycompany/app/view/MyIconView;

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->o1:Lcom/mycompany/app/view/MyIconView;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->p1:Lcom/mycompany/app/view/MyIconView;

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    invoke-static {}, Lcom/mycompany/app/db/book/DbBookRecent;->l()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-eqz p1, :cond_2

    .line 45
    .line 46
    iget-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->q1:Lcom/mycompany/app/view/MyIconView;

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_2
    iget-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->q1:Lcom/mycompany/app/view/MyIconView;

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/mycompany/app/view/MyIconView;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public final J0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->l1:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    const/high16 v1, -0x1000000

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    const/4 v1, -0x1

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 21
    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    :goto_1
    return-void

    .line 25
    :cond_2
    new-instance v1, Lcom/mycompany/app/widget/WidgetSearchActivity$17;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/mycompany/app/widget/WidgetSearchActivity$17;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final k0(IILandroid/content/Intent;)V
    .locals 1

    .line 1
    const/16 v0, 0x11

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->E1:Z

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    if-eq p2, v0, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    if-nez p3, :cond_2

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_2
    const-string p2, "android.speech.extra.RESULTS"

    .line 17
    .line 18
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-eqz p2, :cond_3

    .line 23
    .line 24
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result p3

    .line 28
    if-nez p3, :cond_3

    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    if-nez p2, :cond_3

    .line 41
    .line 42
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->q3(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/mycompany/app/widget/WidgetSearchActivity;->C0(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    sget p1, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 51
    .line 52
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->C1:Z

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->i5(ZLandroid/content/res/Configuration;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sput-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->i5(ZLandroid/content/res/Configuration;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    sput-boolean p1, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->C1:Z

    .line 23
    .line 24
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 25
    .line 26
    if-eq p1, v0, :cond_0

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->C1:Z

    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->J0()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->G0()V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->v1:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 37
    .line 38
    if-eqz p1, :cond_0

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainActivity;->W0:Z

    .line 3
    .line 4
    invoke-super {p0, p1}, Lcom/mycompany/app/main/MainActivity;->onCreate(Landroid/os/Bundle;)V

    .line 5
    .line 6
    .line 7
    invoke-static {p0}, Landroidx/core/splashscreen/SplashScreen;->a(Lcom/mycompany/app/main/MainActivity;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->G1:Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->e0(Lcom/mycompany/app/view/MyEditAuto$KeyBackListener;)V

    .line 13
    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/mycompany/app/main/MainActivity;->E0:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/mycompany/app/main/MainActivity;->f0()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    const/16 v0, 0x11

    .line 28
    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V

    .line 30
    .line 31
    .line 32
    new-instance p1, Landroid/widget/FrameLayout;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 35
    .line 36
    invoke-direct {p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->l1:Landroid/widget/FrameLayout;

    .line 40
    .line 41
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 42
    .line 43
    const/4 v1, -0x1

    .line 44
    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->l1:Landroid/widget/FrameLayout;

    .line 51
    .line 52
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->setMainInsetView(Landroid/view/View;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->J0()V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->l1:Landroid/widget/FrameLayout;

    .line 59
    .line 60
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->initMainScreenOn(Landroid/view/View;)V

    .line 61
    .line 62
    .line 63
    new-instance p1, Lcom/mycompany/app/widget/WidgetSearchActivity$1;

    .line 64
    .line 65
    invoke-direct {p1, p0}, Lcom/mycompany/app/widget/WidgetSearchActivity$1;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public final onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->A0()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->A1:Lcom/mycompany/app/view/MyEngineMenu;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEngineMenu;->a()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->A1:Lcom/mycompany/app/view/MyEngineMenu;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->B1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iput-object v1, p0, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->B1:Lcom/mycompany/app/view/MyPopupMenu;

    .line 29
    .line 30
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->y0()V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iput-object v1, v0, Lcom/mycompany/app/view/MyAddrView;->c:Lcom/mycompany/app/view/MyBarView$BarListener;

    .line 38
    .line 39
    iput-object v1, v0, Lcom/mycompany/app/view/MyAddrView;->f:[I

    .line 40
    .line 41
    iput-object v1, v0, Lcom/mycompany/app/view/MyAddrView;->g:[Lcom/mycompany/app/view/MyIconView;

    .line 42
    .line 43
    iput-object v1, v0, Lcom/mycompany/app/view/MyAddrView;->k:Landroid/graphics/RectF;

    .line 44
    .line 45
    iput-object v1, v0, Lcom/mycompany/app/view/MyAddrView;->l:Landroid/graphics/Paint;

    .line 46
    .line 47
    iput-object v1, v0, Lcom/mycompany/app/view/MyAddrView;->n:Landroid/graphics/Paint;

    .line 48
    .line 49
    iput-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 50
    .line 51
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->n1:Lcom/mycompany/app/view/MyIconView;

    .line 52
    .line 53
    if-eqz v0, :cond_3

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyIconView;->m()V

    .line 56
    .line 57
    .line 58
    iput-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->n1:Lcom/mycompany/app/view/MyIconView;

    .line 59
    .line 60
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->o1:Lcom/mycompany/app/view/MyIconView;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyIconView;->m()V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->o1:Lcom/mycompany/app/view/MyIconView;

    .line 68
    .line 69
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->p1:Lcom/mycompany/app/view/MyIconView;

    .line 70
    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyIconView;->m()V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->p1:Lcom/mycompany/app/view/MyIconView;

    .line 77
    .line 78
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->q1:Lcom/mycompany/app/view/MyIconView;

    .line 79
    .line 80
    if-eqz v0, :cond_6

    .line 81
    .line 82
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyIconView;->m()V

    .line 83
    .line 84
    .line 85
    iput-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->q1:Lcom/mycompany/app/view/MyIconView;

    .line 86
    .line 87
    :cond_6
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 88
    .line 89
    if-eqz v0, :cond_7

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEditAuto;->g()V

    .line 92
    .line 93
    .line 94
    iput-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 95
    .line 96
    :cond_7
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->z1:Lcom/mycompany/app/view/MyClipView;

    .line 97
    .line 98
    if-eqz v0, :cond_a

    .line 99
    .line 100
    iget-object v2, v0, Lcom/mycompany/app/view/MyClipView;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 101
    .line 102
    if-eqz v2, :cond_8

    .line 103
    .line 104
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 105
    .line 106
    .line 107
    iput-object v1, v0, Lcom/mycompany/app/view/MyClipView;->o:Lcom/mycompany/app/view/MyButtonImage;

    .line 108
    .line 109
    :cond_8
    iget-object v2, v0, Lcom/mycompany/app/view/MyClipView;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 110
    .line 111
    if-eqz v2, :cond_9

    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/mycompany/app/view/MyButtonImage;->j()V

    .line 114
    .line 115
    .line 116
    iput-object v1, v0, Lcom/mycompany/app/view/MyClipView;->p:Lcom/mycompany/app/view/MyButtonImage;

    .line 117
    .line 118
    :cond_9
    iput-object v1, v0, Lcom/mycompany/app/view/MyClipView;->c:Landroid/content/Context;

    .line 119
    .line 120
    iput-object v1, v0, Lcom/mycompany/app/view/MyClipView;->l:Lcom/mycompany/app/view/MyClipView$MyClipListener;

    .line 121
    .line 122
    iput-object v1, v0, Lcom/mycompany/app/view/MyClipView;->m:Landroidx/appcompat/widget/AppCompatTextView;

    .line 123
    .line 124
    iput-object v1, v0, Lcom/mycompany/app/view/MyClipView;->n:Landroid/widget/ImageView;

    .line 125
    .line 126
    iput-object v1, v0, Lcom/mycompany/app/view/MyClipView;->s:Ljava/lang/String;

    .line 127
    .line 128
    iput-object v1, v0, Lcom/mycompany/app/view/MyClipView;->t:Ljava/lang/String;

    .line 129
    .line 130
    iput-object v1, v0, Lcom/mycompany/app/view/MyClipView;->w:Ljava/util/concurrent/ExecutorService;

    .line 131
    .line 132
    iput-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->z1:Lcom/mycompany/app/view/MyClipView;

    .line 133
    .line 134
    :cond_a
    iput-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 135
    .line 136
    iput-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->l1:Landroid/widget/FrameLayout;

    .line 137
    .line 138
    iput-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->D1:Ljava/lang/String;

    .line 139
    .line 140
    return-void
.end method

.method public final onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->g1:Landroid/content/Intent;

    .line 5
    .line 6
    new-instance p1, Lcom/mycompany/app/widget/WidgetSearchActivity$2;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lcom/mycompany/app/widget/WidgetSearchActivity$2;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public final onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 5
    .line 6
    iput-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->C1:Z

    .line 7
    .line 8
    sget-object v0, Lcom/mycompany/app/pref/PrefMain;->H:Ljava/lang/String;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->D1:Ljava/lang/String;

    .line 11
    .line 12
    iget-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->E1:Z

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finishAffinity()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/mycompany/app/main/MainActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->O1:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainApp;->u(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->D1:Ljava/lang/String;

    .line 18
    .line 19
    sget-object v1, Lcom/mycompany/app/pref/PrefMain;->H:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->q5(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->D1:Ljava/lang/String;

    .line 30
    .line 31
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 32
    .line 33
    if-eqz v0, :cond_1

    .line 34
    .line 35
    invoke-static {v1, v1}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->P1(II)I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    iget-object v3, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 44
    .line 45
    sget-object v4, Lcom/mycompany/app/pref/PrefMain;->H:Ljava/lang/String;

    .line 46
    .line 47
    invoke-static {v4}, Lcom/mycompany/app/main/MainUtil;->a2(Ljava/lang/String;)[I

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyAddrView;->a([I)V

    .line 52
    .line 53
    .line 54
    iget-object v3, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->m1:Lcom/mycompany/app/view/MyAddrView;

    .line 55
    .line 56
    invoke-virtual {v3, v0, v2}, Lcom/mycompany/app/view/MyAddrView;->c(II)V

    .line 57
    .line 58
    .line 59
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->z1:Lcom/mycompany/app/view/MyClipView;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyClipView;->b()V

    .line 64
    .line 65
    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->H0()V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->E0()V

    .line 70
    .line 71
    .line 72
    iget-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->C1:Z

    .line 73
    .line 74
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 75
    .line 76
    if-eq v0, v2, :cond_4

    .line 77
    .line 78
    iput-boolean v2, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->C1:Z

    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->J0()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->G0()V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->z1:Lcom/mycompany/app/view/MyClipView;

    .line 87
    .line 88
    if-eqz v0, :cond_3

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyClipView;->setColor(Z)V

    .line 91
    .line 92
    .line 93
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->v1:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 94
    .line 95
    if-eqz v0, :cond_4

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 98
    .line 99
    .line 100
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->v1:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 101
    .line 102
    if-eqz v0, :cond_6

    .line 103
    .line 104
    invoke-virtual {p0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->B0()Z

    .line 105
    .line 106
    .line 107
    move-result v2

    .line 108
    xor-int/lit8 v2, v2, 0x1

    .line 109
    .line 110
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->r:Z

    .line 111
    .line 112
    if-ne v3, v2, :cond_5

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_5
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->r:Z

    .line 116
    .line 117
    iput v1, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->s:I

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 120
    .line 121
    .line 122
    :cond_6
    :goto_0
    return-void
.end method

.method public final y0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->w1:Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;

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
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->w1:Lcom/mycompany/app/widget/WidgetSearchActivity$SearchTask;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->v1:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebSearchAdapter2;->f()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->v1:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 19
    .line 20
    :cond_1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefZtwo;->B:Z

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEditAuto;->e()V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method public final z0()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->E1:Z

    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    .line 6
    .line 7
    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    .line 8
    .line 9
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "android.speech.extra.LANGUAGE_MODEL"

    .line 13
    .line 14
    const-string v3, "web_search"

    .line 15
    .line 16
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    sget-object v2, Lcom/mycompany/app/main/MainApp;->I1:Ljava/util/Locale;

    .line 20
    .line 21
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->f2(Ljava/util/Locale;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_0

    .line 30
    .line 31
    const-string v3, "android.speech.extra.LANGUAGE"

    .line 32
    .line 33
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 34
    .line 35
    .line 36
    :cond_0
    const/16 v2, 0x11

    .line 37
    .line 38
    invoke-virtual {p0, v1, v2}, Lcom/mycompany/app/main/MainActivity;->o0(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :catch_0
    iput-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->E1:Z

    .line 43
    .line 44
    sget v0, Lnet/kaki87/soul2/testing/R$string;->not_supported:I

    .line 45
    .line 46
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_1
    iput-boolean v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity;->E1:Z

    .line 51
    .line 52
    sget v0, Lnet/kaki87/soul2/testing/R$string;->apps_none:I

    .line 53
    .line 54
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 55
    .line 56
    .line 57
    :goto_0
    return-void
.end method
