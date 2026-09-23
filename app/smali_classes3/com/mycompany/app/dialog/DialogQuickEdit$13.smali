.class Lcom/mycompany/app/dialog/DialogQuickEdit$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyPopupMenu$MyPopupListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogQuickEdit;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$13;->a:Lcom/mycompany/app/dialog/DialogQuickEdit;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    sget v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->G0:I

    .line 2
    .line 3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$13;->a:Lcom/mycompany/app/dialog/DialogQuickEdit;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->B0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    iput-object v2, v0, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 11
    .line 12
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyPopupMenu;->a()V

    .line 13
    .line 14
    .line 15
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogQuickEdit;->B0:Lcom/mycompany/app/view/MyPopupMenu;

    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public final b(Landroid/view/View;I)Z
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogQuickEdit$13;->a:Lcom/mycompany/app/dialog/DialogQuickEdit;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->u0:Lcom/mycompany/app/view/MyEditText;

    .line 4
    .line 5
    const/4 v1, 0x1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    goto/16 :goto_2

    .line 9
    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->u0:Lcom/mycompany/app/view/MyEditText;

    .line 19
    .line 20
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->X4(Landroid/content/Context;Landroid/view/View;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

    .line 35
    .line 36
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 37
    .line 38
    invoke-static {v0, v2}, Lcom/mycompany/app/main/MainUtil;->X4(Landroid/content/Context;Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    :cond_2
    :goto_0
    const/16 v0, 0x9

    .line 42
    .line 43
    if-ne p2, v1, :cond_3

    .line 44
    .line 45
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 46
    .line 47
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->O4(Lcom/mycompany/app/main/MainActivity;I)V

    .line 48
    .line 49
    .line 50
    return v1

    .line 51
    :cond_3
    const/4 v2, 0x2

    .line 52
    const/4 v3, 0x0

    .line 53
    if-ne p2, v2, :cond_5

    .line 54
    .line 55
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 56
    .line 57
    const/16 v2, 0x1e

    .line 58
    .line 59
    invoke-static {p2, v2}, Lcom/mycompany/app/main/MainUtil;->D4(Landroid/app/Activity;I)Z

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    if-eqz p2, :cond_4

    .line 64
    .line 65
    goto/16 :goto_2

    .line 66
    .line 67
    :cond_4
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 68
    .line 69
    invoke-static {v0, p2, v3}, Lcom/mycompany/app/main/MainUtil;->C4(ILcom/mycompany/app/main/MainActivity;Z)Landroid/net/Uri;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->C0:Landroid/net/Uri;

    .line 74
    .line 75
    return v1

    .line 76
    :cond_5
    const/4 v0, 0x3

    .line 77
    if-ne p2, v0, :cond_9

    .line 78
    .line 79
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 80
    .line 81
    if-nez p2, :cond_6

    .line 82
    .line 83
    goto/16 :goto_2

    .line 84
    .line 85
    :cond_6
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->E0:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 86
    .line 87
    if-eqz p2, :cond_7

    .line 88
    .line 89
    goto/16 :goto_2

    .line 90
    .line 91
    :cond_7
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->F0:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 92
    .line 93
    if-eqz p2, :cond_8

    .line 94
    .line 95
    goto/16 :goto_2

    .line 96
    .line 97
    :cond_8
    invoke-virtual {p1}, Lcom/mycompany/app/dialog/DialogQuickEdit;->D()V

    .line 98
    .line 99
    .line 100
    new-instance p2, Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 101
    .line 102
    iget-object v0, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 103
    .line 104
    iget v2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->m0:I

    .line 105
    .line 106
    new-instance v3, Lcom/mycompany/app/dialog/DialogQuickEdit$16;

    .line 107
    .line 108
    invoke-direct {v3, p1}, Lcom/mycompany/app/dialog/DialogQuickEdit$16;-><init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p2, v0, v2, v3}, Lcom/mycompany/app/dialog/DialogQuickColor;-><init>(Landroid/app/Activity;ILcom/mycompany/app/dialog/DialogQuickColor$QuickColorListener;)V

    .line 112
    .line 113
    .line 114
    iput-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->F0:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 115
    .line 116
    new-instance v0, Lcom/mycompany/app/dialog/DialogQuickEdit$17;

    .line 117
    .line 118
    invoke-direct {v0, p1}, Lcom/mycompany/app/dialog/DialogQuickEdit$17;-><init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 122
    .line 123
    .line 124
    return v1

    .line 125
    :cond_9
    iget-boolean p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->e0:Z

    .line 126
    .line 127
    const/4 v0, 0x0

    .line 128
    if-eqz p2, :cond_d

    .line 129
    .line 130
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 131
    .line 132
    if-nez p2, :cond_a

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_a
    iput-boolean v1, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->p0:Z

    .line 136
    .line 137
    iput-boolean v3, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->i0:Z

    .line 138
    .line 139
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->j0:Landroid/graphics/Bitmap;

    .line 140
    .line 141
    iput v3, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->m0:I

    .line 142
    .line 143
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->n0:Ljava/util/List;

    .line 144
    .line 145
    if-eqz p2, :cond_c

    .line 146
    .line 147
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 148
    .line 149
    .line 150
    move-result p2

    .line 151
    if-nez p2, :cond_c

    .line 152
    .line 153
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->r0:Lcom/mycompany/app/view/MyRoundImage;

    .line 154
    .line 155
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->n0:Ljava/util/List;

    .line 156
    .line 157
    sget-boolean v0, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 158
    .line 159
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 160
    .line 161
    if-eqz v2, :cond_b

    .line 162
    .line 163
    const v2, -0xafafb0

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_b
    const v2, -0x70708

    .line 168
    .line 169
    .line 170
    :goto_1
    invoke-virtual {p2, v1, v2, p1, v0}, Lcom/mycompany/app/view/MyRoundImage;->B(IILjava/util/List;Z)V

    .line 171
    .line 172
    .line 173
    return v1

    .line 174
    :cond_c
    new-instance p2, Lcom/mycompany/app/dialog/DialogQuickEdit$12;

    .line 175
    .line 176
    invoke-direct {p2, p1}, Lcom/mycompany/app/dialog/DialogQuickEdit$12;-><init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 180
    .line 181
    .line 182
    return v1

    .line 183
    :cond_d
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 184
    .line 185
    if-nez p2, :cond_e

    .line 186
    .line 187
    goto :goto_2

    .line 188
    :cond_e
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->E0:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 189
    .line 190
    if-eqz p2, :cond_f

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_f
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->F0:Lcom/mycompany/app/dialog/DialogQuickColor;

    .line 194
    .line 195
    if-eqz v2, :cond_10

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_10
    if-eqz p2, :cond_11

    .line 199
    .line 200
    invoke-virtual {p2}, Lcom/mycompany/app/dialog/DialogQuickIcon;->dismiss()V

    .line 201
    .line 202
    .line 203
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->E0:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 204
    .line 205
    :cond_11
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 206
    .line 207
    if-nez p2, :cond_12

    .line 208
    .line 209
    :goto_2
    return v1

    .line 210
    :cond_12
    invoke-static {p2, v1}, Lcom/mycompany/app/main/MainUtil;->Q0(Landroid/widget/EditText;Z)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p2

    .line 214
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 215
    .line 216
    .line 217
    move-result v0

    .line 218
    if-eqz v0, :cond_13

    .line 219
    .line 220
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->w0:Lcom/mycompany/app/view/MyEditText;

    .line 221
    .line 222
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->b7(Landroid/view/View;)V

    .line 223
    .line 224
    .line 225
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->b0:Landroid/content/Context;

    .line 226
    .line 227
    sget p2, Lnet/kaki87/soul2/testing/R$string;->input_url:I

    .line 228
    .line 229
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 230
    .line 231
    .line 232
    return v1

    .line 233
    :cond_13
    new-instance v0, Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 234
    .line 235
    iget-object v2, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->a0:Lcom/mycompany/app/web/WebViewActivity;

    .line 236
    .line 237
    new-instance v3, Lcom/mycompany/app/dialog/DialogQuickEdit$14;

    .line 238
    .line 239
    invoke-direct {v3, p1}, Lcom/mycompany/app/dialog/DialogQuickEdit$14;-><init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V

    .line 240
    .line 241
    .line 242
    invoke-direct {v0, v2, p2, v3}, Lcom/mycompany/app/dialog/DialogQuickIcon;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/mycompany/app/dialog/DialogQuickIcon$QuickLoadListener;)V

    .line 243
    .line 244
    .line 245
    iput-object v0, p1, Lcom/mycompany/app/dialog/DialogQuickEdit;->E0:Lcom/mycompany/app/dialog/DialogQuickIcon;

    .line 246
    .line 247
    new-instance p2, Lcom/mycompany/app/dialog/DialogQuickEdit$15;

    .line 248
    .line 249
    invoke-direct {p2, p1}, Lcom/mycompany/app/dialog/DialogQuickEdit$15;-><init>(Lcom/mycompany/app/dialog/DialogQuickEdit;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v0, p2}, Lcom/mycompany/app/view/MyDialogBottom;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 253
    .line 254
    .line 255
    return v1
.end method
