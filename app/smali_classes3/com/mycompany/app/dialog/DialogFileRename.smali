.class public Lcom/mycompany/app/dialog/DialogFileRename;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogFileRename$FileRenameListener;,
        Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;
    }
.end annotation


# instance fields
.field public a0:Landroid/content/Context;

.field public final b0:I

.field public c0:Lcom/mycompany/app/main/MainItem$ChildItem;

.field public final d0:Z

.field public e0:Lcom/mycompany/app/dialog/DialogFileRename$FileRenameListener;

.field public f0:Lcom/mycompany/app/view/MyDialogLinear;

.field public g0:Lcom/mycompany/app/view/MyRoundImage;

.field public h0:Landroidx/appcompat/widget/AppCompatTextView;

.field public i0:Lcom/mycompany/app/view/MyEditText;

.field public j0:Lcom/mycompany/app/view/MyLineText;

.field public k0:Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;

.field public l0:Lcom/mycompany/app/main/MainListLoader;

.field public m0:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;ILcom/mycompany/app/main/MainItem$ChildItem;Lcom/mycompany/app/dialog/DialogFileRename$FileRenameListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_4

    .line 5
    .line 6
    iget-object p1, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->g:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 20
    .line 21
    iput p2, p0, Lcom/mycompany/app/dialog/DialogFileRename;->b0:I

    .line 22
    .line 23
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogFileRename;->c0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 24
    .line 25
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogFileRename;->e0:Lcom/mycompany/app/dialog/DialogFileRename$FileRenameListener;

    .line 26
    .line 27
    const/4 p1, 0x1

    .line 28
    if-ne p2, p1, :cond_1

    .line 29
    .line 30
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogFileRename;->d0:Z

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const/16 p4, 0x20

    .line 34
    .line 35
    if-ne p2, p4, :cond_2

    .line 36
    .line 37
    iget p2, p3, Lcom/mycompany/app/main/MainItem$ChildItem;->a:I

    .line 38
    .line 39
    const/16 p3, 0x8

    .line 40
    .line 41
    if-ne p2, p3, :cond_2

    .line 42
    .line 43
    iput-boolean p1, p0, Lcom/mycompany/app/dialog/DialogFileRename;->d0:Z

    .line 44
    .line 45
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 46
    .line 47
    if-nez p1, :cond_3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    new-instance p2, Lcom/mycompany/app/dialog/DialogFileRename$1;

    .line 51
    .line 52
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogFileRename$1;-><init>(Lcom/mycompany/app/dialog/DialogFileRename;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    :cond_4
    :goto_1
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogFileRename;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    const/4 v1, 0x1

    .line 8
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    const/high16 v3, 0x42900000    # 72.0f

    .line 13
    .line 14
    invoke-static {v0, v3}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    float-to-int v3, v3

    .line 19
    new-instance v4, Landroid/widget/FrameLayout;

    .line 20
    .line 21
    invoke-direct {v4, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    const/4 v5, -0x1

    .line 25
    invoke-virtual {v2, v4, v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 26
    .line 27
    .line 28
    new-instance v6, Lcom/mycompany/app/view/MyRoundImage;

    .line 29
    .line 30
    invoke-direct {v6, v0}, Lcom/mycompany/app/view/MyRoundImage;-><init>(Landroid/content/Context;)V

    .line 31
    .line 32
    .line 33
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 34
    .line 35
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 36
    .line 37
    .line 38
    sget v7, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 39
    .line 40
    int-to-float v7, v7

    .line 41
    const/high16 v8, 0x40000000    # 2.0f

    .line 42
    .line 43
    div-float/2addr v7, v8

    .line 44
    invoke-virtual {v6, v7}, Lcom/mycompany/app/view/MyRoundImage;->setCircleRadius(F)V

    .line 45
    .line 46
    .line 47
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    .line 48
    .line 49
    sget v8, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 50
    .line 51
    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 52
    .line 53
    .line 54
    const v8, 0x800013

    .line 55
    .line 56
    .line 57
    iput v8, v7, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 58
    .line 59
    sget v9, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 60
    .line 61
    invoke-virtual {v7, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v4, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    .line 66
    .line 67
    const/4 v7, 0x2

    .line 68
    const/4 v9, 0x0

    .line 69
    invoke-static {v0, v9, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->i(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 74
    .line 75
    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 76
    .line 77
    .line 78
    const/high16 v10, 0x41800000    # 16.0f

    .line 79
    .line 80
    invoke-virtual {v7, v1, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 81
    .line 82
    .line 83
    new-instance v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 84
    .line 85
    const/4 v12, -0x2

    .line 86
    invoke-direct {v11, v5, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 87
    .line 88
    .line 89
    iput v8, v11, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 90
    .line 91
    invoke-virtual {v11, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 92
    .line 93
    .line 94
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 95
    .line 96
    invoke-virtual {v11, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v4, v7, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    .line 101
    .line 102
    new-instance v4, Lcom/mycompany/app/view/MyEditText;

    .line 103
    .line 104
    invoke-direct {v4, v0}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 105
    .line 106
    .line 107
    const/16 v8, 0x10

    .line 108
    .line 109
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 113
    .line 114
    .line 115
    const/4 v8, 0x3

    .line 116
    invoke-virtual {v4, v8}, Landroid/view/View;->setTextDirection(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v1, v10}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 120
    .line 121
    .line 122
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 123
    .line 124
    const/16 v11, 0x1d

    .line 125
    .line 126
    if-lt v8, v11, :cond_1

    .line 127
    .line 128
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 129
    .line 130
    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 131
    .line 132
    .line 133
    :cond_1
    const/high16 v8, 0x10000000

    .line 134
    .line 135
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v4, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 139
    .line 140
    .line 141
    const/4 v8, 0x0

    .line 142
    invoke-virtual {v4, v8}, Lcom/mycompany/app/view/MyEditText;->b(I)V

    .line 143
    .line 144
    .line 145
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 146
    .line 147
    invoke-direct {v8, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 148
    .line 149
    .line 150
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 151
    .line 152
    invoke-virtual {v8, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 153
    .line 154
    .line 155
    sget v3, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 156
    .line 157
    invoke-virtual {v8, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v4, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    .line 162
    .line 163
    const/16 v3, 0x11

    .line 164
    .line 165
    invoke-static {v0, v3, v1, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->r(Landroid/content/Context;IIF)Lcom/mycompany/app/view/MyLineText;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 170
    .line 171
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 172
    .line 173
    .line 174
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 175
    .line 176
    invoke-virtual {v2, v0, v5, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 177
    .line 178
    .line 179
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogFileRename;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 180
    .line 181
    iput-object v6, p0, Lcom/mycompany/app/dialog/DialogFileRename;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 182
    .line 183
    iput-object v7, p0, Lcom/mycompany/app/dialog/DialogFileRename;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 184
    .line 185
    iput-object v4, p0, Lcom/mycompany/app/dialog/DialogFileRename;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 186
    .line 187
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 188
    .line 189
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 190
    .line 191
    if-nez v0, :cond_2

    .line 192
    .line 193
    :goto_0
    return-void

    .line 194
    :cond_2
    new-instance v1, Lcom/mycompany/app/dialog/DialogFileRename$2;

    .line 195
    .line 196
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogFileRename$2;-><init>(Lcom/mycompany/app/dialog/DialogFileRename;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 200
    .line 201
    .line 202
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogFileRename;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->c0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    const/4 v1, 0x1

    .line 12
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 23
    .line 24
    sget v0, Lnet/kaki87/soul2/testing/R$string;->input_name:I

    .line 25
    .line 26
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    array-length v2, v2

    .line 37
    const/16 v3, 0xc8

    .line 38
    .line 39
    if-le v2, v3, :cond_2

    .line 40
    .line 41
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 42
    .line 43
    sget v0, Lnet/kaki87/soul2/testing/R$string;->long_name:I

    .line 44
    .line 45
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogFileRename;->c0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 50
    .line 51
    iget-object v2, v2, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 52
    .line 53
    iget-boolean v3, p0, Lcom/mycompany/app/dialog/DialogFileRename;->d0:Z

    .line 54
    .line 55
    if-eqz v3, :cond_5

    .line 56
    .line 57
    iget v2, p0, Lcom/mycompany/app/dialog/DialogFileRename;->b0:I

    .line 58
    .line 59
    if-ne v2, v1, :cond_3

    .line 60
    .line 61
    const-string v2, ".album"

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_3
    const-string v2, ".mht"

    .line 65
    .line 66
    :goto_0
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->b4(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eqz v3, :cond_4

    .line 75
    .line 76
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 77
    .line 78
    sget v0, Lnet/kaki87/soul2/testing/R$string;->input_name:I

    .line 79
    .line 80
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    iget-object v4, p0, Lcom/mycompany/app/dialog/DialogFileRename;->c0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 90
    .line 91
    iget-object v4, v4, Lcom/mycompany/app/main/MainItem$ChildItem;->h:Ljava/lang/String;

    .line 92
    .line 93
    invoke-static {v3, v4, v2}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    goto :goto_1

    .line 98
    :cond_5
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->V0(Ljava/lang/String;)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    const-string v4, "mht"

    .line 103
    .line 104
    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    if-eqz v3, :cond_6

    .line 109
    .line 110
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 111
    .line 112
    sget v0, Lnet/kaki87/soul2/testing/R$string;->noti_invalid:I

    .line 113
    .line 114
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_6
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    if-eqz v2, :cond_7

    .line 123
    .line 124
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 125
    .line 126
    sget v0, Lnet/kaki87/soul2/testing/R$string;->same_name:I

    .line 127
    .line 128
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 129
    .line 130
    .line 131
    return-void

    .line 132
    :cond_7
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->p3(Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogFileRename;->k0:Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;

    .line 137
    .line 138
    if-eqz v2, :cond_8

    .line 139
    .line 140
    iput-boolean v1, v2, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 141
    .line 142
    :cond_8
    const/4 v1, 0x0

    .line 143
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogFileRename;->k0:Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;

    .line 144
    .line 145
    new-instance v1, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;

    .line 146
    .line 147
    invoke-direct {v1, p0, v0}, Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;-><init>(Lcom/mycompany/app/dialog/DialogFileRename;Ljava/lang/String;)V

    .line 148
    .line 149
    .line 150
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogFileRename;->k0:Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;

    .line 151
    .line 152
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 153
    .line 154
    invoke-virtual {v1, p0}, Lcom/mycompany/app/async/MyAsyncTask;->b(Landroid/content/Context;)V

    .line 155
    .line 156
    .line 157
    :cond_9
    :goto_2
    return-void
.end method

.method public static D(Lcom/mycompany/app/dialog/DialogFileRename;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const v1, -0x50506

    .line 7
    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-eqz p1, :cond_2

    .line 12
    .line 13
    invoke-virtual {p0, v3}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogFileRename;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 17
    .line 18
    invoke-virtual {p1, v3, v3, v2, v3}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogFileRename;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 22
    .line 23
    invoke-virtual {p1, v2}, Landroid/view/View;->setActivated(Z)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogFileRename;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 27
    .line 28
    sget v0, Lnet/kaki87/soul2/testing/R$string;->cancel:I

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogFileRename;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 34
    .line 35
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/high16 v1, -0x1000000

    .line 41
    .line 42
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 43
    .line 44
    .line 45
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 46
    .line 47
    invoke-virtual {p0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 48
    .line 49
    .line 50
    return-void

    .line 51
    :cond_2
    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogFileRename;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 55
    .line 56
    sget v0, Lnet/kaki87/soul2/testing/R$string;->rename:I

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogFileRename;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 62
    .line 63
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 64
    .line 65
    if-eqz v0, :cond_3

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const v1, -0xe19938

    .line 69
    .line 70
    .line 71
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogFileRename;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 75
    .line 76
    invoke-virtual {p1, v3}, Landroid/view/View;->setActivated(Z)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogFileRename;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 80
    .line 81
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p0, v2}, Lcom/mycompany/app/view/MyDialogBottom;->setCanceledOnTouchOutside(Z)V

    .line 85
    .line 86
    .line 87
    return-void
.end method


# virtual methods
.method public final E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogFileRename;->k0:Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v1, v2, v1}, Lcom/mycompany/app/view/MyDialogLinear;->e(IIZZ)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setActivated(Z)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 26
    .line 27
    sget v1, Lnet/kaki87/soul2/testing/R$string;->canceling:I

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 33
    .line 34
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 35
    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    const v1, -0x7f7f80

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const v1, -0x252526

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->k0:Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    iput-boolean v2, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 53
    .line 54
    :cond_2
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->k0:Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;

    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogFileRename;->dismiss()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final cancel()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogFileRename;->E()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->k0:Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iput-boolean v1, v0, Lcom/mycompany/app/async/MyAsyncTask;->c:Z

    .line 15
    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->k0:Lcom/mycompany/app/dialog/DialogFileRename$DialogTask;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogFileRename;->l0:Lcom/mycompany/app/main/MainListLoader;

    .line 20
    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/mycompany/app/main/MainListLoader;->f()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->l0:Lcom/mycompany/app/main/MainListLoader;

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogFileRename;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 36
    .line 37
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogFileRename;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyRoundImage;->k()V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 45
    .line 46
    :cond_4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogFileRename;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 47
    .line 48
    if-eqz v1, :cond_5

    .line 49
    .line 50
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->i0:Lcom/mycompany/app/view/MyEditText;

    .line 54
    .line 55
    :cond_5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogFileRename;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 56
    .line 57
    if-eqz v1, :cond_6

    .line 58
    .line 59
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->j0:Lcom/mycompany/app/view/MyLineText;

    .line 63
    .line 64
    :cond_6
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->a0:Landroid/content/Context;

    .line 65
    .line 66
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->c0:Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 67
    .line 68
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->e0:Lcom/mycompany/app/dialog/DialogFileRename$FileRenameListener;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/mycompany/app/dialog/DialogFileRename;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 71
    .line 72
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 73
    .line 74
    .line 75
    return-void
.end method
