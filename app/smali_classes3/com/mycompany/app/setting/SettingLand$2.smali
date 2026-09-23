.class Lcom/mycompany/app/setting/SettingLand$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/setting/SettingLand;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/setting/SettingLand;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/setting/SettingLand$2;->c:Lcom/mycompany/app/setting/SettingLand;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/setting/SettingLand$2;->c:Lcom/mycompany/app/setting/SettingLand;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    new-instance v2, Lcom/mycompany/app/setting/SettingLand$13;

    .line 14
    .line 15
    invoke-direct {v2}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->N1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->O1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 28
    .line 29
    new-instance v3, Lcom/mycompany/app/setting/SettingLand$14;

    .line 30
    .line 31
    invoke-direct {v3}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v3}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->O1:Landroidx/appcompat/widget/AppCompatTextView;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Landroid/view/View;->setClipToOutline(Z)V

    .line 40
    .line 41
    .line 42
    :goto_0
    invoke-virtual {v0}, Lcom/mycompany/app/setting/SettingLand;->K0()V

    .line 43
    .line 44
    .line 45
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->o2:Landroid/widget/FrameLayout;

    .line 46
    .line 47
    if-nez v1, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->L1:Z

    .line 51
    .line 52
    if-eqz v2, :cond_3

    .line 53
    .line 54
    const v2, -0xdededf

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_3
    const/4 v2, -0x1

    .line 62
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 63
    .line 64
    .line 65
    :goto_1
    iget-object v1, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->O5(Landroid/content/Context;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    const v2, -0x1e595616

    .line 72
    .line 73
    .line 74
    if-eqz v1, :cond_4

    .line 75
    .line 76
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->H1:Lcom/mycompany/app/view/MyRoundImage;

    .line 77
    .line 78
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_white_24:I

    .line 79
    .line 80
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 81
    .line 82
    .line 83
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->I1:Lcom/mycompany/app/view/MyRoundImage;

    .line 84
    .line 85
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_right_white_24:I

    .line 86
    .line 87
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_4
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->H1:Lcom/mycompany/app/view/MyRoundImage;

    .line 92
    .line 93
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_right_white_24:I

    .line 94
    .line 95
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 96
    .line 97
    .line 98
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->I1:Lcom/mycompany/app/view/MyRoundImage;

    .line 99
    .line 100
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_chevron_left_white_24:I

    .line 101
    .line 102
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 103
    .line 104
    .line 105
    :goto_2
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->J1:Lcom/mycompany/app/view/MyRoundImage;

    .line 106
    .line 107
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->outline_swipe_hori:I

    .line 108
    .line 109
    invoke-virtual {v1, v2, v3}, Lcom/mycompany/app/view/MyRoundImage;->o(II)V

    .line 110
    .line 111
    .line 112
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->K1:Landroid/view/View;

    .line 113
    .line 114
    const v2, -0xbbcca

    .line 115
    .line 116
    .line 117
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 118
    .line 119
    .line 120
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->L1:Landroid/view/View;

    .line 121
    .line 122
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 123
    .line 124
    .line 125
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->M1:Landroid/view/View;

    .line 126
    .line 127
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 128
    .line 129
    .line 130
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 131
    .line 132
    new-instance v2, Lcom/mycompany/app/setting/SettingLand$3;

    .line 133
    .line 134
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingLand$3;-><init>(Lcom/mycompany/app/setting/SettingLand;)V

    .line 135
    .line 136
    .line 137
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    .line 139
    .line 140
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 141
    .line 142
    new-instance v2, Lcom/mycompany/app/setting/SettingLand$4;

    .line 143
    .line 144
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingLand$4;-><init>(Lcom/mycompany/app/setting/SettingLand;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    .line 149
    .line 150
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 151
    .line 152
    new-instance v2, Lcom/mycompany/app/setting/SettingLand$5;

    .line 153
    .line 154
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingLand$5;-><init>(Lcom/mycompany/app/setting/SettingLand;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    .line 159
    .line 160
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->H1:Lcom/mycompany/app/view/MyRoundImage;

    .line 161
    .line 162
    new-instance v2, Lcom/mycompany/app/setting/SettingLand$6;

    .line 163
    .line 164
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    .line 169
    .line 170
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->I1:Lcom/mycompany/app/view/MyRoundImage;

    .line 171
    .line 172
    new-instance v2, Lcom/mycompany/app/setting/SettingLand$7;

    .line 173
    .line 174
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    .line 179
    .line 180
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->J1:Lcom/mycompany/app/view/MyRoundImage;

    .line 181
    .line 182
    new-instance v2, Lcom/mycompany/app/setting/SettingLand$8;

    .line 183
    .line 184
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    .line 189
    .line 190
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->l2:Lcom/mycompany/app/view/MyEditPure;

    .line 191
    .line 192
    sget v2, Lnet/kaki87/soul2/testing/R$string;->web_edit_hint:I

    .line 193
    .line 194
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 195
    .line 196
    .line 197
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->l2:Lcom/mycompany/app/view/MyEditPure;

    .line 198
    .line 199
    iget-object v2, v0, Lcom/mycompany/app/setting/SettingLand;->g2:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->l2:Lcom/mycompany/app/view/MyEditPure;

    .line 205
    .line 206
    new-instance v2, Lcom/mycompany/app/setting/SettingLand$9;

    .line 207
    .line 208
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingLand$9;-><init>(Lcom/mycompany/app/setting/SettingLand;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 212
    .line 213
    .line 214
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->m2:Lcom/mycompany/app/view/MyButtonImage;

    .line 215
    .line 216
    new-instance v2, Lcom/mycompany/app/setting/SettingLand$10;

    .line 217
    .line 218
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingLand$10;-><init>(Lcom/mycompany/app/setting/SettingLand;)V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    .line 223
    .line 224
    iget-object v1, v0, Lcom/mycompany/app/setting/SettingLand;->n2:Lcom/mycompany/app/view/MyButtonImage;

    .line 225
    .line 226
    new-instance v2, Lcom/mycompany/app/setting/SettingLand$11;

    .line 227
    .line 228
    invoke-direct {v2, v0}, Lcom/mycompany/app/setting/SettingLand$11;-><init>(Lcom/mycompany/app/setting/SettingLand;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    .line 233
    .line 234
    return-void
.end method
