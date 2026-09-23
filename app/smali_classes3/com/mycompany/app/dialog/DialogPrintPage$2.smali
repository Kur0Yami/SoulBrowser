.class Lcom/mycompany/app/dialog/DialogPrintPage$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogPrintPage;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogPrintPage;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogPrintPage$2;->c:Lcom/mycompany/app/dialog/DialogPrintPage;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogPrintPage$2;->c:Lcom/mycompany/app/dialog/DialogPrintPage;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->d0:Landroid/graphics/Bitmap;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->d0:Landroid/graphics/Bitmap;

    .line 7
    .line 8
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 9
    .line 10
    if-eqz v2, :cond_7

    .line 11
    .line 12
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->a0:Landroid/content/Context;

    .line 13
    .line 14
    if-nez v2, :cond_0

    .line 15
    .line 16
    goto/16 :goto_2

    .line 17
    .line 18
    :cond_0
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    .line 24
    const v3, -0x50506

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    const v4, -0x3e3e3f

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    .line 37
    .line 38
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->j0:Lcom/mycompany/app/view/MyEditText;

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 41
    .line 42
    .line 43
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    .line 47
    .line 48
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 49
    .line 50
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 57
    .line 58
    const/high16 v3, -0x1000000

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 61
    .line 62
    .line 63
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->i0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 64
    .line 65
    const v4, -0x9e9e9f

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    .line 70
    .line 71
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->j0:Lcom/mycompany/app/view/MyEditText;

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 74
    .line 75
    .line 76
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 77
    .line 78
    const v3, -0xe19938

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    .line 83
    .line 84
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 85
    .line 86
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 87
    .line 88
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 89
    .line 90
    .line 91
    :goto_0
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    const/4 v3, 0x1

    .line 96
    if-eqz v2, :cond_3

    .line 97
    .line 98
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 99
    .line 100
    if-nez v2, :cond_2

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_2
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    if-eqz v2, :cond_5

    .line 108
    .line 109
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->setIconSmall(Z)V

    .line 112
    .line 113
    .line 114
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 115
    .line 116
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyRoundImage;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 117
    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_3
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 121
    .line 122
    const v2, -0x70708

    .line 123
    .line 124
    .line 125
    if-eqz v1, :cond_4

    .line 126
    .line 127
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 128
    .line 129
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_picture_as_pdf_dark_24:I

    .line 130
    .line 131
    invoke-virtual {v1, v2, v4}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 132
    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->g0:Lcom/mycompany/app/view/MyRoundImage;

    .line 136
    .line 137
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->outline_picture_as_pdf_black_24:I

    .line 138
    .line 139
    invoke-virtual {v1, v2, v4}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 140
    .line 141
    .line 142
    :cond_5
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->c0:Ljava/lang/String;

    .line 143
    .line 144
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-nez v1, :cond_6

    .line 149
    .line 150
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->h0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 151
    .line 152
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->c0:Ljava/lang/String;

    .line 153
    .line 154
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    .line 156
    .line 157
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->e0:Ljava/lang/String;

    .line 158
    .line 159
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-nez v1, :cond_6

    .line 164
    .line 165
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->j0:Lcom/mycompany/app/view/MyEditText;

    .line 166
    .line 167
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->e0:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    .line 171
    .line 172
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->j0:Lcom/mycompany/app/view/MyEditText;

    .line 173
    .line 174
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelectAllOnFocus(Z)V

    .line 175
    .line 176
    .line 177
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->j0:Lcom/mycompany/app/view/MyEditText;

    .line 178
    .line 179
    new-instance v2, Lcom/mycompany/app/dialog/DialogPrintPage$3;

    .line 180
    .line 181
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPrintPage$3;-><init>(Lcom/mycompany/app/dialog/DialogPrintPage;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 185
    .line 186
    .line 187
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->k0:Lcom/mycompany/app/view/MyLineText;

    .line 188
    .line 189
    new-instance v2, Lcom/mycompany/app/dialog/DialogPrintPage$4;

    .line 190
    .line 191
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPrintPage$4;-><init>(Lcom/mycompany/app/dialog/DialogPrintPage;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 195
    .line 196
    .line 197
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogPrintPage;->f0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 198
    .line 199
    new-instance v2, Lcom/mycompany/app/dialog/DialogPrintPage$5;

    .line 200
    .line 201
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogPrintPage$5;-><init>(Lcom/mycompany/app/dialog/DialogPrintPage;)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 205
    .line 206
    .line 207
    :cond_7
    :goto_2
    return-void
.end method
