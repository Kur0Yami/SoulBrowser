.class public Lcom/mycompany/app/editor/core/PhotoEffectView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;
    }
.end annotation


# static fields
.field public static final o:[Ljava/lang/String;

.field public static final p:[I


# instance fields
.field public c:Lcom/mycompany/app/editor/core/TextureRenderer;

.field public f:[I

.field public g:Z

.field public h:Landroid/graphics/Bitmap;

.field public i:I

.field public j:I

.field public k:Landroid/media/effect/EffectContext;

.field public l:Landroid/media/effect/Effect;

.field public m:I

.field public n:Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    const-string v22, "FLIP VERTICAL"

    .line 2
    .line 3
    const-string v23, "ROTATE"

    .line 4
    .line 5
    const-string v1, "ORIGINAL"

    .line 6
    .line 7
    const-string v2, "AUTO FIX"

    .line 8
    .line 9
    const-string v3, "BRIGHTNESS"

    .line 10
    .line 11
    const-string v4, "CONTRAST"

    .line 12
    .line 13
    const-string v5, "CROSS PROCESS"

    .line 14
    .line 15
    const-string v6, "DOCUMENTARY"

    .line 16
    .line 17
    const-string v7, "DUO TONE"

    .line 18
    .line 19
    const-string v8, "FILL LIGHT"

    .line 20
    .line 21
    const-string v9, "FISH EYE"

    .line 22
    .line 23
    const-string v10, "GRAIN"

    .line 24
    .line 25
    const-string v11, "GRAY SCALE"

    .line 26
    .line 27
    const-string v12, "LOMOISH"

    .line 28
    .line 29
    const-string v13, "NEGATIVE"

    .line 30
    .line 31
    const-string v14, "POSTERIZE"

    .line 32
    .line 33
    const-string v15, "SATURATE"

    .line 34
    .line 35
    const-string v16, "SEPIA"

    .line 36
    .line 37
    const-string v17, "SHARPEN"

    .line 38
    .line 39
    const-string v18, "TEMPERATURE"

    .line 40
    .line 41
    const-string v19, "TINT"

    .line 42
    .line 43
    const-string v20, "VIGNETTE"

    .line 44
    .line 45
    const-string v21, "FLIP HORIZONTAL"

    .line 46
    .line 47
    filled-new-array/range {v1 .. v23}, [Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/mycompany/app/editor/core/PhotoEffectView;->o:[Ljava/lang/String;

    .line 52
    .line 53
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->effect_original:I

    .line 54
    .line 55
    sget v2, Lnet/kaki87/soul2/testing/R$drawable;->effect_auto_fix:I

    .line 56
    .line 57
    sget v3, Lnet/kaki87/soul2/testing/R$drawable;->effect_brightness:I

    .line 58
    .line 59
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->effect_contrast:I

    .line 60
    .line 61
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->effect_cross_process:I

    .line 62
    .line 63
    sget v6, Lnet/kaki87/soul2/testing/R$drawable;->effect_documentary:I

    .line 64
    .line 65
    sget v7, Lnet/kaki87/soul2/testing/R$drawable;->effect_duo_tone:I

    .line 66
    .line 67
    sget v8, Lnet/kaki87/soul2/testing/R$drawable;->effect_fill_light:I

    .line 68
    .line 69
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->effect_fish_eye:I

    .line 70
    .line 71
    sget v10, Lnet/kaki87/soul2/testing/R$drawable;->effect_grain:I

    .line 72
    .line 73
    sget v11, Lnet/kaki87/soul2/testing/R$drawable;->effect_gray_scale:I

    .line 74
    .line 75
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->effect_lomoish:I

    .line 76
    .line 77
    sget v13, Lnet/kaki87/soul2/testing/R$drawable;->effect_negative:I

    .line 78
    .line 79
    sget v14, Lnet/kaki87/soul2/testing/R$drawable;->effect_posterize:I

    .line 80
    .line 81
    sget v15, Lnet/kaki87/soul2/testing/R$drawable;->effect_saturate:I

    .line 82
    .line 83
    sget v16, Lnet/kaki87/soul2/testing/R$drawable;->effect_sepia:I

    .line 84
    .line 85
    sget v17, Lnet/kaki87/soul2/testing/R$drawable;->effect_sharpen:I

    .line 86
    .line 87
    sget v18, Lnet/kaki87/soul2/testing/R$drawable;->effect_temperature:I

    .line 88
    .line 89
    sget v19, Lnet/kaki87/soul2/testing/R$drawable;->effect_tint:I

    .line 90
    .line 91
    sget v20, Lnet/kaki87/soul2/testing/R$drawable;->effect_vignette:I

    .line 92
    .line 93
    sget v21, Lnet/kaki87/soul2/testing/R$drawable;->effect_flip_horizontal:I

    .line 94
    .line 95
    sget v22, Lnet/kaki87/soul2/testing/R$drawable;->effect_flip_vertical:I

    .line 96
    .line 97
    sget v23, Lnet/kaki87/soul2/testing/R$drawable;->effect_rotate:I

    .line 98
    .line 99
    filled-new-array/range {v1 .. v23}, [I

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sput-object v0, Lcom/mycompany/app/editor/core/PhotoEffectView;->p:[I

    .line 104
    .line 105
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 11

    .line 1
    const/high16 v0, 0x3f000000    # 0.5f

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/media/effect/Effect;->release()V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 16
    .line 17
    :cond_0
    iget v1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->m:I

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_1
    iget v3, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->i:I

    .line 24
    .line 25
    if-eqz v3, :cond_6

    .line 26
    .line 27
    iget v3, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->j:I

    .line 28
    .line 29
    if-nez v3, :cond_2

    .line 30
    .line 31
    goto/16 :goto_1

    .line 32
    .line 33
    :cond_2
    if-eqz v1, :cond_4

    .line 34
    .line 35
    iget-object v1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->k:Landroid/media/effect/EffectContext;

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    invoke-static {}, Landroid/media/effect/EffectContext;->createWithCurrentGlContext()Landroid/media/effect/EffectContext;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    iput-object v1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->k:Landroid/media/effect/EffectContext;

    .line 44
    .line 45
    :cond_3
    iget-object v1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->k:Landroid/media/effect/EffectContext;

    .line 46
    .line 47
    invoke-virtual {v1}, Landroid/media/effect/EffectContext;->getFactory()Landroid/media/effect/EffectFactory;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    :cond_4
    iget v1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->m:I

    .line 52
    .line 53
    const/high16 v3, 0x3f800000    # 1.0f

    .line 54
    .line 55
    const-string v4, "strength"

    .line 56
    .line 57
    const-string v5, "android.media.effect.effects.FlipEffect"

    .line 58
    .line 59
    const-string v6, "scale"

    .line 60
    .line 61
    packed-switch v1, :pswitch_data_0

    .line 62
    .line 63
    .line 64
    goto/16 :goto_0

    .line 65
    .line 66
    :pswitch_0
    const-string v0, "android.media.effect.effects.RotateEffect"

    .line 67
    .line 68
    invoke-virtual {v2, v0}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 73
    .line 74
    const/16 v1, 0xb4

    .line 75
    .line 76
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    const-string v2, "angle"

    .line 81
    .line 82
    invoke-virtual {v0, v2, v1}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_0

    .line 86
    .line 87
    :pswitch_1
    invoke-virtual {v2, v5}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    iput-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 92
    .line 93
    const-string v1, "vertical"

    .line 94
    .line 95
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 96
    .line 97
    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    goto/16 :goto_0

    .line 101
    .line 102
    :pswitch_2
    invoke-virtual {v2, v5}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iput-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 107
    .line 108
    const-string v1, "horizontal"

    .line 109
    .line 110
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 111
    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :pswitch_3
    const-string v1, "android.media.effect.effects.VignetteEffect"

    .line 118
    .line 119
    invoke-virtual {v2, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iput-object v1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 124
    .line 125
    invoke-virtual {v1, v6, v0}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_0

    .line 129
    .line 130
    :pswitch_4
    const-string v0, "android.media.effect.effects.TintEffect"

    .line 131
    .line 132
    invoke-virtual {v2, v0}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iput-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 137
    .line 138
    const v1, -0xff01

    .line 139
    .line 140
    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    const-string v2, "tint"

    .line 146
    .line 147
    invoke-virtual {v0, v2, v1}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    goto/16 :goto_0

    .line 151
    .line 152
    :pswitch_5
    const-string v0, "android.media.effect.effects.ColorTemperatureEffect"

    .line 153
    .line 154
    invoke-virtual {v2, v0}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iput-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 159
    .line 160
    const v1, 0x3f666666    # 0.9f

    .line 161
    .line 162
    .line 163
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v0, v6, v1}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    goto/16 :goto_0

    .line 171
    .line 172
    :pswitch_6
    const-string v0, "android.media.effect.effects.SharpenEffect"

    .line 173
    .line 174
    invoke-virtual {v2, v0}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    iput-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 179
    .line 180
    goto/16 :goto_0

    .line 181
    .line 182
    :pswitch_7
    const-string v0, "android.media.effect.effects.SepiaEffect"

    .line 183
    .line 184
    invoke-virtual {v2, v0}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iput-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 189
    .line 190
    goto/16 :goto_0

    .line 191
    .line 192
    :pswitch_8
    const-string v1, "android.media.effect.effects.SaturateEffect"

    .line 193
    .line 194
    invoke-virtual {v2, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    iput-object v1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 199
    .line 200
    invoke-virtual {v1, v6, v0}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :pswitch_9
    const-string v0, "android.media.effect.effects.PosterizeEffect"

    .line 206
    .line 207
    invoke-virtual {v2, v0}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    iput-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 212
    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :pswitch_a
    const-string v0, "android.media.effect.effects.NegativeEffect"

    .line 216
    .line 217
    invoke-virtual {v2, v0}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    iput-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 222
    .line 223
    goto/16 :goto_0

    .line 224
    .line 225
    :pswitch_b
    const-string v0, "android.media.effect.effects.LomoishEffect"

    .line 226
    .line 227
    invoke-virtual {v2, v0}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    iput-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :pswitch_c
    const-string v0, "android.media.effect.effects.GrayscaleEffect"

    .line 236
    .line 237
    invoke-virtual {v2, v0}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    iput-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 242
    .line 243
    goto/16 :goto_0

    .line 244
    .line 245
    :pswitch_d
    const-string v0, "android.media.effect.effects.GrainEffect"

    .line 246
    .line 247
    invoke-virtual {v2, v0}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iput-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 252
    .line 253
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    invoke-virtual {v0, v4, v1}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 258
    .line 259
    .line 260
    goto/16 :goto_0

    .line 261
    .line 262
    :pswitch_e
    const-string v1, "android.media.effect.effects.FisheyeEffect"

    .line 263
    .line 264
    invoke-virtual {v2, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    iput-object v1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 269
    .line 270
    invoke-virtual {v1, v6, v0}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 271
    .line 272
    .line 273
    goto/16 :goto_0

    .line 274
    .line 275
    :pswitch_f
    const-string v0, "android.media.effect.effects.FillLightEffect"

    .line 276
    .line 277
    invoke-virtual {v2, v0}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 278
    .line 279
    .line 280
    move-result-object v0

    .line 281
    iput-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 282
    .line 283
    const v1, 0x3f4ccccd    # 0.8f

    .line 284
    .line 285
    .line 286
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 287
    .line 288
    .line 289
    move-result-object v1

    .line 290
    invoke-virtual {v0, v4, v1}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    .line 292
    .line 293
    goto :goto_0

    .line 294
    :pswitch_10
    const-string v0, "android.media.effect.effects.DuotoneEffect"

    .line 295
    .line 296
    invoke-virtual {v2, v0}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    iput-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 301
    .line 302
    const/16 v1, -0x100

    .line 303
    .line 304
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    const-string v2, "first_color"

    .line 309
    .line 310
    invoke-virtual {v0, v2, v1}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 314
    .line 315
    const v1, -0xbbbbbc

    .line 316
    .line 317
    .line 318
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    const-string v2, "second_color"

    .line 323
    .line 324
    invoke-virtual {v0, v2, v1}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 325
    .line 326
    .line 327
    goto :goto_0

    .line 328
    :pswitch_11
    const-string v0, "android.media.effect.effects.DocumentaryEffect"

    .line 329
    .line 330
    invoke-virtual {v2, v0}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 331
    .line 332
    .line 333
    move-result-object v0

    .line 334
    iput-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 335
    .line 336
    goto :goto_0

    .line 337
    :pswitch_12
    const-string v0, "android.media.effect.effects.CrossProcessEffect"

    .line 338
    .line 339
    invoke-virtual {v2, v0}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    iput-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 344
    .line 345
    goto :goto_0

    .line 346
    :pswitch_13
    const-string v0, "android.media.effect.effects.ContrastEffect"

    .line 347
    .line 348
    invoke-virtual {v2, v0}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    iput-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 353
    .line 354
    const v1, 0x3fb33333    # 1.4f

    .line 355
    .line 356
    .line 357
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    const-string v2, "contrast"

    .line 362
    .line 363
    invoke-virtual {v0, v2, v1}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 364
    .line 365
    .line 366
    goto :goto_0

    .line 367
    :pswitch_14
    const-string v0, "android.media.effect.effects.BrightnessEffect"

    .line 368
    .line 369
    invoke-virtual {v2, v0}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 370
    .line 371
    .line 372
    move-result-object v0

    .line 373
    iput-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 374
    .line 375
    const/high16 v1, 0x40000000    # 2.0f

    .line 376
    .line 377
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 378
    .line 379
    .line 380
    move-result-object v1

    .line 381
    const-string v2, "brightness"

    .line 382
    .line 383
    invoke-virtual {v0, v2, v1}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 384
    .line 385
    .line 386
    goto :goto_0

    .line 387
    :pswitch_15
    const-string v1, "android.media.effect.effects.AutoFixEffect"

    .line 388
    .line 389
    invoke-virtual {v2, v1}, Landroid/media/effect/EffectFactory;->createEffect(Ljava/lang/String;)Landroid/media/effect/Effect;

    .line 390
    .line 391
    .line 392
    move-result-object v1

    .line 393
    iput-object v1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 394
    .line 395
    invoke-virtual {v1, v6, v0}, Landroid/media/effect/Effect;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    .line 396
    .line 397
    .line 398
    :goto_0
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->l:Landroid/media/effect/Effect;

    .line 399
    .line 400
    const/4 v1, 0x1

    .line 401
    const/4 v2, 0x0

    .line 402
    if-eqz v0, :cond_5

    .line 403
    .line 404
    iget-object v4, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->f:[I

    .line 405
    .line 406
    aget v5, v4, v2

    .line 407
    .line 408
    iget v6, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->i:I

    .line 409
    .line 410
    iget v7, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->j:I

    .line 411
    .line 412
    aget v4, v4, v1

    .line 413
    .line 414
    invoke-virtual {v0, v5, v6, v7, v4}, Landroid/media/effect/Effect;->apply(IIII)V

    .line 415
    .line 416
    .line 417
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->c:Lcom/mycompany/app/editor/core/TextureRenderer;

    .line 418
    .line 419
    iget-object v4, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->f:[I

    .line 420
    .line 421
    aget v1, v4, v1

    .line 422
    .line 423
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    .line 425
    .line 426
    const v4, 0x8d40

    .line 427
    .line 428
    .line 429
    invoke-static {v4, v2}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 430
    .line 431
    .line 432
    iget v4, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->a:I

    .line 433
    .line 434
    invoke-static {v4}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 435
    .line 436
    .line 437
    const-string v4, "glUseProgram"

    .line 438
    .line 439
    invoke-static {v4}, Lcom/mycompany/app/editor/core/GLToolbox;->a(Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    iget v4, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->g:I

    .line 443
    .line 444
    iget v5, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->h:I

    .line 445
    .line 446
    invoke-static {v2, v2, v4, v5}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 447
    .line 448
    .line 449
    const-string v4, "glViewport"

    .line 450
    .line 451
    invoke-static {v4}, Lcom/mycompany/app/editor/core/GLToolbox;->a(Ljava/lang/String;)V

    .line 452
    .line 453
    .line 454
    const/16 v4, 0xbe2

    .line 455
    .line 456
    invoke-static {v4}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 457
    .line 458
    .line 459
    iget v5, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->c:I

    .line 460
    .line 461
    const/4 v9, 0x0

    .line 462
    iget-object v10, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->e:Ljava/nio/FloatBuffer;

    .line 463
    .line 464
    const/4 v6, 0x2

    .line 465
    const/16 v7, 0x1406

    .line 466
    .line 467
    const/4 v8, 0x0

    .line 468
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 469
    .line 470
    .line 471
    iget v4, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->c:I

    .line 472
    .line 473
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 474
    .line 475
    .line 476
    iget v5, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->d:I

    .line 477
    .line 478
    iget-object v10, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->f:Ljava/nio/FloatBuffer;

    .line 479
    .line 480
    invoke-static/range {v5 .. v10}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 481
    .line 482
    .line 483
    iget v4, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->d:I

    .line 484
    .line 485
    invoke-static {v4}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 486
    .line 487
    .line 488
    const-string v4, "vertex attribute setup"

    .line 489
    .line 490
    invoke-static {v4}, Lcom/mycompany/app/editor/core/GLToolbox;->a(Ljava/lang/String;)V

    .line 491
    .line 492
    .line 493
    const v4, 0x84c0

    .line 494
    .line 495
    .line 496
    invoke-static {v4}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 497
    .line 498
    .line 499
    const-string v4, "glActiveTexture"

    .line 500
    .line 501
    invoke-static {v4}, Lcom/mycompany/app/editor/core/GLToolbox;->a(Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    const/16 v4, 0xde1

    .line 505
    .line 506
    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 507
    .line 508
    .line 509
    const-string v1, "glBindTexture"

    .line 510
    .line 511
    invoke-static {v1}, Lcom/mycompany/app/editor/core/GLToolbox;->a(Ljava/lang/String;)V

    .line 512
    .line 513
    .line 514
    iget v0, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->b:I

    .line 515
    .line 516
    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 517
    .line 518
    .line 519
    const/4 v0, 0x0

    .line 520
    invoke-static {v0, v0, v0, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 521
    .line 522
    .line 523
    const/16 v0, 0x4000

    .line 524
    .line 525
    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 526
    .line 527
    .line 528
    const/4 v0, 0x5

    .line 529
    const/4 v1, 0x4

    .line 530
    invoke-static {v0, v2, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 531
    .line 532
    .line 533
    :cond_6
    :goto_1
    return-void

    .line 534
    nop

    .line 535
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->c:Lcom/mycompany/app/editor/core/TextureRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_8

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->f:[I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->h:Landroid/graphics/Bitmap;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    goto/16 :goto_2

    .line 20
    .line 21
    :cond_1
    iget v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->m:I

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    goto/16 :goto_2

    .line 26
    .line 27
    :cond_2
    iget v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->i:I

    .line 28
    .line 29
    if-eqz v0, :cond_8

    .line 30
    .line 31
    iget v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->j:I

    .line 32
    .line 33
    if-nez v0, :cond_3

    .line 34
    .line 35
    goto/16 :goto_2

    .line 36
    .line 37
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->c:Lcom/mycompany/app/editor/core/TextureRenderer;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    const v1, 0x8b31

    .line 43
    .line 44
    .line 45
    const-string v2, "attribute vec4 a_position;\nattribute vec2 a_texcoord;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_Position = a_position;\n  v_texcoord = a_texcoord;\n}\n"

    .line 46
    .line 47
    invoke-static {v1, v2}, Lcom/mycompany/app/editor/core/GLToolbox;->b(ILjava/lang/String;)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v2, 0x0

    .line 52
    if-nez v1, :cond_4

    .line 53
    .line 54
    :goto_0
    move v4, v2

    .line 55
    goto :goto_1

    .line 56
    :cond_4
    const v3, 0x8b30

    .line 57
    .line 58
    .line 59
    const-string v4, "precision mediump float;\nuniform sampler2D tex_sampler;\nvarying vec2 v_texcoord;\nvoid main() {\n  gl_FragColor = texture2D(tex_sampler, v_texcoord);\n}\n"

    .line 60
    .line 61
    invoke-static {v3, v4}, Lcom/mycompany/app/editor/core/GLToolbox;->b(ILjava/lang/String;)I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-nez v3, :cond_5

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    .line 69
    .line 70
    .line 71
    move-result v4

    .line 72
    if-nez v4, :cond_6

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_6
    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 76
    .line 77
    .line 78
    const-string v1, "glAttachShader"

    .line 79
    .line 80
    invoke-static {v1}, Lcom/mycompany/app/editor/core/GLToolbox;->a(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-static {v4, v3}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 84
    .line 85
    .line 86
    invoke-static {v1}, Lcom/mycompany/app/editor/core/GLToolbox;->a(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-static {v4}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 90
    .line 91
    .line 92
    const/4 v1, 0x1

    .line 93
    new-array v3, v1, [I

    .line 94
    .line 95
    const v5, 0x8b82

    .line 96
    .line 97
    .line 98
    invoke-static {v4, v5, v3, v2}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 99
    .line 100
    .line 101
    aget v3, v3, v2

    .line 102
    .line 103
    if-ne v3, v1, :cond_7

    .line 104
    .line 105
    :goto_1
    iput v4, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->a:I

    .line 106
    .line 107
    const-string v1, "tex_sampler"

    .line 108
    .line 109
    invoke-static {v4, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iput v1, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->b:I

    .line 114
    .line 115
    iget v1, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->a:I

    .line 116
    .line 117
    const-string v3, "a_texcoord"

    .line 118
    .line 119
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    iput v1, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->c:I

    .line 124
    .line 125
    iget v1, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->a:I

    .line 126
    .line 127
    const-string v3, "a_position"

    .line 128
    .line 129
    invoke-static {v1, v3}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    iput v1, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->d:I

    .line 134
    .line 135
    const/16 v1, 0x20

    .line 136
    .line 137
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 138
    .line 139
    .line 140
    move-result-object v3

    .line 141
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    iput-object v3, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->e:Ljava/nio/FloatBuffer;

    .line 154
    .line 155
    sget-object v4, Lcom/mycompany/app/editor/core/TextureRenderer;->k:[F

    .line 156
    .line 157
    invoke-virtual {v3, v4}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    invoke-virtual {v3, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 162
    .line 163
    .line 164
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    iput-object v1, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->f:Ljava/nio/FloatBuffer;

    .line 181
    .line 182
    sget-object v0, Lcom/mycompany/app/editor/core/TextureRenderer;->l:[F

    .line 183
    .line 184
    invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {v0, v2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->c:Lcom/mycompany/app/editor/core/TextureRenderer;

    .line 192
    .line 193
    iget v1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->i:I

    .line 194
    .line 195
    iget v3, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->j:I

    .line 196
    .line 197
    iput v1, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->i:I

    .line 198
    .line 199
    iput v3, v0, Lcom/mycompany/app/editor/core/TextureRenderer;->j:I

    .line 200
    .line 201
    invoke-virtual {v0}, Lcom/mycompany/app/editor/core/TextureRenderer;->a()V

    .line 202
    .line 203
    .line 204
    const/4 v0, 0x2

    .line 205
    iget-object v1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->f:[I

    .line 206
    .line 207
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->f:[I

    .line 211
    .line 212
    aget v0, v0, v2

    .line 213
    .line 214
    const/16 v1, 0xde1

    .line 215
    .line 216
    invoke-static {v1, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 217
    .line 218
    .line 219
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->h:Landroid/graphics/Bitmap;

    .line 220
    .line 221
    invoke-static {v1, v2, v0, v2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 222
    .line 223
    .line 224
    const/16 v0, 0x2800

    .line 225
    .line 226
    const/16 v2, 0x2601

    .line 227
    .line 228
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 229
    .line 230
    .line 231
    const/16 v0, 0x2801

    .line 232
    .line 233
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 234
    .line 235
    .line 236
    const/16 v0, 0x2802

    .line 237
    .line 238
    const v2, 0x812f

    .line 239
    .line 240
    .line 241
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 242
    .line 243
    .line 244
    const/16 v0, 0x2803

    .line 245
    .line 246
    invoke-static {v1, v0, v2}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :cond_7
    invoke-static {v4}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    invoke-static {v4}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 255
    .line 256
    .line 257
    new-instance v1, Ljava/lang/RuntimeException;

    .line 258
    .line 259
    const-string v2, "Could not link program: "

    .line 260
    .line 261
    invoke-static {v2, v0}, Landroid/support/v4/media/a;->C(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object v0

    .line 265
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    throw v1

    .line 269
    :cond_8
    :goto_2
    return-void
.end method

.method public final onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->c:Lcom/mycompany/app/editor/core/TextureRenderer;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->f:[I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :try_start_0
    iget-boolean v1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->g:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->g:Z

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/mycompany/app/editor/core/PhotoEffectView;->b()V

    .line 18
    .line 19
    .line 20
    :cond_1
    invoke-virtual {p0}, Lcom/mycompany/app/editor/core/PhotoEffectView;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    :catch_0
    iget-object v1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->n:Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;

    .line 24
    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 33
    .line 34
    .line 35
    move-result v7

    .line 36
    mul-int v3, v6, v7

    .line 37
    .line 38
    new-array v11, v3, [I

    .line 39
    .line 40
    new-array v12, v3, [I

    .line 41
    .line 42
    invoke-static {v11}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    .line 43
    .line 44
    .line 45
    move-result-object v10

    .line 46
    invoke-virtual {v10, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 47
    .line 48
    .line 49
    const/16 v8, 0x1908

    .line 50
    .line 51
    const/16 v9, 0x1401

    .line 52
    .line 53
    const/4 v4, 0x0

    .line 54
    const/4 v5, 0x0

    .line 55
    move-object v3, p1

    .line 56
    invoke-interface/range {v3 .. v10}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 57
    .line 58
    .line 59
    move p1, v0

    .line 60
    :goto_0
    if-ge p1, v7, :cond_3

    .line 61
    .line 62
    mul-int v3, p1, v6

    .line 63
    .line 64
    sub-int v4, v7, p1

    .line 65
    .line 66
    add-int/lit8 v4, v4, -0x1

    .line 67
    .line 68
    mul-int/2addr v4, v6

    .line 69
    move v5, v0

    .line 70
    :goto_1
    if-ge v5, v6, :cond_2

    .line 71
    .line 72
    add-int v8, v3, v5

    .line 73
    .line 74
    aget v8, v11, v8

    .line 75
    .line 76
    shl-int/lit8 v9, v8, 0x10

    .line 77
    .line 78
    const/high16 v10, 0xff0000

    .line 79
    .line 80
    and-int/2addr v9, v10

    .line 81
    const v10, -0xff0100

    .line 82
    .line 83
    .line 84
    and-int/2addr v10, v8

    .line 85
    shr-int/lit8 v8, v8, 0x10

    .line 86
    .line 87
    and-int/lit16 v8, v8, 0xff

    .line 88
    .line 89
    add-int v13, v4, v5

    .line 90
    .line 91
    or-int/2addr v9, v10

    .line 92
    or-int/2addr v8, v9

    .line 93
    aput v8, v12, v13

    .line 94
    .line 95
    add-int/lit8 v5, v5, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 102
    .line 103
    invoke-static {v12, v6, v7, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 104
    .line 105
    .line 106
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/opengl/GLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 107
    goto :goto_2

    .line 108
    :catch_1
    move-object p1, v2

    .line 109
    :goto_2
    check-cast v1, Lcom/mycompany/app/editor/core/PhotoEditorView$1$1;

    .line 110
    .line 111
    invoke-virtual {v1, p1}, Lcom/mycompany/app/editor/core/PhotoEditorView$1$1;->a(Landroid/graphics/Bitmap;)V

    .line 112
    .line 113
    .line 114
    iput-object v2, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->n:Lcom/mycompany/app/editor/core/PhotoEffectView$PhotoSaveListener;

    .line 115
    .line 116
    :cond_4
    :goto_3
    return-void
.end method

.method public final onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->c:Lcom/mycompany/app/editor/core/TextureRenderer;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iput p2, p1, Lcom/mycompany/app/editor/core/TextureRenderer;->g:I

    .line 6
    .line 7
    iput p3, p1, Lcom/mycompany/app/editor/core/TextureRenderer;->h:I

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/mycompany/app/editor/core/TextureRenderer;->a()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    return-void
.end method

.method public setEffectType(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->m:I

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput p1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->m:I

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->h:Landroid/graphics/Bitmap;

    .line 9
    .line 10
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->i:I

    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->h:Landroid/graphics/Bitmap;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->j:I

    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    iput-boolean p1, p0, Lcom/mycompany/app/editor/core/PhotoEffectView;->g:Z

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
