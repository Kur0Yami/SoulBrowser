.class Lcom/mycompany/app/main/MainTxtView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainTxtView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainTxtView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainTxtView$1;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtView$1;->c:Lcom/mycompany/app/main/MainTxtView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->C1:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainTxtView;->S0(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->O1:Landroid/widget/RelativeLayout;

    .line 13
    .line 14
    new-instance v3, Lcom/mycompany/app/main/MainTxtView$2;

    .line 15
    .line 16
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    .line 21
    .line 22
    iget-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->P1:Landroid/widget/LinearLayout;

    .line 23
    .line 24
    new-instance v3, Lcom/mycompany/app/main/MainTxtView$3;

    .line 25
    .line 26
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->Q1:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    new-instance v3, Lcom/mycompany/app/main/MainTxtView$4;

    .line 35
    .line 36
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->D1:Lcom/mycompany/app/view/MyButtonImage;

    .line 43
    .line 44
    new-instance v3, Lcom/mycompany/app/main/MainTxtView$5;

    .line 45
    .line 46
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/MainTxtView$5;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    .line 51
    .line 52
    iget-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->E1:Lcom/mycompany/app/view/MyButtonImage;

    .line 53
    .line 54
    new-instance v3, Lcom/mycompany/app/main/MainTxtView$6;

    .line 55
    .line 56
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/MainTxtView$6;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    .line 61
    .line 62
    iget-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->F1:Lcom/mycompany/app/view/MyButtonImage;

    .line 63
    .line 64
    new-instance v3, Lcom/mycompany/app/main/MainTxtView$7;

    .line 65
    .line 66
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/MainTxtView$7;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    iget-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->G1:Lcom/mycompany/app/view/MyButtonImage;

    .line 73
    .line 74
    new-instance v3, Lcom/mycompany/app/main/MainTxtView$8;

    .line 75
    .line 76
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/MainTxtView$8;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    .line 81
    .line 82
    iget-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 83
    .line 84
    new-instance v3, Lcom/mycompany/app/main/MainTxtView$9;

    .line 85
    .line 86
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/MainTxtView$9;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    .line 91
    .line 92
    new-instance v2, Lcom/mycompany/app/view/MyManagerLinear;

    .line 93
    .line 94
    const/4 v3, 0x1

    .line 95
    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(I)V

    .line 96
    .line 97
    .line 98
    iput-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->K1:Lcom/mycompany/app/view/MyManagerLinear;

    .line 99
    .line 100
    iget-object v4, v0, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 101
    .line 102
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 103
    .line 104
    .line 105
    iget-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 106
    .line 107
    new-instance v4, Lcom/mycompany/app/main/MainTxtView$10;

    .line 108
    .line 109
    invoke-direct {v4, v0}, Lcom/mycompany/app/main/MainTxtView$10;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v2, v4}, Landroidx/recyclerview/widget/RecyclerView;->j(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 113
    .line 114
    .line 115
    iget-object v2, v0, Lcom/mycompany/app/main/MainTxtView;->M1:Lcom/mycompany/app/view/MyScrollBar;

    .line 116
    .line 117
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MyScrollBar;->setOneItem(Z)V

    .line 118
    .line 119
    .line 120
    sget v1, Lcom/mycompany/app/pref/PrefZone;->x:I

    .line 121
    .line 122
    if-ne v1, v3, :cond_1

    .line 123
    .line 124
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->M1:Lcom/mycompany/app/view/MyScrollBar;

    .line 125
    .line 126
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 131
    .line 132
    if-eqz v1, :cond_1

    .line 133
    .line 134
    const/16 v2, 0xb

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 137
    .line 138
    .line 139
    const/16 v2, 0x9

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 142
    .line 143
    .line 144
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->M1:Lcom/mycompany/app/view/MyScrollBar;

    .line 145
    .line 146
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyScrollBar;->setPosLeft(Z)V

    .line 147
    .line 148
    .line 149
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->M1:Lcom/mycompany/app/view/MyScrollBar;

    .line 150
    .line 151
    new-instance v2, Lcom/mycompany/app/main/MainTxtView$11;

    .line 152
    .line 153
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainTxtView$11;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyScrollBar;->setListener(Lcom/mycompany/app/view/MyScrollBar$ScrollBarListener;)V

    .line 157
    .line 158
    .line 159
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->R1:Lcom/mycompany/app/view/MyButtonImage;

    .line 160
    .line 161
    new-instance v2, Lcom/mycompany/app/main/MainTxtView$12;

    .line 162
    .line 163
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainTxtView$12;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    .line 168
    .line 169
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->S1:Lcom/mycompany/app/view/MyButtonImage;

    .line 170
    .line 171
    new-instance v2, Lcom/mycompany/app/main/MainTxtView$13;

    .line 172
    .line 173
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainTxtView$13;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    .line 178
    .line 179
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->T1:Lcom/mycompany/app/view/MyButtonImage;

    .line 180
    .line 181
    new-instance v2, Lcom/mycompany/app/main/MainTxtView$14;

    .line 182
    .line 183
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainTxtView$14;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    .line 188
    .line 189
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->U1:Lcom/mycompany/app/view/MyButtonImage;

    .line 190
    .line 191
    new-instance v2, Lcom/mycompany/app/main/MainTxtView$15;

    .line 192
    .line 193
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainTxtView$15;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    .line 198
    .line 199
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->V1:Lcom/mycompany/app/view/MyButtonImage;

    .line 200
    .line 201
    new-instance v2, Lcom/mycompany/app/main/MainTxtView$16;

    .line 202
    .line 203
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainTxtView$16;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 204
    .line 205
    .line 206
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    .line 208
    .line 209
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->Z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 210
    .line 211
    new-instance v2, Lcom/mycompany/app/main/MainTxtView$17;

    .line 212
    .line 213
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainTxtView$17;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    .line 218
    .line 219
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->a2:Lcom/mycompany/app/view/MyButtonImage;

    .line 220
    .line 221
    new-instance v2, Lcom/mycompany/app/main/MainTxtView$18;

    .line 222
    .line 223
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainTxtView$18;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 227
    .line 228
    .line 229
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->W1:Lcom/mycompany/app/view/MyButtonImage;

    .line 230
    .line 231
    new-instance v2, Lcom/mycompany/app/main/MainTxtView$19;

    .line 232
    .line 233
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainTxtView$19;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    .line 238
    .line 239
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->X1:Lcom/mycompany/app/view/MyButtonImage;

    .line 240
    .line 241
    new-instance v2, Lcom/mycompany/app/main/MainTxtView$20;

    .line 242
    .line 243
    invoke-direct {v2, v0}, Lcom/mycompany/app/main/MainTxtView$20;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    .line 248
    .line 249
    new-instance v1, Landroid/view/GestureDetector;

    .line 250
    .line 251
    iget-object v2, v0, Lcom/mycompany/app/setting/CastActivity;->f1:Landroid/content/Context;

    .line 252
    .line 253
    new-instance v3, Lcom/mycompany/app/main/MainTxtView$21;

    .line 254
    .line 255
    invoke-direct {v3, v0}, Lcom/mycompany/app/main/MainTxtView$21;-><init>(Lcom/mycompany/app/main/MainTxtView;)V

    .line 256
    .line 257
    .line 258
    invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 259
    .line 260
    .line 261
    iput-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->e2:Landroid/view/GestureDetector;

    .line 262
    .line 263
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->g2:Ljava/lang/String;

    .line 264
    .line 265
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 266
    .line 267
    .line 268
    move-result v1

    .line 269
    if-eqz v1, :cond_2

    .line 270
    .line 271
    iget-object v1, v0, Lcom/mycompany/app/main/MainTxtView;->b2:Lcom/mycompany/app/view/MyFadeImage;

    .line 272
    .line 273
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyFadeImage;->f()V

    .line 274
    .line 275
    .line 276
    iget-object v0, v0, Lcom/mycompany/app/main/MainTxtView;->J1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 277
    .line 278
    const/16 v1, 0x8

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 281
    .line 282
    .line 283
    return-void

    .line 284
    :cond_2
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainTxtView;->H0()V

    .line 285
    .line 286
    .line 287
    return-void
.end method
