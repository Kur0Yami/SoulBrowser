.class Lcom/mycompany/app/dialog/DialogSetAddr$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetAddr;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetAddr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetAddr$2;->c:Lcom/mycompany/app/dialog/DialogSetAddr;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetAddr$2;->c:Lcom/mycompany/app/dialog/DialogSetAddr;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 4
    .line 5
    if-eqz v1, :cond_3

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->b0:Landroid/content/Context;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_2

    .line 12
    .line 13
    :cond_0
    sget-boolean v1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 18
    .line 19
    const v2, -0x50506

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 23
    .line 24
    .line 25
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 33
    .line 34
    .line 35
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 36
    .line 37
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 40
    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 43
    .line 44
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 45
    .line 46
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 47
    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 52
    .line 53
    .line 54
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->f0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 61
    .line 62
    const/high16 v2, -0x1000000

    .line 63
    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->j0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    .line 71
    .line 72
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->k0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 73
    .line 74
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 78
    .line 79
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 80
    .line 81
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 82
    .line 83
    .line 84
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 85
    .line 86
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 87
    .line 88
    invoke-virtual {v1, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 89
    .line 90
    .line 91
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 92
    .line 93
    const v3, -0xe19938

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    .line 98
    .line 99
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 102
    .line 103
    .line 104
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->d0:Lcom/mycompany/app/view/MyAddrView;

    .line 105
    .line 106
    const/4 v2, 0x0

    .line 107
    invoke-static {v2, v2}, Lcom/mycompany/app/main/MainUtil;->s0(IZ)I

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyAddrView;->setSettingColor(I)V

    .line 112
    .line 113
    .line 114
    move v1, v2

    .line 115
    :goto_1
    const/4 v3, 0x3

    .line 116
    if-ge v1, v3, :cond_2

    .line 117
    .line 118
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->h0:[Lcom/mycompany/app/view/MyButtonImage;

    .line 119
    .line 120
    aget-object v3, v3, v1

    .line 121
    .line 122
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->h0:[Lcom/mycompany/app/view/MyButtonImage;

    .line 130
    .line 131
    aget-object v3, v3, v1

    .line 132
    .line 133
    new-instance v4, Lcom/mycompany/app/dialog/DialogSetAddr$3;

    .line 134
    .line 135
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogSetAddr$3;-><init>(Lcom/mycompany/app/dialog/DialogSetAddr;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3, v4}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    .line 140
    .line 141
    add-int/lit8 v1, v1, 0x1

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    new-instance v1, Lcom/mycompany/app/view/MyManagerLinear;

    .line 145
    .line 146
    invoke-direct {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 147
    .line 148
    .line 149
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->o0:Lcom/mycompany/app/view/MyManagerLinear;

    .line 150
    .line 151
    new-instance v1, Lcom/mycompany/app/main/AddrIconAdapter;

    .line 152
    .line 153
    iget-object v3, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 154
    .line 155
    new-instance v4, Lcom/mycompany/app/dialog/DialogSetAddr$4;

    .line 156
    .line 157
    invoke-direct {v4, v0}, Lcom/mycompany/app/dialog/DialogSetAddr$4;-><init>(Lcom/mycompany/app/dialog/DialogSetAddr;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 161
    .line 162
    .line 163
    const/4 v5, 0x1

    .line 164
    iput v5, v1, Lcom/mycompany/app/main/AddrIconAdapter;->d:I

    .line 165
    .line 166
    iput-object v3, v1, Lcom/mycompany/app/main/AddrIconAdapter;->e:Landroid/view/View;

    .line 167
    .line 168
    iput-object v4, v1, Lcom/mycompany/app/main/AddrIconAdapter;->f:Lcom/mycompany/app/main/AddrIconAdapter$AddrListener;

    .line 169
    .line 170
    invoke-virtual {v1, v2, v2}, Lcom/mycompany/app/main/AddrIconAdapter;->w(ZZ)V

    .line 171
    .line 172
    .line 173
    sget-boolean v2, Lcom/mycompany/app/pref/PrefZone;->m0:Z

    .line 174
    .line 175
    iput-boolean v2, v1, Lcom/mycompany/app/main/AddrIconAdapter;->i:Z

    .line 176
    .line 177
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->n0:Lcom/mycompany/app/main/AddrIconAdapter;

    .line 178
    .line 179
    new-instance v1, Lcom/mycompany/app/quick/MenuDragHelper;

    .line 180
    .line 181
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetAddr$5;

    .line 182
    .line 183
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetAddr$5;-><init>(Lcom/mycompany/app/dialog/DialogSetAddr;)V

    .line 184
    .line 185
    .line 186
    invoke-direct {v1, v2}, Lcom/mycompany/app/quick/MenuDragHelper;-><init>(Lcom/mycompany/app/quick/MenuDragHelper$MenuDragListener;)V

    .line 187
    .line 188
    .line 189
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->p0:Lcom/mycompany/app/quick/MenuDragHelper;

    .line 190
    .line 191
    new-instance v2, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 192
    .line 193
    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 194
    .line 195
    .line 196
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->q0:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 197
    .line 198
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 199
    .line 200
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->i(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 201
    .line 202
    .line 203
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 204
    .line 205
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->o0:Lcom/mycompany/app/view/MyManagerLinear;

    .line 206
    .line 207
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 208
    .line 209
    .line 210
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 211
    .line 212
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->n0:Lcom/mycompany/app/main/AddrIconAdapter;

    .line 213
    .line 214
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 215
    .line 216
    .line 217
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->e0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 218
    .line 219
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetAddr$6;

    .line 220
    .line 221
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetAddr$6;-><init>(Lcom/mycompany/app/dialog/DialogSetAddr;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyRecyclerView;->setSizeListener(Lcom/mycompany/app/image/ImageSizeListener;)V

    .line 225
    .line 226
    .line 227
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->l0:Landroidx/appcompat/widget/AppCompatTextView;

    .line 228
    .line 229
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetAddr$7;

    .line 230
    .line 231
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetAddr$7;-><init>(Lcom/mycompany/app/dialog/DialogSetAddr;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    .line 236
    .line 237
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->m0:Lcom/mycompany/app/view/MyLineText;

    .line 238
    .line 239
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetAddr$8;

    .line 240
    .line 241
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetAddr$8;-><init>(Lcom/mycompany/app/dialog/DialogSetAddr;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogSetAddr;->D()V

    .line 248
    .line 249
    .line 250
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetAddr;->c0:Lcom/mycompany/app/view/MyDialogLinear;

    .line 251
    .line 252
    new-instance v2, Lcom/mycompany/app/dialog/DialogSetAddr$9;

    .line 253
    .line 254
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogSetAddr$9;-><init>(Lcom/mycompany/app/dialog/DialogSetAddr;)V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyDialogBottom;->g(Landroid/view/View;Lcom/mycompany/app/view/MyDialogBottom$BotViewListener;)V

    .line 258
    .line 259
    .line 260
    :cond_3
    :goto_2
    return-void
.end method
