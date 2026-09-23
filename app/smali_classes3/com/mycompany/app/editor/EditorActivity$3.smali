.class Lcom/mycompany/app/editor/EditorActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/editor/EditorActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/EditorActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/EditorActivity$3;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/EditorActivity$3;->c:Lcom/mycompany/app/editor/EditorActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->l1:Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->g1:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iget-object v3, v0, Lcom/mycompany/app/editor/EditorActivity;->h1:Ljava/lang/String;

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/mycompany/app/editor/EditorActivity;->A0(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->n1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 18
    .line 19
    new-instance v2, Lcom/mycompany/app/editor/EditorActivity$4;

    .line 20
    .line 21
    invoke-direct {v2, v0}, Lcom/mycompany/app/editor/EditorActivity$4;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->o1:Lcom/mycompany/app/view/MyButtonRelative;

    .line 28
    .line 29
    new-instance v2, Lcom/mycompany/app/editor/EditorActivity$5;

    .line 30
    .line 31
    invoke-direct {v2, v0}, Lcom/mycompany/app/editor/EditorActivity$5;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonRelative;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    .line 36
    .line 37
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->r1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 38
    .line 39
    new-instance v2, Lcom/mycompany/app/editor/EditorActivity$6;

    .line 40
    .line 41
    invoke-direct {v2, v0}, Lcom/mycompany/app/editor/EditorActivity$6;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    .line 46
    .line 47
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->t1:Lcom/mycompany/app/view/MyButtonImage;

    .line 48
    .line 49
    new-instance v2, Lcom/mycompany/app/editor/EditorActivity$7;

    .line 50
    .line 51
    invoke-direct {v2, v0}, Lcom/mycompany/app/editor/EditorActivity$7;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->u1:Lcom/mycompany/app/view/MyButtonImage;

    .line 58
    .line 59
    new-instance v2, Lcom/mycompany/app/editor/EditorActivity$8;

    .line 60
    .line 61
    invoke-direct {v2, v0}, Lcom/mycompany/app/editor/EditorActivity$8;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    .line 66
    .line 67
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->v1:Lcom/mycompany/app/view/MyButtonImage;

    .line 68
    .line 69
    new-instance v2, Lcom/mycompany/app/editor/EditorActivity$9;

    .line 70
    .line 71
    invoke-direct {v2, v0}, Lcom/mycompany/app/editor/EditorActivity$9;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    .line 76
    .line 77
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->w1:Lcom/mycompany/app/view/MyButtonImage;

    .line 78
    .line 79
    new-instance v2, Lcom/mycompany/app/editor/EditorActivity$10;

    .line 80
    .line 81
    invoke-direct {v2, v0}, Lcom/mycompany/app/editor/EditorActivity$10;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->x1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 88
    .line 89
    new-instance v2, Lcom/mycompany/app/editor/EditorActivity$11;

    .line 90
    .line 91
    invoke-direct {v2, v0}, Lcom/mycompany/app/editor/EditorActivity$11;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    .line 96
    .line 97
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 98
    .line 99
    const/4 v2, 0x0

    .line 100
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 101
    .line 102
    .line 103
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->z1:Lcom/mycompany/app/view/MyButtonImage;

    .line 104
    .line 105
    new-instance v3, Lcom/mycompany/app/editor/EditorActivity$12;

    .line 106
    .line 107
    invoke-direct {v3, v0}, Lcom/mycompany/app/editor/EditorActivity$12;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    .line 112
    .line 113
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->A1:Lcom/mycompany/app/view/MyButtonImage;

    .line 114
    .line 115
    invoke-virtual {v1, v2}, Lcom/mycompany/app/view/MyButtonImage;->setEnabled(Z)V

    .line 116
    .line 117
    .line 118
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->A1:Lcom/mycompany/app/view/MyButtonImage;

    .line 119
    .line 120
    new-instance v3, Lcom/mycompany/app/editor/EditorActivity$13;

    .line 121
    .line 122
    invoke-direct {v3, v0}, Lcom/mycompany/app/editor/EditorActivity$13;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->B1:Lcom/mycompany/app/view/MyButtonImage;

    .line 129
    .line 130
    new-instance v3, Lcom/mycompany/app/editor/EditorActivity$14;

    .line 131
    .line 132
    invoke-direct {v3, v0}, Lcom/mycompany/app/editor/EditorActivity$14;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    .line 137
    .line 138
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->D1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 139
    .line 140
    new-instance v3, Lcom/mycompany/app/editor/EditorActivity$15;

    .line 141
    .line 142
    invoke-direct {v3, v0}, Lcom/mycompany/app/editor/EditorActivity$15;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    .line 147
    .line 148
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->F1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 149
    .line 150
    invoke-virtual {v1, v4, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 151
    .line 152
    .line 153
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->F1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 154
    .line 155
    new-instance v3, Lcom/mycompany/app/editor/EditorActivity$16;

    .line 156
    .line 157
    invoke-direct {v3, v0}, Lcom/mycompany/app/editor/EditorActivity$16;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    .line 162
    .line 163
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->G1:Lcom/mycompany/app/view/MyButtonCheck;

    .line 164
    .line 165
    new-instance v3, Lcom/mycompany/app/editor/EditorActivity$17;

    .line 166
    .line 167
    invoke-direct {v3, v0}, Lcom/mycompany/app/editor/EditorActivity$17;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonCheck;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->H1:Lcom/mycompany/app/view/MyButtonImage;

    .line 174
    .line 175
    new-instance v3, Lcom/mycompany/app/editor/EditorActivity$18;

    .line 176
    .line 177
    invoke-direct {v3, v0}, Lcom/mycompany/app/editor/EditorActivity$18;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    .line 182
    .line 183
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->I1:Lcom/mycompany/app/view/MyButtonImage;

    .line 184
    .line 185
    new-instance v3, Lcom/mycompany/app/editor/EditorActivity$19;

    .line 186
    .line 187
    invoke-direct {v3, v0}, Lcom/mycompany/app/editor/EditorActivity$19;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->J1:Lcom/mycompany/app/view/MyButtonImage;

    .line 194
    .line 195
    new-instance v3, Lcom/mycompany/app/editor/EditorActivity$20;

    .line 196
    .line 197
    invoke-direct {v3, v0}, Lcom/mycompany/app/editor/EditorActivity$20;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    .line 202
    .line 203
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->K1:Lcom/mycompany/app/view/MyButtonImage;

    .line 204
    .line 205
    new-instance v3, Lcom/mycompany/app/editor/EditorActivity$21;

    .line 206
    .line 207
    invoke-direct {v3, v0}, Lcom/mycompany/app/editor/EditorActivity$21;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1, v3}, Lcom/mycompany/app/view/MyButtonImage;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    .line 212
    .line 213
    new-instance v1, Lcom/mycompany/app/editor/EditorEffectAdapter;

    .line 214
    .line 215
    iget-object v3, v0, Lcom/mycompany/app/editor/EditorActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 216
    .line 217
    new-instance v4, Lcom/mycompany/app/editor/EditorActivity$22;

    .line 218
    .line 219
    invoke-direct {v4, v0}, Lcom/mycompany/app/editor/EditorActivity$22;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 220
    .line 221
    .line 222
    invoke-direct {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 223
    .line 224
    .line 225
    iput-object v0, v1, Lcom/mycompany/app/editor/EditorEffectAdapter;->d:Lcom/mycompany/app/main/MainActivity;

    .line 226
    .line 227
    iput-object v3, v1, Lcom/mycompany/app/editor/EditorEffectAdapter;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 228
    .line 229
    iput-object v4, v1, Lcom/mycompany/app/editor/EditorEffectAdapter;->e:Lcom/mycompany/app/editor/EditorEffectAdapter$EditorEffectListener;

    .line 230
    .line 231
    iput v2, v1, Lcom/mycompany/app/editor/EditorEffectAdapter;->g:I

    .line 232
    .line 233
    iput-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->O1:Lcom/mycompany/app/editor/EditorEffectAdapter;

    .line 234
    .line 235
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 236
    .line 237
    const/16 v3, 0x1f

    .line 238
    .line 239
    if-ge v1, v3, :cond_1

    .line 240
    .line 241
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 242
    .line 243
    const/4 v3, 0x2

    .line 244
    invoke-virtual {v1, v3}, Landroid/view/View;->setOverScrollMode(I)V

    .line 245
    .line 246
    .line 247
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 248
    .line 249
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->w(ILcom/mycompany/app/view/MyRecyclerView;)V

    .line 250
    .line 251
    .line 252
    iget-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->L1:Lcom/mycompany/app/view/MyRecyclerView;

    .line 253
    .line 254
    iget-object v2, v0, Lcom/mycompany/app/editor/EditorActivity;->O1:Lcom/mycompany/app/editor/EditorEffectAdapter;

    .line 255
    .line 256
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 257
    .line 258
    .line 259
    new-instance v1, Lcom/mycompany/app/editor/core/PhotoEditor;

    .line 260
    .line 261
    iget-object v2, v0, Lcom/mycompany/app/editor/EditorActivity;->q1:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 262
    .line 263
    new-instance v3, Lcom/mycompany/app/editor/EditorActivity$23;

    .line 264
    .line 265
    invoke-direct {v3, v0}, Lcom/mycompany/app/editor/EditorActivity$23;-><init>(Lcom/mycompany/app/editor/EditorActivity;)V

    .line 266
    .line 267
    .line 268
    invoke-direct {v1, v0, v2, v3}, Lcom/mycompany/app/editor/core/PhotoEditor;-><init>(Landroid/content/Context;Lcom/mycompany/app/editor/core/PhotoEditorView;Lcom/mycompany/app/editor/core/PhotoEditor$PhotoListener;)V

    .line 269
    .line 270
    .line 271
    iput-object v1, v0, Lcom/mycompany/app/editor/EditorActivity;->N1:Lcom/mycompany/app/editor/core/PhotoEditor;

    .line 272
    .line 273
    return-void
.end method
