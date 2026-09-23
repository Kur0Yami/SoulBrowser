.class Lcom/mycompany/app/dialog/DialogTransLang$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTransLang;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTransLang;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTransLang$2;->c:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTransLang$2;->c:Lcom/mycompany/app/dialog/DialogTransLang;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->k0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_1

    .line 12
    .line 13
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 14
    .line 15
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->r7(Landroid/view/View;)V

    .line 16
    .line 17
    .line 18
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 19
    .line 20
    const/4 v2, -0x1

    .line 21
    const v3, -0xdededf

    .line 22
    .line 23
    .line 24
    const/high16 v4, -0x1000000

    .line 25
    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->k0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 29
    .line 30
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 31
    .line 32
    .line 33
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->l0:Lcom/mycompany/app/view/MyEditPure;

    .line 34
    .line 35
    const v4, -0x50506

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 39
    .line 40
    .line 41
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 42
    .line 43
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_dark_18:I

    .line 44
    .line 45
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 46
    .line 47
    .line 48
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 49
    .line 50
    const v5, -0xc0c0c1

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 54
    .line 55
    .line 56
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 57
    .line 58
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_delete_dark_20:I

    .line 59
    .line 60
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 61
    .line 62
    .line 63
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 64
    .line 65
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 66
    .line 67
    .line 68
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 69
    .line 70
    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 71
    .line 72
    .line 73
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 74
    .line 75
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back_dark:I

    .line 76
    .line 77
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 78
    .line 79
    .line 80
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 81
    .line 82
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->k0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 87
    .line 88
    const v5, -0x70708

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 92
    .line 93
    .line 94
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->l0:Lcom/mycompany/app/view/MyEditPure;

    .line 95
    .line 96
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    .line 98
    .line 99
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 100
    .line 101
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_black_18:I

    .line 102
    .line 103
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 104
    .line 105
    .line 106
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 107
    .line 108
    const v5, -0x1f1f20

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 112
    .line 113
    .line 114
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 115
    .line 116
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->outline_delete_black_20:I

    .line 117
    .line 118
    invoke-virtual {v1, v6}, Lcom/mycompany/app/view/MyButtonImage;->setImageResource(I)V

    .line 119
    .line 120
    .line 121
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 122
    .line 123
    invoke-virtual {v1, v5}, Lcom/mycompany/app/view/MyButtonImage;->setBgPreColor(I)V

    .line 124
    .line 125
    .line 126
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 129
    .line 130
    .line 131
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 132
    .line 133
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_list_back:I

    .line 134
    .line 135
    invoke-virtual {v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 136
    .line 137
    .line 138
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 139
    .line 140
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    .line 142
    .line 143
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->n0:Lcom/mycompany/app/view/MyRoundView;

    .line 144
    .line 145
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 146
    .line 147
    if-eqz v4, :cond_2

    .line 148
    .line 149
    move v2, v3

    .line 150
    :cond_2
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRoundView;->setBackColor(I)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->m0:Lcom/mycompany/app/view/MyButtonImage;

    .line 154
    .line 155
    new-instance v2, Lcom/mycompany/app/dialog/DialogTransLang$3;

    .line 156
    .line 157
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTransLang$3;-><init>(Lcom/mycompany/app/dialog/DialogTransLang;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->l0:Lcom/mycompany/app/view/MyEditPure;

    .line 164
    .line 165
    new-instance v2, Lcom/mycompany/app/dialog/DialogTransLang$4;

    .line 166
    .line 167
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTransLang$4;-><init>(Lcom/mycompany/app/dialog/DialogTransLang;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->o0:Lcom/mycompany/app/view/MyButtonImage;

    .line 174
    .line 175
    new-instance v2, Lcom/mycompany/app/dialog/DialogTransLang$5;

    .line 176
    .line 177
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTransLang$5;-><init>(Lcom/mycompany/app/dialog/DialogTransLang;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .line 182
    .line 183
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 184
    .line 185
    const/4 v2, 0x1

    .line 186
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 187
    .line 188
    .line 189
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->A0:Lcom/mycompany/app/view/MyManagerLinear;

    .line 190
    .line 191
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTransLang;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 192
    .line 193
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 194
    .line 195
    .line 196
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->p0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 197
    .line 198
    new-instance v2, Lcom/mycompany/app/dialog/DialogTransLang$6;

    .line 199
    .line 200
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTransLang$6;-><init>(Lcom/mycompany/app/dialog/DialogTransLang;)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->t(Lcom/mycompany/app/view/MyRecyclerView;Lcom/mycompany/app/view/MyDialogBottom$BotListListener;)V

    .line 204
    .line 205
    .line 206
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->q0:Lcom/mycompany/app/view/MyLineText;

    .line 207
    .line 208
    new-instance v2, Lcom/mycompany/app/dialog/DialogTransLang$7;

    .line 209
    .line 210
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTransLang$7;-><init>(Lcom/mycompany/app/dialog/DialogTransLang;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    .line 215
    .line 216
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTransLang;->k0:Lcom/mycompany/app/view/MyDialogRelative;

    .line 217
    .line 218
    new-instance v2, Lcom/mycompany/app/dialog/DialogTransLang$8;

    .line 219
    .line 220
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogTransLang$8;-><init>(Lcom/mycompany/app/dialog/DialogTransLang;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->f(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 224
    .line 225
    .line 226
    :cond_3
    :goto_1
    return-void
.end method
