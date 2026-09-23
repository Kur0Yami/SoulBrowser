.class public Lcom/mycompany/app/dialog/DialogEditorText;
.super Lcom/mycompany/app/view/MyDialogBottom;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;
    }
.end annotation


# static fields
.field public static final m0:[I


# instance fields
.field public a0:Lcom/mycompany/app/editor/EditorActivity;

.field public b0:Landroid/content/Context;

.field public c0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

.field public d0:Lcom/mycompany/app/view/MyKeypadDialog;

.field public e0:Landroid/widget/FrameLayout;

.field public f0:Lcom/mycompany/app/view/MyEditPure;

.field public g0:[Lcom/mycompany/app/view/MyButtonCheck;

.field public h0:Lcom/mycompany/app/view/MyPaletteView;

.field public i0:Lcom/mycompany/app/view/MyLineText;

.field public j0:Ljava/lang/String;

.field public k0:I

.field public l0:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    sget v0, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_black_24:I

    .line 2
    .line 3
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_check_white_24:I

    .line 4
    .line 5
    move v2, v1

    .line 6
    move v3, v0

    .line 7
    move v4, v0

    .line 8
    move v5, v1

    .line 9
    move v6, v1

    .line 10
    move v7, v1

    .line 11
    filled-new-array/range {v0 .. v7}, [I

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/mycompany/app/dialog/DialogEditorText;->m0:[I

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(Lcom/mycompany/app/editor/EditorActivity;Ljava/lang/String;ILcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyDialogBottom;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->w:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorText;->a0:Lcom/mycompany/app/editor/EditorActivity;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogEditorText;->b0:Landroid/content/Context;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/mycompany/app/dialog/DialogEditorText;->c0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 16
    .line 17
    iput-object p2, p0, Lcom/mycompany/app/dialog/DialogEditorText;->j0:Ljava/lang/String;

    .line 18
    .line 19
    if-nez p3, :cond_0

    .line 20
    .line 21
    sget p1, Lcom/mycompany/app/pref/PrefRead;->U:I

    .line 22
    .line 23
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditorText;->k0:I

    .line 24
    .line 25
    sget p1, Lcom/mycompany/app/pref/PrefRead;->V:F

    .line 26
    .line 27
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditorText;->l0:F

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput p3, p0, Lcom/mycompany/app/dialog/DialogEditorText;->k0:I

    .line 31
    .line 32
    const/high16 p1, -0x40800000    # -1.0f

    .line 33
    .line 34
    iput p1, p0, Lcom/mycompany/app/dialog/DialogEditorText;->l0:F

    .line 35
    .line 36
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    new-instance p2, Lcom/mycompany/app/dialog/DialogEditorText$1;

    .line 42
    .line 43
    invoke-direct {p2, p0}, Lcom/mycompany/app/dialog/DialogEditorText$1;-><init>(Lcom/mycompany/app/dialog/DialogEditorText;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static B(Lcom/mycompany/app/dialog/DialogEditorText;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorText;->b0:Landroid/content/Context;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_0

    .line 8
    .line 9
    :cond_0
    sget v2, Lnet/kaki87/soul2/testing/R$id;->item_color_view:I

    .line 10
    .line 11
    new-instance v3, Lcom/mycompany/app/view/MyKeypadDialog;

    .line 12
    .line 13
    invoke-direct {v3, v1}, Lcom/mycompany/app/view/MyDialogRelative;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    const/high16 v4, 0x43160000    # 150.0f

    .line 17
    .line 18
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    float-to-int v4, v4

    .line 23
    iput v4, v3, Lcom/mycompany/app/view/MyKeypadDialog;->r:I

    .line 24
    .line 25
    new-instance v4, Landroid/widget/FrameLayout;

    .line 26
    .line 27
    invoke-direct {v4, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    sget v5, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 31
    .line 32
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 33
    .line 34
    sget v7, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 35
    .line 36
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 37
    .line 38
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 39
    .line 40
    .line 41
    const/4 v5, -0x1

    .line 42
    const/4 v6, 0x2

    .line 43
    invoke-static {v5, v5, v6, v2}, Landroidx/work/impl/workers/a;->h(IIII)Landroid/widget/RelativeLayout$LayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object v7

    .line 47
    invoke-virtual {v3, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    new-instance v7, Lcom/mycompany/app/view/MyEditPure;

    .line 51
    .line 52
    invoke-direct {v7, v1}, Lcom/mycompany/app/view/MyEditPure;-><init>(Landroid/content/Context;)V

    .line 53
    .line 54
    .line 55
    sget v8, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 56
    .line 57
    invoke-virtual {v7, v8, v8, v8, v8}, Landroid/view/View;->setPadding(IIII)V

    .line 58
    .line 59
    .line 60
    const/4 v8, 0x3

    .line 61
    invoke-virtual {v7, v8}, Landroid/view/View;->setTextDirection(I)V

    .line 62
    .line 63
    .line 64
    const/high16 v9, 0x41c00000    # 24.0f

    .line 65
    .line 66
    const/4 v10, 0x1

    .line 67
    invoke-virtual {v7, v10, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 71
    .line 72
    .line 73
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 74
    .line 75
    const/16 v11, 0x1d

    .line 76
    .line 77
    if-lt v9, v11, :cond_1

    .line 78
    .line 79
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->edit_cursor:I

    .line 80
    .line 81
    invoke-virtual {v7, v9}, Landroid/widget/EditText;->setTextCursorDrawable(I)V

    .line 82
    .line 83
    .line 84
    :cond_1
    const/high16 v9, 0x10000000

    .line 85
    .line 86
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 87
    .line 88
    .line 89
    sget v9, Lnet/kaki87/soul2/testing/R$drawable;->text_border:I

    .line 90
    .line 91
    invoke-virtual {v7, v9}, Landroidx/appcompat/widget/AppCompatEditText;->setBackgroundResource(I)V

    .line 92
    .line 93
    .line 94
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 95
    .line 96
    const/4 v11, -0x2

    .line 97
    invoke-direct {v9, v11, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 98
    .line 99
    .line 100
    const/16 v12, 0x11

    .line 101
    .line 102
    iput v12, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 103
    .line 104
    invoke-virtual {v4, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    .line 106
    .line 107
    new-instance v9, Landroid/widget/LinearLayout;

    .line 108
    .line 109
    invoke-direct {v9, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v9, v2}, Landroid/view/View;->setId(I)V

    .line 113
    .line 114
    .line 115
    sget v2, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 116
    .line 117
    sget v13, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 118
    .line 119
    const/4 v14, 0x0

    .line 120
    invoke-virtual {v9, v14, v2, v14, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {v9, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 124
    .line 125
    .line 126
    const/high16 v2, -0x5f000000

    .line 127
    .line 128
    invoke-virtual {v9, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 129
    .line 130
    .line 131
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 132
    .line 133
    invoke-direct {v2, v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 134
    .line 135
    .line 136
    const/16 v13, 0xc

    .line 137
    .line 138
    invoke-virtual {v2, v13}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 139
    .line 140
    .line 141
    sget v15, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 142
    .line 143
    iput v15, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 144
    .line 145
    invoke-virtual {v3, v9, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    .line 147
    .line 148
    new-instance v2, Landroid/widget/LinearLayout;

    .line 149
    .line 150
    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    sget v15, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 154
    .line 155
    invoke-virtual {v2, v15, v14, v15, v14}, Landroid/view/View;->setPadding(IIII)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v9, v2, v5, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 165
    .line 166
    .line 167
    new-instance v15, Lcom/mycompany/app/view/MyButtonCheck;

    .line 168
    .line 169
    invoke-direct {v15, v1}, Lcom/mycompany/app/view/MyButtonCheck;-><init>(Landroid/content/Context;)V

    .line 170
    .line 171
    .line 172
    move/from16 v16, v6

    .line 173
    .line 174
    sget v6, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 175
    .line 176
    int-to-float v6, v6

    .line 177
    invoke-virtual {v15, v6}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 178
    .line 179
    .line 180
    sget v6, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 181
    .line 182
    invoke-static {v2, v15, v6, v6, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    move/from16 v17, v8

    .line 187
    .line 188
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 189
    .line 190
    invoke-direct {v8, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 191
    .line 192
    .line 193
    const/high16 v13, 0x3f800000    # 1.0f

    .line 194
    .line 195
    iput v13, v8, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 196
    .line 197
    invoke-static {v2, v6, v8, v1}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 202
    .line 203
    int-to-float v8, v8

    .line 204
    invoke-virtual {v6, v8}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 205
    .line 206
    .line 207
    sget v8, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 208
    .line 209
    invoke-static {v2, v6, v8, v8, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object v8

    .line 213
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 214
    .line 215
    invoke-direct {v5, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 216
    .line 217
    .line 218
    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 219
    .line 220
    invoke-static {v2, v8, v5, v1}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 221
    .line 222
    .line 223
    move-result-object v5

    .line 224
    sget v8, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 225
    .line 226
    int-to-float v8, v8

    .line 227
    invoke-virtual {v5, v8}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 228
    .line 229
    .line 230
    sget v8, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 231
    .line 232
    invoke-static {v2, v5, v8, v8, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 237
    .line 238
    invoke-direct {v12, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 239
    .line 240
    .line 241
    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 242
    .line 243
    invoke-static {v2, v8, v12, v1}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 244
    .line 245
    .line 246
    move-result-object v8

    .line 247
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 248
    .line 249
    int-to-float v12, v12

    .line 250
    invoke-virtual {v8, v12}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 251
    .line 252
    .line 253
    sget v12, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 254
    .line 255
    invoke-static {v2, v8, v12, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 256
    .line 257
    .line 258
    move-result-object v12

    .line 259
    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    .line 260
    .line 261
    invoke-direct {v10, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 262
    .line 263
    .line 264
    iput v13, v10, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 265
    .line 266
    invoke-static {v2, v12, v10, v1}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 267
    .line 268
    .line 269
    move-result-object v10

    .line 270
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 271
    .line 272
    int-to-float v12, v12

    .line 273
    invoke-virtual {v10, v12}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 274
    .line 275
    .line 276
    sget v12, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 277
    .line 278
    invoke-static {v2, v10, v12, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 279
    .line 280
    .line 281
    move-result-object v12

    .line 282
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    .line 283
    .line 284
    invoke-direct {v11, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 285
    .line 286
    .line 287
    iput v13, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 288
    .line 289
    invoke-static {v2, v12, v11, v1}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 290
    .line 291
    .line 292
    move-result-object v11

    .line 293
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 294
    .line 295
    int-to-float v12, v12

    .line 296
    invoke-virtual {v11, v12}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 297
    .line 298
    .line 299
    sget v12, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 300
    .line 301
    invoke-static {v2, v11, v12, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 302
    .line 303
    .line 304
    move-result-object v12

    .line 305
    move-object/from16 v20, v5

    .line 306
    .line 307
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 308
    .line 309
    invoke-direct {v5, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 310
    .line 311
    .line 312
    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 313
    .line 314
    invoke-static {v2, v12, v5, v1}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 315
    .line 316
    .line 317
    move-result-object v5

    .line 318
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 319
    .line 320
    int-to-float v12, v12

    .line 321
    invoke-virtual {v5, v12}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 322
    .line 323
    .line 324
    sget v12, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 325
    .line 326
    invoke-static {v2, v5, v12, v12, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->c(Landroid/widget/LinearLayout;Lcom/mycompany/app/view/MyButtonCheck;IILandroid/content/Context;)Landroid/view/View;

    .line 327
    .line 328
    .line 329
    move-result-object v12

    .line 330
    move-object/from16 v21, v5

    .line 331
    .line 332
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 333
    .line 334
    invoke-direct {v5, v14, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 335
    .line 336
    .line 337
    iput v13, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 338
    .line 339
    invoke-static {v2, v12, v5, v1}, Lcom/mycompany/app/dialog/a;->f(Landroid/widget/LinearLayout;Landroid/view/View;Landroid/widget/LinearLayout$LayoutParams;Landroid/content/Context;)Lcom/mycompany/app/view/MyButtonCheck;

    .line 340
    .line 341
    .line 342
    move-result-object v5

    .line 343
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 344
    .line 345
    int-to-float v12, v12

    .line 346
    invoke-virtual {v5, v12}, Lcom/mycompany/app/view/MyButtonCheck;->setBgNorRadius(F)V

    .line 347
    .line 348
    .line 349
    sget v12, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 350
    .line 351
    invoke-virtual {v2, v5, v12, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 352
    .line 353
    .line 354
    new-instance v2, Lcom/mycompany/app/view/MyPaletteView;

    .line 355
    .line 356
    invoke-direct {v2, v1}, Lcom/mycompany/app/view/MyPaletteView;-><init>(Landroid/content/Context;)V

    .line 357
    .line 358
    .line 359
    new-instance v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 360
    .line 361
    const/4 v13, -0x2

    .line 362
    invoke-direct {v12, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 363
    .line 364
    .line 365
    const/4 v13, 0x1

    .line 366
    iput v13, v12, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 367
    .line 368
    move/from16 v19, v14

    .line 369
    .line 370
    sget v14, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 371
    .line 372
    iput v14, v12, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 373
    .line 374
    invoke-virtual {v9, v2, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    .line 376
    .line 377
    new-instance v9, Lcom/mycompany/app/view/MyLineText;

    .line 378
    .line 379
    invoke-direct {v9, v1}, Lcom/mycompany/app/view/MyLineText;-><init>(Landroid/content/Context;)V

    .line 380
    .line 381
    .line 382
    const/16 v1, 0x11

    .line 383
    .line 384
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 385
    .line 386
    .line 387
    const/high16 v1, 0x41800000    # 16.0f

    .line 388
    .line 389
    invoke-virtual {v9, v13, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 390
    .line 391
    .line 392
    const/4 v1, -0x1

    .line 393
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 394
    .line 395
    .line 396
    sget v12, Lnet/kaki87/soul2/testing/R$string;->apply:I

    .line 397
    .line 398
    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(I)V

    .line 399
    .line 400
    .line 401
    sget v12, Lnet/kaki87/soul2/testing/R$drawable;->selector_view:I

    .line 402
    .line 403
    invoke-virtual {v9, v12}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 404
    .line 405
    .line 406
    sget v12, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 407
    .line 408
    invoke-virtual {v9, v12}, Lcom/mycompany/app/view/MyLineText;->setLinePad(I)V

    .line 409
    .line 410
    .line 411
    invoke-virtual {v9, v13}, Lcom/mycompany/app/view/MyLineText;->setLineUp(Z)V

    .line 412
    .line 413
    .line 414
    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    .line 415
    .line 416
    sget v13, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 417
    .line 418
    invoke-direct {v12, v1, v13}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 419
    .line 420
    .line 421
    const/16 v1, 0xc

    .line 422
    .line 423
    invoke-virtual {v12, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v3, v9, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 427
    .line 428
    .line 429
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogEditorText;->d0:Lcom/mycompany/app/view/MyKeypadDialog;

    .line 430
    .line 431
    iput-object v4, v0, Lcom/mycompany/app/dialog/DialogEditorText;->e0:Landroid/widget/FrameLayout;

    .line 432
    .line 433
    iput-object v7, v0, Lcom/mycompany/app/dialog/DialogEditorText;->f0:Lcom/mycompany/app/view/MyEditPure;

    .line 434
    .line 435
    iput-object v2, v0, Lcom/mycompany/app/dialog/DialogEditorText;->h0:Lcom/mycompany/app/view/MyPaletteView;

    .line 436
    .line 437
    iput-object v9, v0, Lcom/mycompany/app/dialog/DialogEditorText;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 438
    .line 439
    sget-object v1, Lcom/mycompany/app/main/MainConst;->o:[I

    .line 440
    .line 441
    array-length v1, v1

    .line 442
    new-array v1, v1, [Lcom/mycompany/app/view/MyButtonCheck;

    .line 443
    .line 444
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogEditorText;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 445
    .line 446
    aput-object v15, v1, v19

    .line 447
    .line 448
    const/16 v18, 0x1

    .line 449
    .line 450
    aput-object v6, v1, v18

    .line 451
    .line 452
    aput-object v20, v1, v16

    .line 453
    .line 454
    aput-object v8, v1, v17

    .line 455
    .line 456
    const/4 v2, 0x4

    .line 457
    aput-object v10, v1, v2

    .line 458
    .line 459
    const/4 v2, 0x5

    .line 460
    aput-object v11, v1, v2

    .line 461
    .line 462
    const/4 v2, 0x6

    .line 463
    aput-object v21, v1, v2

    .line 464
    .line 465
    const/4 v2, 0x7

    .line 466
    aput-object v5, v1, v2

    .line 467
    .line 468
    iget-object v1, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 469
    .line 470
    if-nez v1, :cond_2

    .line 471
    .line 472
    :goto_0
    return-void

    .line 473
    :cond_2
    new-instance v2, Lcom/mycompany/app/dialog/DialogEditorText$2;

    .line 474
    .line 475
    invoke-direct {v2, v0}, Lcom/mycompany/app/dialog/DialogEditorText$2;-><init>(Lcom/mycompany/app/dialog/DialogEditorText;)V

    .line 476
    .line 477
    .line 478
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 479
    .line 480
    .line 481
    return-void
.end method


# virtual methods
.method public final C()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorText;->f0:Lcom/mycompany/app/view/MyEditPure;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorText;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_2

    .line 10
    :cond_0
    iget v1, p0, Lcom/mycompany/app/dialog/DialogEditorText;->k0:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/mycompany/app/main/MainConst;->o:[I

    .line 16
    .line 17
    array-length v0, v0

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge v2, v0, :cond_2

    .line 21
    .line 22
    iget v3, p0, Lcom/mycompany/app/dialog/DialogEditorText;->k0:I

    .line 23
    .line 24
    sget-object v4, Lcom/mycompany/app/main/MainConst;->o:[I

    .line 25
    .line 26
    aget v4, v4, v2

    .line 27
    .line 28
    const/4 v5, 0x1

    .line 29
    if-ne v3, v4, :cond_1

    .line 30
    .line 31
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogEditorText;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 32
    .line 33
    aget-object v3, v3, v2

    .line 34
    .line 35
    invoke-virtual {v3, v5, v5}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 36
    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogEditorText;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 40
    .line 41
    aget-object v3, v3, v2

    .line 42
    .line 43
    invoke-virtual {v3, v1, v5}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 44
    .line 45
    .line 46
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    :goto_2
    return-void
.end method

.method public final dismiss()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyDialogBottom;->c:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorText;->b0:Landroid/content/Context;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/dialog/DialogEditorText;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    if-eqz v1, :cond_3

    .line 13
    .line 14
    array-length v1, v1

    .line 15
    :goto_0
    if-ge v0, v1, :cond_2

    .line 16
    .line 17
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogEditorText;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 18
    .line 19
    aget-object v3, v3, v0

    .line 20
    .line 21
    if-eqz v3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v3}, Lcom/mycompany/app/view/MyButtonCheck;->l()V

    .line 24
    .line 25
    .line 26
    iget-object v3, p0, Lcom/mycompany/app/dialog/DialogEditorText;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 27
    .line 28
    aput-object v2, v3, v0

    .line 29
    .line 30
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorText;->g0:[Lcom/mycompany/app/view/MyButtonCheck;

    .line 34
    .line 35
    :cond_3
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorText;->d0:Lcom/mycompany/app/view/MyKeypadDialog;

    .line 36
    .line 37
    if-eqz v0, :cond_4

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyKeypadDialog;->c()V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorText;->d0:Lcom/mycompany/app/view/MyKeypadDialog;

    .line 43
    .line 44
    :cond_4
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorText;->h0:Lcom/mycompany/app/view/MyPaletteView;

    .line 45
    .line 46
    if-eqz v0, :cond_5

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyPaletteView;->a()V

    .line 49
    .line 50
    .line 51
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorText;->h0:Lcom/mycompany/app/view/MyPaletteView;

    .line 52
    .line 53
    :cond_5
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogEditorText;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 54
    .line 55
    if-eqz v0, :cond_6

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyLineText;->u()V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorText;->i0:Lcom/mycompany/app/view/MyLineText;

    .line 61
    .line 62
    :cond_6
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorText;->a0:Lcom/mycompany/app/editor/EditorActivity;

    .line 63
    .line 64
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorText;->b0:Landroid/content/Context;

    .line 65
    .line 66
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorText;->c0:Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;

    .line 67
    .line 68
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorText;->j0:Ljava/lang/String;

    .line 69
    .line 70
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorText;->e0:Landroid/widget/FrameLayout;

    .line 71
    .line 72
    iput-object v2, p0, Lcom/mycompany/app/dialog/DialogEditorText;->f0:Lcom/mycompany/app/view/MyEditPure;

    .line 73
    .line 74
    invoke-super {p0}, Lcom/mycompany/app/view/MyDialogBottom;->dismiss()V

    .line 75
    .line 76
    .line 77
    return-void
.end method
