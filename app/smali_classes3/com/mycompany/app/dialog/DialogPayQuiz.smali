.class public Lcom/mycompany/app/dialog/DialogPayQuiz;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogPayQuiz$DialogPayListener;
    }
.end annotation


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogPayQuiz$DialogPayListener;

.field public c0:Lcom/android/billingclient/api/ProductDetails;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Landroidx/appcompat/widget/AppCompatTextView;

.field public f0:Lcom/mycompany/app/view/MyLineText;

.field public g0:Landroidx/appcompat/widget/AppCompatTextView;

.field public h0:Lcom/mycompany/app/view/MyEditText;

.field public i0:Lcom/mycompany/app/view/MyLineText;

.field public j0:I

.field public k0:Z


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingPay;Lcom/android/billingclient/api/ProductDetails;Lcom/mycompany/app/dialog/DialogPayQuiz$DialogPayListener;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->b0:Lcom/mycompany/app/dialog/DialogPayQuiz$DialogPayListener;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->c0:Lcom/android/billingclient/api/ProductDetails;

    .line 13
    .line 14
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p2, Lcom/mycompany/app/dialog/DialogPayQuiz$1;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogPayQuiz$1;-><init>(Lcom/mycompany/app/dialog/DialogPayQuiz;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogPayQuiz;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->a0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    sget v2, Lnet/kaki87/soul2/testing/R$id;->item_quiz_view:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-static {v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    const/4 v5, 0x0

    .line 17
    const/high16 v6, 0x41800000    # 16.0f

    .line 18
    .line 19
    invoke-static {v1, v5, v3, v3, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 20
    .line 21
    .line 22
    move-result-object v7

    .line 23
    sget v8, Lnet/kaki87/soul2/testing/R$string;->prevent_pay:I

    .line 24
    .line 25
    const/4 v9, -0x1

    .line 26
    const/4 v10, -0x2

    .line 27
    invoke-static {v7, v8, v9, v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->e(Landroidx/appcompat/widget/AppCompatTextView;III)Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 32
    .line 33
    iput v11, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 34
    .line 35
    invoke-virtual {v4, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    new-instance v8, Lcom/mycompany/app/view/MyLineText;

    .line 39
    .line 40
    invoke-direct {v8, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 44
    .line 45
    sget v12, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 46
    .line 47
    sget v13, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 48
    .line 49
    invoke-virtual {v8, v11, v12, v13, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v8, v3, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 56
    .line 57
    .line 58
    sget v11, Lnet/kaki87/soul2/testing/R$string;->input_answer:I

    .line 59
    .line 60
    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(I)V

    .line 61
    .line 62
    .line 63
    sget v11, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 64
    .line 65
    invoke-virtual {v8, v11}, Lcom/mycompany/app/view/MyLineText;->q(I)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v8, v9, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 69
    .line 70
    .line 71
    new-instance v11, Landroid/widget/RelativeLayout;

    .line 72
    .line 73
    invoke-direct {v11, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 74
    .line 75
    .line 76
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 77
    .line 78
    sget v13, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 79
    .line 80
    sget v14, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 81
    .line 82
    invoke-virtual {v11, v12, v13, v14, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 83
    .line 84
    .line 85
    const/4 v12, 0x0

    .line 86
    invoke-virtual {v11, v12}, Landroid/view/View;->setLayoutDirection(I)V

    .line 87
    .line 88
    .line 89
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 90
    .line 91
    invoke-direct {v12, v10, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 92
    .line 93
    .line 94
    iput v3, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 95
    .line 96
    invoke-virtual {v4, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    .line 98
    .line 99
    new-instance v12, Landroidx/appcompat/widget/AppCompatTextView;

    .line 100
    .line 101
    invoke-direct {v12, v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v12, v2}, Landroid/view/View;->setId(I)V

    .line 105
    .line 106
    .line 107
    const/16 v13, 0x10

    .line 108
    .line 109
    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setGravity(I)V

    .line 110
    .line 111
    .line 112
    const/4 v13, 0x3

    .line 113
    invoke-virtual {v12, v13}, Landroid/view/View;->setTextDirection(I)V

    .line 114
    .line 115
    .line 116
    const/high16 v14, 0x41a00000    # 20.0f

    .line 117
    .line 118
    invoke-virtual {v12, v3, v14}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 119
    .line 120
    .line 121
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 122
    .line 123
    invoke-virtual {v11, v12, v10, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 124
    .line 125
    .line 126
    new-instance v15, Lcom/mycompany/app/view/MyEditText;

    .line 127
    .line 128
    invoke-direct {v15, v1}, Lcom/mycompany/app/view/MyEditText;-><init>(Landroid/content/Context;)V

    .line 129
    .line 130
    .line 131
    const/16 v9, 0x11

    .line 132
    .line 133
    invoke-static {v15, v9, v3, v13}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->z(Lcom/mycompany/app/view/MyEditText;IZI)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v15, v3, v14}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 137
    .line 138
    .line 139
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 140
    .line 141
    const/16 v14, 0x1d

    .line 142
    .line 143
    if-lt v13, v14, :cond_1

    .line 144
    .line 145
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 146
    .line 147
    invoke-virtual {v15, v13}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 148
    .line 149
    .line 150
    :cond_1
    const/4 v13, 0x2

    .line 151
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setInputType(I)V

    .line 152
    .line 153
    .line 154
    const-string v13, "0123456789"

    .line 155
    .line 156
    invoke-static {v13}, Landroid/text/method/DigitsKeyListener;->getInstance(Ljava/lang/String;)Landroid/text/method/DigitsKeyListener;

    .line 157
    .line 158
    .line 159
    move-result-object v13

    .line 160
    invoke-virtual {v15, v13}, Landroidx/appcompat/widget/AppCompatEditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 161
    .line 162
    .line 163
    const/high16 v13, 0x10000000

    .line 164
    .line 165
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v15, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 169
    .line 170
    .line 171
    sget v5, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 172
    .line 173
    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setMinWidth(I)V

    .line 174
    .line 175
    .line 176
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    .line 177
    .line 178
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 179
    .line 180
    invoke-direct {v5, v10, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v5, v9, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v11, v15, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    .line 188
    .line 189
    new-instance v2, Lcom/mycompany/app/view/MyLineText;

    .line 190
    .line 191
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v2, v3, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 198
    .line 199
    .line 200
    sget v1, Lnet/kaki87/soul2/testing/R$string;->ok:I

    .line 201
    .line 202
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 203
    .line 204
    .line 205
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 206
    .line 207
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 211
    .line 212
    .line 213
    sget v1, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 214
    .line 215
    const/4 v3, -0x1

    .line 216
    invoke-virtual {v4, v2, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 217
    .line 218
    .line 219
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 220
    .line 221
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 222
    .line 223
    iput-object v8, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 224
    .line 225
    iput-object v12, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 226
    .line 227
    iput-object v15, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->h0:Lcom/mycompany/app/view/MyEditText;

    .line 228
    .line 229
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogPayQuiz;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 230
    .line 231
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 232
    .line 233
    if-nez v1, :cond_2

    .line 234
    .line 235
    :goto_0
    return-void

    .line 236
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogPayQuiz$2;

    .line 237
    .line 238
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPayQuiz$2;-><init>(Lcom/mycompany/app/dialog/DialogPayQuiz;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 242
    .line 243
    .line 244
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogPayQuiz;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->h0:Lcom/mycompany/app/view/MyEditText;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

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
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->a0:Landroid/content/Context;

    .line 18
    .line 19
    sget v0, Lnet/kaki87/soul2/testing/R$string;->empty:I

    .line 20
    .line 21
    invoke-static {p0, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->H6(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iget v2, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->j0:I

    .line 30
    .line 31
    if-eq v0, v2, :cond_2

    .line 32
    .line 33
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->a0:Landroid/content/Context;

    .line 36
    .line 37
    sget v3, Lnet/kaki87/soul2/testing/R$string;->correct_answer:I

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget v3, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->j0:I

    .line 44
    .line 45
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    new-array v1, v1, [Ljava/lang/Object;

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    aput-object v3, v1, v4

    .line 53
    .line 54
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->a0:Landroid/content/Context;

    .line 59
    .line 60
    invoke-static {v1, v0}, Lcom/mycompany/app/main/MainUtil;->f8(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->h0:Lcom/mycompany/app/view/MyEditText;

    .line 64
    .line 65
    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogPayQuiz;->D()V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->b0:Lcom/mycompany/app/dialog/DialogPayQuiz$DialogPayListener;

    .line 74
    .line 75
    if-eqz v0, :cond_3

    .line 76
    .line 77
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->c0:Lcom/android/billingclient/api/ProductDetails;

    .line 78
    .line 79
    invoke-interface {v0, p0}, Lcom/mycompany/app/dialog/DialogPayQuiz$DialogPayListener;->a(Lcom/android/billingclient/api/ProductDetails;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public final D()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x2

    .line 7
    const/16 v1, 0x9

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->L6(II)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->L6(II)I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    if-ne v2, v3, :cond_1

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->L6(II)I

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    :cond_1
    mul-int v0, v2, v3

    .line 24
    .line 25
    iput v0, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->j0:I

    .line 26
    .line 27
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    const-string v2, " X "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const-string v2, " = "

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
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
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyDialogLinear;->b()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->f0:Lcom/mycompany/app/view/MyLineText;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->h0:Lcom/mycompany/app/view/MyEditText;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEditText;->c()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->h0:Lcom/mycompany/app/view/MyEditText;

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 38
    .line 39
    if-eqz v0, :cond_4

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 42
    .line 43
    .line 44
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 45
    .line 46
    :cond_4
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->a0:Landroid/content/Context;

    .line 47
    .line 48
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->b0:Lcom/mycompany/app/dialog/DialogPayQuiz$DialogPayListener;

    .line 49
    .line 50
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->c0:Lcom/android/billingclient/api/ProductDetails;

    .line 51
    .line 52
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 53
    .line 54
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogPayQuiz;->g0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 55
    .line 56
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 57
    .line 58
    .line 59
    return-void
.end method
