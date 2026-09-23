.class public Lcom/mycompany/app/dialog/DialogNewsSearch;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# instance fields
.field public a0:Landroid/content/Context;

.field public b0:Lcom/mycompany/app/dialog/DialogEditText$EditTextListener;

.field public c0:Landroid/view/View;

.field public d0:Lcom/mycompany/app/view/MyDialogLinear;

.field public e0:Landroidx/appcompat/widget/AppCompatTextView;

.field public f0:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

.field public g0:Landroid/view/View;

.field public h0:Lcom/mycompany/app/view/MyLineText;

.field public i0:Z

.field public j0:Lcom/mycompany/app/web/WebSearchAdapter2;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/mycompany/app/dialog/DialogEditText$EditTextListener;)V
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->a0:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->b0:Lcom/mycompany/app/dialog/DialogEditText$EditTextListener;

    .line 11
    .line 12
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->c0:Landroid/view/View;

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
    new-instance p2, Lcom/mycompany/app/dialog/DialogNewsSearch$1;

    .line 20
    .line 21
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogNewsSearch$1;-><init>(Lcom/mycompany/app/dialog/DialogNewsSearch;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogNewsSearch;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->a0:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    sget v1, Lnet/kaki87/soul2/testing/R$id;->item_frame_view:I

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-static {v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->q(Landroid/content/Context;I)Lcom/mycompany/app/view/MyDialogLinear;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    const/high16 v4, 0x42b00000    # 88.0f

    .line 15
    .line 16
    invoke-static {v0, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    float-to-int v4, v4

    .line 21
    const/high16 v5, 0x41400000    # 12.0f

    .line 22
    .line 23
    invoke-static {v0, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    float-to-int v5, v5

    .line 28
    const/high16 v6, 0x41200000    # 10.0f

    .line 29
    .line 30
    invoke-static {v0, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    float-to-int v6, v6

    .line 35
    new-instance v7, Landroid/widget/FrameLayout;

    .line 36
    .line 37
    invoke-direct {v7, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v7, v1}, Landroid/view/View;->setId(I)V

    .line 41
    .line 42
    .line 43
    sget v1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 44
    .line 45
    invoke-virtual {v7, v1, v5, v6, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 46
    .line 47
    .line 48
    const/4 v1, -0x1

    .line 49
    invoke-virtual {v3, v7, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 50
    .line 51
    .line 52
    const/high16 v4, 0x41600000    # 14.0f

    .line 53
    .line 54
    const/4 v5, 0x0

    .line 55
    invoke-static {v0, v5, v2, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->j(Landroid/content/Context;Landroid/util/AttributeSet;IF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    sget v6, Lnet/kaki87/soul2/testing/R$string;->news_title:I

    .line 60
    .line 61
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(I)V

    .line 62
    .line 63
    .line 64
    const/4 v6, -0x2

    .line 65
    invoke-virtual {v7, v4, v6, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 66
    .line 67
    .line 68
    new-instance v6, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    .line 69
    .line 70
    invoke-direct {v6, v0, v5}, Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    .line 72
    .line 73
    const/16 v8, 0x10

    .line 74
    .line 75
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setGravity(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 79
    .line 80
    .line 81
    const/4 v8, 0x3

    .line 82
    invoke-virtual {v6, v8}, Landroid/view/View;->setTextDirection(I)V

    .line 83
    .line 84
    .line 85
    const/high16 v8, 0x41800000    # 16.0f

    .line 86
    .line 87
    invoke-virtual {v6, v2, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 88
    .line 89
    .line 90
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 91
    .line 92
    const/16 v10, 0x1d

    .line 93
    .line 94
    if-lt v9, v10, :cond_1

    .line 95
    .line 96
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 97
    .line 98
    invoke-virtual {v6, v9}, Landroid/widget/AutoCompleteTextView;->setTextCursorDrawable(I)V

    .line 99
    .line 100
    .line 101
    :cond_1
    const/high16 v9, 0x10000000

    .line 102
    .line 103
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 107
    .line 108
    .line 109
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 110
    .line 111
    sget v9, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 112
    .line 113
    invoke-direct {v5, v1, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 114
    .line 115
    .line 116
    const v9, 0x800053

    .line 117
    .line 118
    .line 119
    iput v9, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 120
    .line 121
    const/high16 v10, 0x40c00000    # 6.0f

    .line 122
    .line 123
    invoke-static {v0, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 124
    .line 125
    .line 126
    move-result v10

    .line 127
    float-to-int v10, v10

    .line 128
    invoke-virtual {v5, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v7, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    .line 133
    .line 134
    const/high16 v5, 0x40000000    # 2.0f

    .line 135
    .line 136
    invoke-static {v0, v5}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 137
    .line 138
    .line 139
    move-result v5

    .line 140
    float-to-int v5, v5

    .line 141
    sget-boolean v10, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 142
    .line 143
    if-eqz v10, :cond_2

    .line 144
    .line 145
    sget v10, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_2
    move v10, v5

    .line 149
    :goto_0
    new-instance v11, Landroid/view/View;

    .line 150
    .line 151
    invoke-direct {v11, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 152
    .line 153
    .line 154
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 155
    .line 156
    invoke-direct {v12, v1, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 157
    .line 158
    .line 159
    iput v9, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 160
    .line 161
    iput v5, v12, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 162
    .line 163
    invoke-virtual {v7, v11, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    .line 165
    .line 166
    new-instance v5, Lcom/mycompany/app/view/MyLineText;

    .line 167
    .line 168
    invoke-direct {v5, v0}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 169
    .line 170
    .line 171
    const/16 v0, 0x11

    .line 172
    .line 173
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v5, v2, v8}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 177
    .line 178
    .line 179
    sget v0, Lnet/kaki87/soul2/testing/R$string;->search_url:I

    .line 180
    .line 181
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(I)V

    .line 182
    .line 183
    .line 184
    sget v0, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 185
    .line 186
    invoke-virtual {v5, v0}, Lcom/mycompany/app/view/MyLineText;->t(I)V

    .line 187
    .line 188
    .line 189
    sget v0, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 190
    .line 191
    invoke-virtual {v3, v5, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 192
    .line 193
    .line 194
    iput-object v3, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 195
    .line 196
    iput-object v4, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 197
    .line 198
    iput-object v6, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->f0:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    .line 199
    .line 200
    iput-object v11, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->g0:Landroid/view/View;

    .line 201
    .line 202
    iput-object v5, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 203
    .line 204
    iget-object v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 205
    .line 206
    if-nez v0, :cond_3

    .line 207
    .line 208
    :goto_1
    return-void

    .line 209
    :cond_3
    new-instance v1, Lcom/mycompany/app/dialog/DialogNewsSearch$2;

    .line 210
    .line 211
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogNewsSearch$2;-><init>(Lcom/mycompany/app/dialog/DialogNewsSearch;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method public static C(Lcom/mycompany/app/dialog/DialogNewsSearch;ZLcom/mycompany/app/web/WebSearchAdapter$SearchItem;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->f0:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->b0:Lcom/mycompany/app/dialog/DialogEditText$EditTextListener;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    if-eqz p1, :cond_4

    .line 11
    .line 12
    if-nez p2, :cond_1

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_1
    iget p1, p2, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->b:I

    .line 16
    .line 17
    const/4 v0, 0x3

    .line 18
    if-ne p1, v0, :cond_2

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/mycompany/app/dialog/DialogNewsSearch;->dismiss()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_2
    if-eqz p1, :cond_3

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_3
    iget-object p1, p2, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_4
    const/4 p1, 0x1

    .line 31
    invoke-static {v0, p1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    if-eqz p2, :cond_5

    .line 40
    .line 41
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->a0:Landroid/content/Context;

    .line 42
    .line 43
    sget p1, Lnet/kaki87/soul2/testing/R$string;->empty:I

    .line 44
    .line 45
    invoke-static {p0, p1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :cond_5
    :try_start_0
    const-string p2, "UTF-8"

    .line 50
    .line 51
    invoke-static {p1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    :catch_0
    iget-object p0, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->b0:Lcom/mycompany/app/dialog/DialogEditText$EditTextListener;

    .line 56
    .line 57
    invoke-interface {p0, p1}, Lcom/mycompany/app/dialog/DialogEditText$EditTextListener;->a(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method public final dismiss()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->a0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->d0:Lcom/mycompany/app/view/MyDialogLinear;

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
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->d0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->h0:Lcom/mycompany/app/view/MyLineText;

    .line 27
    .line 28
    :cond_2
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->j0:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/mycompany/app/web/WebSearchAdapter2;->f()V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->j0:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 36
    .line 37
    :cond_3
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->a0:Landroid/content/Context;

    .line 38
    .line 39
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->b0:Lcom/mycompany/app/dialog/DialogEditText$EditTextListener;

    .line 40
    .line 41
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->c0:Landroid/view/View;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->e0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 44
    .line 45
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->f0:Landroidx/appcompat/widget/AppCompatAutoCompleteTextView;

    .line 46
    .line 47
    iput-object v1, p0, Lcom/mycompany/app/dialog/DialogNewsSearch;->g0:Landroid/view/View;

    .line 48
    .line 49
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 50
    .line 51
    .line 52
    return-void
.end method
