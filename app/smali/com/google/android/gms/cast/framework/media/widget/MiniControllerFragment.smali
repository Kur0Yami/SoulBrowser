.class public Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/cast/framework/media/widget/ControlButtonsContainer;


# instance fields
.field public A:I

.field public B:I

.field public C:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

.field public c:Lcom/google/android/gms/cast/internal/Logger;

.field public f:Z

.field public g:I

.field public h:I

.field public i:Landroid/widget/TextView;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:[I

.field public final o:[Landroid/widget/ImageView;

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    new-array v0, v0, [Landroid/widget/ImageView;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->o:[Landroid/widget/ImageView;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final f(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;Landroid/widget/RelativeLayout;II)V
    .locals 8

    .line 1
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object v2, v0

    .line 6
    check-cast v2, Landroid/widget/ImageView;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->n:[I

    .line 9
    .line 10
    aget p4, v0, p4

    .line 11
    .line 12
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_empty:I

    .line 13
    .line 14
    if-ne p4, v0, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x4

    .line 17
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_custom:I

    .line 22
    .line 23
    if-ne p4, v0, :cond_1

    .line 24
    .line 25
    goto/16 :goto_0

    .line 26
    .line 27
    :cond_1
    sget v0, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_play_pause_toggle:I

    .line 28
    .line 29
    if-ne p4, v0, :cond_4

    .line 30
    .line 31
    iget p4, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->q:I

    .line 32
    .line 33
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->r:I

    .line 34
    .line 35
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->s:I

    .line 36
    .line 37
    iget v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->p:I

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    if-ne v3, v4, :cond_2

    .line 41
    .line 42
    iget p4, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->t:I

    .line 43
    .line 44
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->u:I

    .line 45
    .line 46
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->v:I

    .line 47
    .line 48
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iget v4, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->m:I

    .line 53
    .line 54
    invoke-static {v3, v4, p4}, Lcom/google/android/gms/cast/framework/media/widget/zzo;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object p4

    .line 62
    iget v4, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->m:I

    .line 63
    .line 64
    invoke-static {p4, v4, v0}, Lcom/google/android/gms/cast/framework/media/widget/zzo;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 69
    .line 70
    .line 71
    move-result-object p4

    .line 72
    iget v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->m:I

    .line 73
    .line 74
    invoke-static {p4, v0, v1}, Lcom/google/android/gms/cast/framework/media/widget/zzo;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    .line 80
    .line 81
    new-instance v6, Landroid/widget/ProgressBar;

    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 84
    .line 85
    .line 86
    move-result-object p4

    .line 87
    invoke-direct {v6, p4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 88
    .line 89
    .line 90
    const/4 p4, -0x2

    .line 91
    const/16 v0, 0x8

    .line 92
    .line 93
    invoke-static {p4, p4, v0, p3}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 94
    .line 95
    .line 96
    move-result-object p4

    .line 97
    const/4 v1, 0x6

    .line 98
    invoke-virtual {p4, v1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 99
    .line 100
    .line 101
    const/4 v1, 0x5

    .line 102
    invoke-virtual {p4, v1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 103
    .line 104
    .line 105
    const/4 v1, 0x7

    .line 106
    invoke-virtual {p4, v1, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 107
    .line 108
    .line 109
    const/16 p3, 0xf

    .line 110
    .line 111
    invoke-virtual {p4, p3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {v6, p4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v6}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    .line 121
    .line 122
    .line 123
    move-result-object p3

    .line 124
    iget p4, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->l:I

    .line 125
    .line 126
    if-eqz p4, :cond_3

    .line 127
    .line 128
    if-eqz p3, :cond_3

    .line 129
    .line 130
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 131
    .line 132
    invoke-virtual {p3, p4, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 133
    .line 134
    .line 135
    :cond_3
    invoke-virtual {p2, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 136
    .line 137
    .line 138
    const/4 v7, 0x1

    .line 139
    move-object v1, p1

    .line 140
    invoke-virtual/range {v1 .. v7}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->q(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/widget/ProgressBar;Z)V

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :cond_4
    move-object v1, p1

    .line 145
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_skip_previous:I

    .line 146
    .line 147
    if-ne p4, p1, :cond_5

    .line 148
    .line 149
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->m:I

    .line 154
    .line 155
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->w:I

    .line 156
    .line 157
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/cast/framework/media/widget/zzo;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    sget p2, Lcom/google/android/gms/cast/framework/R$string;->cast_skip_prev:I

    .line 169
    .line 170
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object p1

    .line 174
    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->x(Landroid/widget/ImageView;)V

    .line 178
    .line 179
    .line 180
    return-void

    .line 181
    :cond_5
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_skip_next:I

    .line 182
    .line 183
    if-ne p4, p1, :cond_6

    .line 184
    .line 185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->m:I

    .line 190
    .line 191
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->x:I

    .line 192
    .line 193
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/cast/framework/media/widget/zzo;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    sget p2, Lcom/google/android/gms/cast/framework/R$string;->cast_skip_next:I

    .line 205
    .line 206
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 211
    .line 212
    .line 213
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->w(Landroid/widget/ImageView;)V

    .line 214
    .line 215
    .line 216
    return-void

    .line 217
    :cond_6
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_rewind_30_seconds:I

    .line 218
    .line 219
    if-ne p4, p1, :cond_7

    .line 220
    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 222
    .line 223
    .line 224
    move-result-object p1

    .line 225
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->m:I

    .line 226
    .line 227
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->y:I

    .line 228
    .line 229
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/cast/framework/media/widget/zzo;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    .line 230
    .line 231
    .line 232
    move-result-object p1

    .line 233
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    sget p2, Lcom/google/android/gms/cast/framework/R$string;->cast_rewind_30:I

    .line 241
    .line 242
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object p1

    .line 246
    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->v(Landroid/widget/ImageView;)V

    .line 250
    .line 251
    .line 252
    return-void

    .line 253
    :cond_7
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_forward_30_seconds:I

    .line 254
    .line 255
    if-ne p4, p1, :cond_8

    .line 256
    .line 257
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 258
    .line 259
    .line 260
    move-result-object p1

    .line 261
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->m:I

    .line 262
    .line 263
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->z:I

    .line 264
    .line 265
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/cast/framework/media/widget/zzo;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 273
    .line 274
    .line 275
    move-result-object p1

    .line 276
    sget p2, Lcom/google/android/gms/cast/framework/R$string;->cast_forward_30:I

    .line 277
    .line 278
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object p1

    .line 282
    invoke-virtual {v2, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->t(Landroid/widget/ImageView;)V

    .line 286
    .line 287
    .line 288
    return-void

    .line 289
    :cond_8
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_mute_toggle:I

    .line 290
    .line 291
    if-ne p4, p1, :cond_9

    .line 292
    .line 293
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 294
    .line 295
    .line 296
    move-result-object p1

    .line 297
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->m:I

    .line 298
    .line 299
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->A:I

    .line 300
    .line 301
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/cast/framework/media/widget/zzo;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    .line 302
    .line 303
    .line 304
    move-result-object p1

    .line 305
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->p(Landroid/widget/ImageView;)V

    .line 309
    .line 310
    .line 311
    return-void

    .line 312
    :cond_9
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_closed_caption:I

    .line 313
    .line 314
    if-ne p4, p1, :cond_a

    .line 315
    .line 316
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    iget p2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->m:I

    .line 321
    .line 322
    iget p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->B:I

    .line 323
    .line 324
    invoke-static {p1, p2, p3}, Lcom/google/android/gms/cast/framework/media/widget/zzo;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    .line 325
    .line 326
    .line 327
    move-result-object p1

    .line 328
    invoke-virtual {v2, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->s(Landroid/widget/ImageView;)V

    .line 332
    .line 333
    .line 334
    :cond_a
    :goto_0
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12

    .line 1
    new-instance p3, Lcom/google/android/gms/cast/internal/Logger;

    .line 2
    .line 3
    const-string v0, "MiniControllerFragment"

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-direct {p3, v0, v1}, Lcom/google/android/gms/cast/internal/Logger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->c:Lcom/google/android/gms/cast/internal/Logger;

    .line 10
    .line 11
    new-instance p3, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p3, v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 18
    .line 19
    .line 20
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->C:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    .line 21
    .line 22
    sget v0, Lcom/google/android/gms/cast/framework/R$layout;->cast_mini_controller:I

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/16 p2, 0x8

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    const-string v0, "Must be called from the main thread."

    .line 35
    .line 36
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v2, Lcom/google/android/gms/internal/cast/zzdt;

    .line 40
    .line 41
    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/cast/zzdt;-><init>(Landroid/view/View;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p3, p1, v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->B(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    .line 45
    .line 46
    .line 47
    sget v2, Lcom/google/android/gms/cast/framework/R$id;->container_current:I

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 54
    .line 55
    iget v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->j:I

    .line 56
    .line 57
    if-eqz v3, :cond_0

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 60
    .line 61
    .line 62
    :cond_0
    sget v3, Lcom/google/android/gms/cast/framework/R$id;->icon_view:I

    .line 63
    .line 64
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    move-object v5, v3

    .line 69
    check-cast v5, Landroid/widget/ImageView;

    .line 70
    .line 71
    sget v3, Lcom/google/android/gms/cast/framework/R$id;->title_view:I

    .line 72
    .line 73
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Landroid/widget/TextView;

    .line 78
    .line 79
    iget v4, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->g:I

    .line 80
    .line 81
    if-eqz v4, :cond_1

    .line 82
    .line 83
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    iget v6, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->g:I

    .line 88
    .line 89
    invoke-virtual {v3, v4, v6}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 90
    .line 91
    .line 92
    :cond_1
    sget v4, Lcom/google/android/gms/cast/framework/R$id;->subtitle_view:I

    .line 93
    .line 94
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    check-cast v4, Landroid/widget/TextView;

    .line 99
    .line 100
    iput-object v4, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->i:Landroid/widget/TextView;

    .line 101
    .line 102
    iget v6, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->h:I

    .line 103
    .line 104
    if-eqz v6, :cond_2

    .line 105
    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    iget v7, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->h:I

    .line 111
    .line 112
    invoke-virtual {v4, v6, v7}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 113
    .line 114
    .line 115
    :cond_2
    sget v4, Lcom/google/android/gms/cast/framework/R$id;->progressBar:I

    .line 116
    .line 117
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    check-cast v4, Landroid/widget/ProgressBar;

    .line 122
    .line 123
    iget v6, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->k:I

    .line 124
    .line 125
    if-eqz v6, :cond_3

    .line 126
    .line 127
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    check-cast v6, Landroid/graphics/drawable/LayerDrawable;

    .line 132
    .line 133
    iget v7, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->k:I

    .line 134
    .line 135
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 136
    .line 137
    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 138
    .line 139
    .line 140
    :cond_3
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    const-string v6, "com.google.android.gms.cast.metadata.TITLE"

    .line 144
    .line 145
    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    new-instance v7, Lcom/google/android/gms/internal/cast/zzde;

    .line 153
    .line 154
    invoke-direct {v7, v3, v6}, Lcom/google/android/gms/internal/cast/zzde;-><init>(Landroid/widget/TextView;Ljava/util/List;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p3, v3, v7}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->B(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    .line 158
    .line 159
    .line 160
    iget-object v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->i:Landroid/widget/TextView;

    .line 161
    .line 162
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    new-instance v6, Lcom/google/android/gms/internal/cast/zzdo;

    .line 166
    .line 167
    invoke-direct {v6, v3}, Lcom/google/android/gms/internal/cast/zzdo;-><init>(Landroid/widget/TextView;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p3, v3, v6}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->B(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    new-instance v3, Lcom/google/android/gms/internal/cast/zzdi;

    .line 177
    .line 178
    invoke-direct {v3, v4}, Lcom/google/android/gms/internal/cast/zzdi;-><init>(Landroid/widget/ProgressBar;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p3, v4, v3}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->B(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p3, v2}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->u(Landroid/widget/RelativeLayout;)V

    .line 185
    .line 186
    .line 187
    iget-boolean v3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->f:Z

    .line 188
    .line 189
    const/4 v11, 0x2

    .line 190
    if-eqz v3, :cond_4

    .line 191
    .line 192
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 193
    .line 194
    .line 195
    move-result-object p2

    .line 196
    sget v3, Lcom/google/android/gms/cast/framework/R$dimen;->cast_mini_controller_icon_width:I

    .line 197
    .line 198
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 199
    .line 200
    .line 201
    move-result p2

    .line 202
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 203
    .line 204
    .line 205
    move-result-object v3

    .line 206
    sget v4, Lcom/google/android/gms/cast/framework/R$dimen;->cast_mini_controller_icon_height:I

    .line 207
    .line 208
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 209
    .line 210
    .line 211
    move-result v3

    .line 212
    new-instance v7, Lcom/google/android/gms/cast/framework/media/ImageHints;

    .line 213
    .line 214
    invoke-direct {v7, v11, p2, v3}, Lcom/google/android/gms/cast/framework/media/ImageHints;-><init>(III)V

    .line 215
    .line 216
    .line 217
    sget v8, Lcom/google/android/gms/cast/framework/R$drawable;->cast_album_art_placeholder:I

    .line 218
    .line 219
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    new-instance v4, Lcom/google/android/gms/internal/cast/zzda;

    .line 223
    .line 224
    const/4 v9, 0x0

    .line 225
    const/4 v10, 0x0

    .line 226
    iget-object v6, p3, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->a:Landroid/app/Activity;

    .line 227
    .line 228
    invoke-direct/range {v4 .. v10}, Lcom/google/android/gms/internal/cast/zzda;-><init>(Landroid/widget/ImageView;Landroid/content/Context;Lcom/google/android/gms/cast/framework/media/ImageHints;ILandroid/view/View;Lcom/google/android/gms/internal/cast/zzcz;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p3, v5, v4}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->B(Landroid/view/View;Lcom/google/android/gms/cast/framework/media/uicontroller/UIController;)V

    .line 232
    .line 233
    .line 234
    goto :goto_0

    .line 235
    :cond_4
    invoke-virtual {v5, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    :goto_0
    sget p2, Lcom/google/android/gms/cast/framework/R$id;->button_0:I

    .line 239
    .line 240
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    check-cast p2, Landroid/widget/ImageView;

    .line 245
    .line 246
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->o:[Landroid/widget/ImageView;

    .line 247
    .line 248
    aput-object p2, v0, v1

    .line 249
    .line 250
    sget p2, Lcom/google/android/gms/cast/framework/R$id;->button_1:I

    .line 251
    .line 252
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object p2

    .line 256
    check-cast p2, Landroid/widget/ImageView;

    .line 257
    .line 258
    const/4 v3, 0x1

    .line 259
    aput-object p2, v0, v3

    .line 260
    .line 261
    sget p2, Lcom/google/android/gms/cast/framework/R$id;->button_2:I

    .line 262
    .line 263
    invoke-virtual {v2, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object p2

    .line 267
    check-cast p2, Landroid/widget/ImageView;

    .line 268
    .line 269
    aput-object p2, v0, v11

    .line 270
    .line 271
    sget p2, Lcom/google/android/gms/cast/framework/R$id;->button_0:I

    .line 272
    .line 273
    invoke-virtual {p0, p3, v2, p2, v1}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->f(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;Landroid/widget/RelativeLayout;II)V

    .line 274
    .line 275
    .line 276
    sget p2, Lcom/google/android/gms/cast/framework/R$id;->button_1:I

    .line 277
    .line 278
    invoke-virtual {p0, p3, v2, p2, v3}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->f(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;Landroid/widget/RelativeLayout;II)V

    .line 279
    .line 280
    .line 281
    sget p2, Lcom/google/android/gms/cast/framework/R$id;->button_2:I

    .line 282
    .line 283
    invoke-virtual {p0, p3, v2, p2, v11}, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->f(Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;Landroid/widget/RelativeLayout;II)V

    .line 284
    .line 285
    .line 286
    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->C:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    const-string v1, "Must be called from the main thread."

    .line 6
    .line 7
    invoke-static {v1}, Lcom/google/android/gms/common/internal/Preconditions;->checkMainThread(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->A()V

    .line 11
    .line 12
    .line 13
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->c:Ljava/util/HashMap;

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->b:Lcom/google/android/gms/cast/framework/SessionManager;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/framework/SessionManager;->e(Lcom/google/android/gms/cast/framework/SessionManagerListener;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;->f:Lcom/google/android/gms/cast/framework/media/RemoteMediaClient$Listener;

    .line 27
    .line 28
    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->C:Lcom/google/android/gms/cast/framework/media/uicontroller/UIMediaController;

    .line 29
    .line 30
    :cond_1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->n:[I

    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    goto/16 :goto_3

    .line 9
    .line 10
    :cond_0
    sget-object p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController:[I

    .line 11
    .line 12
    sget v0, Lcom/google/android/gms/cast/framework/R$attr;->castMiniControllerStyle:I

    .line 13
    .line 14
    sget v1, Lcom/google/android/gms/cast/framework/R$style;->CastMiniController:I

    .line 15
    .line 16
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castShowImageThumbnail:I

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 24
    .line 25
    .line 26
    move-result p3

    .line 27
    iput-boolean p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->f:Z

    .line 28
    .line 29
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castTitleTextAppearance:I

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 33
    .line 34
    .line 35
    move-result p3

    .line 36
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->g:I

    .line 37
    .line 38
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castSubtitleTextAppearance:I

    .line 39
    .line 40
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 41
    .line 42
    .line 43
    move-result p3

    .line 44
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->h:I

    .line 45
    .line 46
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castBackground:I

    .line 47
    .line 48
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 49
    .line 50
    .line 51
    move-result p3

    .line 52
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->j:I

    .line 53
    .line 54
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castProgressBarColor:I

    .line 55
    .line 56
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 57
    .line 58
    .line 59
    move-result p3

    .line 60
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->k:I

    .line 61
    .line 62
    sget v2, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castMiniControllerLoadingIndicatorColor:I

    .line 63
    .line 64
    invoke-virtual {p2, v2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 65
    .line 66
    .line 67
    move-result p3

    .line 68
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->l:I

    .line 69
    .line 70
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castButtonColor:I

    .line 71
    .line 72
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 73
    .line 74
    .line 75
    move-result p3

    .line 76
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->m:I

    .line 77
    .line 78
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castPlayButtonDrawable:I

    .line 79
    .line 80
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 81
    .line 82
    .line 83
    move-result p3

    .line 84
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->q:I

    .line 85
    .line 86
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castPauseButtonDrawable:I

    .line 87
    .line 88
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 89
    .line 90
    .line 91
    move-result p3

    .line 92
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->r:I

    .line 93
    .line 94
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castStopButtonDrawable:I

    .line 95
    .line 96
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->s:I

    .line 101
    .line 102
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castPlayButtonDrawable:I

    .line 103
    .line 104
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 105
    .line 106
    .line 107
    move-result p3

    .line 108
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->t:I

    .line 109
    .line 110
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castPauseButtonDrawable:I

    .line 111
    .line 112
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 113
    .line 114
    .line 115
    move-result p3

    .line 116
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->u:I

    .line 117
    .line 118
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castStopButtonDrawable:I

    .line 119
    .line 120
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 121
    .line 122
    .line 123
    move-result p3

    .line 124
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->v:I

    .line 125
    .line 126
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castSkipPreviousButtonDrawable:I

    .line 127
    .line 128
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 129
    .line 130
    .line 131
    move-result p3

    .line 132
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->w:I

    .line 133
    .line 134
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castSkipNextButtonDrawable:I

    .line 135
    .line 136
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 137
    .line 138
    .line 139
    move-result p3

    .line 140
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->x:I

    .line 141
    .line 142
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castRewind30ButtonDrawable:I

    .line 143
    .line 144
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 145
    .line 146
    .line 147
    move-result p3

    .line 148
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->y:I

    .line 149
    .line 150
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castForward30ButtonDrawable:I

    .line 151
    .line 152
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 153
    .line 154
    .line 155
    move-result p3

    .line 156
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->z:I

    .line 157
    .line 158
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castMuteToggleButtonDrawable:I

    .line 159
    .line 160
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 161
    .line 162
    .line 163
    move-result p3

    .line 164
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->A:I

    .line 165
    .line 166
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castClosedCaptionsButtonDrawable:I

    .line 167
    .line 168
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 169
    .line 170
    .line 171
    move-result p3

    .line 172
    iput p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->B:I

    .line 173
    .line 174
    sget p3, Lcom/google/android/gms/cast/framework/R$styleable;->CastMiniController_castControlButtons:I

    .line 175
    .line 176
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 177
    .line 178
    .line 179
    move-result p3

    .line 180
    if-eqz p3, :cond_5

    .line 181
    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 187
    .line 188
    .line 189
    move-result-object p1

    .line 190
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    .line 191
    .line 192
    .line 193
    move-result p3

    .line 194
    const/4 v2, 0x3

    .line 195
    if-ne p3, v2, :cond_1

    .line 196
    .line 197
    move p3, v0

    .line 198
    goto :goto_0

    .line 199
    :cond_1
    move p3, v1

    .line 200
    :goto_0
    invoke-static {p3}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(Z)V

    .line 201
    .line 202
    .line 203
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    .line 204
    .line 205
    .line 206
    move-result p3

    .line 207
    new-array p3, p3, [I

    .line 208
    .line 209
    iput-object p3, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->n:[I

    .line 210
    .line 211
    move p3, v1

    .line 212
    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->length()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-ge p3, v2, :cond_2

    .line 217
    .line 218
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->n:[I

    .line 219
    .line 220
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    aput v3, v2, p3

    .line 225
    .line 226
    add-int/lit8 p3, p3, 0x1

    .line 227
    .line 228
    goto :goto_1

    .line 229
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 230
    .line 231
    .line 232
    iget-boolean p1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->f:Z

    .line 233
    .line 234
    if-eqz p1, :cond_3

    .line 235
    .line 236
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->n:[I

    .line 237
    .line 238
    sget p3, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_empty:I

    .line 239
    .line 240
    aput p3, p1, v1

    .line 241
    .line 242
    :cond_3
    iput v1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->p:I

    .line 243
    .line 244
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->n:[I

    .line 245
    .line 246
    array-length p3, p1

    .line 247
    :goto_2
    if-ge v1, p3, :cond_7

    .line 248
    .line 249
    aget v2, p1, v1

    .line 250
    .line 251
    sget v3, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_empty:I

    .line 252
    .line 253
    if-eq v2, v3, :cond_4

    .line 254
    .line 255
    iget v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->p:I

    .line 256
    .line 257
    add-int/2addr v2, v0

    .line 258
    iput v2, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->p:I

    .line 259
    .line 260
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 261
    .line 262
    goto :goto_2

    .line 263
    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->c:Lcom/google/android/gms/cast/internal/Logger;

    .line 264
    .line 265
    if-eqz p1, :cond_6

    .line 266
    .line 267
    new-array p3, v1, [Ljava/lang/Object;

    .line 268
    .line 269
    iget-object v0, p1, Lcom/google/android/gms/cast/internal/Logger;->a:Ljava/lang/String;

    .line 270
    .line 271
    const-string v1, "Unable to read attribute castControlButtons."

    .line 272
    .line 273
    invoke-virtual {p1, v1, p3}, Lcom/google/android/gms/cast/internal/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    :cond_6
    sget p1, Lcom/google/android/gms/cast/framework/R$id;->cast_button_type_empty:I

    .line 281
    .line 282
    filled-new-array {p1, p1, p1}, [I

    .line 283
    .line 284
    .line 285
    move-result-object p1

    .line 286
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/widget/MiniControllerFragment;->n:[I

    .line 287
    .line 288
    :cond_7
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 289
    .line 290
    .line 291
    :goto_3
    sget-object p1, Lcom/google/android/gms/internal/cast/zzpm;->i:Lcom/google/android/gms/internal/cast/zzpm;

    .line 292
    .line 293
    invoke-static {p1}, Lcom/google/android/gms/internal/cast/zzr;->a(Lcom/google/android/gms/internal/cast/zzpm;)V

    .line 294
    .line 295
    .line 296
    return-void
.end method
