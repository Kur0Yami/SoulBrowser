.class Lcom/mycompany/app/editor/core/PhotoEditor$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Lcom/mycompany/app/editor/core/PhotoEditor;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/editor/core/PhotoEditor;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/editor/core/PhotoEditor$2;->h:Lcom/mycompany/app/editor/core/PhotoEditor;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/editor/core/PhotoEditor$2;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/editor/core/PhotoEditor$2;->f:I

    .line 9
    .line 10
    iput p4, p0, Lcom/mycompany/app/editor/core/PhotoEditor$2;->g:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/core/PhotoEditor$2;->h:Lcom/mycompany/app/editor/core/PhotoEditor;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/editor/core/PhotoEditor;->a:Landroid/content/Context;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    :goto_0
    return-void

    .line 13
    :cond_1
    new-instance v2, Landroid/widget/FrameLayout;

    .line 14
    .line 15
    invoke-direct {v2, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance v3, Landroid/widget/FrameLayout;

    .line 19
    .line 20
    invoke-direct {v3, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    sget v4, Lnet/kaki87/soul2/testing/R$drawable;->text_border:I

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 26
    .line 27
    .line 28
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 29
    .line 30
    const/4 v5, -0x2

    .line 31
    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 32
    .line 33
    .line 34
    const/high16 v6, 0x41a00000    # 20.0f

    .line 35
    .line 36
    invoke-static {v1, v6}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 37
    .line 38
    .line 39
    move-result v6

    .line 40
    float-to-int v6, v6

    .line 41
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 42
    .line 43
    .line 44
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 45
    .line 46
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 47
    .line 48
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 49
    .line 50
    .line 51
    sget v6, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 52
    .line 53
    iput v6, v4, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 54
    .line 55
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    .line 57
    .line 58
    new-instance v4, Landroidx/appcompat/widget/AppCompatTextView;

    .line 59
    .line 60
    const/4 v6, 0x0

    .line 61
    invoke-direct {v4, v1, v6}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    .line 63
    .line 64
    const/high16 v7, 0x41c00000    # 24.0f

    .line 65
    .line 66
    const/4 v8, 0x1

    .line 67
    invoke-virtual {v4, v8, v7}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 68
    .line 69
    .line 70
    const/4 v7, -0x1

    .line 71
    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 72
    .line 73
    .line 74
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 75
    .line 76
    invoke-direct {v9, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 77
    .line 78
    .line 79
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 80
    .line 81
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 82
    .line 83
    .line 84
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 85
    .line 86
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 87
    .line 88
    invoke-virtual {v9, v10}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 89
    .line 90
    .line 91
    sget v10, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 92
    .line 93
    iput v10, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 94
    .line 95
    invoke-virtual {v3, v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    .line 97
    .line 98
    new-instance v9, Landroid/widget/ImageView;

    .line 99
    .line 100
    invoke-direct {v9, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 101
    .line 102
    .line 103
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 104
    .line 105
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 106
    .line 107
    .line 108
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->outline_cancel_white_24:I

    .line 109
    .line 110
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 111
    .line 112
    .line 113
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->selector_circle_close:I

    .line 114
    .line 115
    invoke-virtual {v9, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 116
    .line 117
    .line 118
    sget v1, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 119
    .line 120
    invoke-virtual {v2, v9, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 121
    .line 122
    .line 123
    iget v1, p0, Lcom/mycompany/app/editor/core/PhotoEditor$2;->g:I

    .line 124
    .line 125
    if-ne v1, v8, :cond_2

    .line 126
    .line 127
    invoke-virtual {v4, v8, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 128
    .line 129
    .line 130
    const/16 v10, 0x11

    .line 131
    .line 132
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 133
    .line 134
    .line 135
    const/high16 v10, 0x42100000    # 36.0f

    .line 136
    .line 137
    invoke-virtual {v4, v8, v10}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 138
    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    iget v8, p0, Lcom/mycompany/app/editor/core/PhotoEditor$2;->f:I

    .line 142
    .line 143
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 144
    .line 145
    .line 146
    :goto_1
    iget-object v8, p0, Lcom/mycompany/app/editor/core/PhotoEditor$2;->c:Ljava/lang/String;

    .line 147
    .line 148
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    new-instance v8, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;

    .line 152
    .line 153
    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    .line 154
    .line 155
    .line 156
    iput-object v2, v8, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;->a:Landroid/widget/FrameLayout;

    .line 157
    .line 158
    iput-object v3, v8, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;->b:Landroid/widget/FrameLayout;

    .line 159
    .line 160
    iput-object v4, v8, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;->c:Landroidx/appcompat/widget/AppCompatTextView;

    .line 161
    .line 162
    iput-object v9, v8, Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;->d:Landroid/widget/ImageView;

    .line 163
    .line 164
    invoke-virtual {v2, v8}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    new-instance v3, Lcom/mycompany/app/editor/core/PhotoTouchListener;

    .line 168
    .line 169
    iget-object v4, v0, Lcom/mycompany/app/editor/core/PhotoEditor;->a:Landroid/content/Context;

    .line 170
    .line 171
    iget-object v10, v0, Lcom/mycompany/app/editor/core/PhotoEditor;->d:Landroid/widget/ImageView;

    .line 172
    .line 173
    new-instance v11, Lcom/mycompany/app/editor/core/PhotoEditor$3;

    .line 174
    .line 175
    invoke-direct {v11, v0, v1}, Lcom/mycompany/app/editor/core/PhotoEditor$3;-><init>(Lcom/mycompany/app/editor/core/PhotoEditor;I)V

    .line 176
    .line 177
    .line 178
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 179
    .line 180
    .line 181
    if-nez v4, :cond_3

    .line 182
    .line 183
    goto :goto_2

    .line 184
    :cond_3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 185
    .line 186
    invoke-static {v4, v1}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 187
    .line 188
    .line 189
    move-result v1

    .line 190
    iput v1, v3, Lcom/mycompany/app/editor/core/PhotoTouchListener;->c:F

    .line 191
    .line 192
    iput v7, v3, Lcom/mycompany/app/editor/core/PhotoTouchListener;->m:I

    .line 193
    .line 194
    iput-object v10, v3, Lcom/mycompany/app/editor/core/PhotoTouchListener;->i:Landroid/widget/ImageView;

    .line 195
    .line 196
    iput-object v8, v3, Lcom/mycompany/app/editor/core/PhotoTouchListener;->j:Lcom/mycompany/app/editor/core/PhotoTouchListener$ObjHolder;

    .line 197
    .line 198
    iput-object v11, v3, Lcom/mycompany/app/editor/core/PhotoTouchListener;->h:Lcom/mycompany/app/editor/core/PhotoTouchListener$PhotoObjectListener;

    .line 199
    .line 200
    new-instance v1, Lcom/mycompany/app/editor/core/ScaleGestureDetector;

    .line 201
    .line 202
    new-instance v7, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;

    .line 203
    .line 204
    invoke-direct {v7, v3}, Lcom/mycompany/app/editor/core/PhotoTouchListener$1;-><init>(Lcom/mycompany/app/editor/core/PhotoTouchListener;)V

    .line 205
    .line 206
    .line 207
    invoke-direct {v1, v7}, Lcom/mycompany/app/editor/core/ScaleGestureDetector;-><init>(Lcom/mycompany/app/editor/core/ScaleGestureDetector$OnScaleGestureListener;)V

    .line 208
    .line 209
    .line 210
    iput-object v1, v3, Lcom/mycompany/app/editor/core/PhotoTouchListener;->f:Lcom/mycompany/app/editor/core/ScaleGestureDetector;

    .line 211
    .line 212
    new-instance v1, Landroid/view/GestureDetector;

    .line 213
    .line 214
    new-instance v7, Lcom/mycompany/app/editor/core/PhotoTouchListener$2;

    .line 215
    .line 216
    invoke-direct {v7, v3}, Lcom/mycompany/app/editor/core/PhotoTouchListener$2;-><init>(Lcom/mycompany/app/editor/core/PhotoTouchListener;)V

    .line 217
    .line 218
    .line 219
    invoke-direct {v1, v4, v7}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 220
    .line 221
    .line 222
    iput-object v1, v3, Lcom/mycompany/app/editor/core/PhotoTouchListener;->g:Landroid/view/GestureDetector;

    .line 223
    .line 224
    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v9, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    new-instance v1, Lcom/mycompany/app/editor/core/PhotoEditor$4;

    .line 231
    .line 232
    invoke-direct {v1, v0}, Lcom/mycompany/app/editor/core/PhotoEditor$4;-><init>(Lcom/mycompany/app/editor/core/PhotoEditor;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v9, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0, v6}, Lcom/mycompany/app/editor/core/PhotoEditor;->b(Landroid/widget/FrameLayout;)V

    .line 239
    .line 240
    .line 241
    const/16 v1, 0xd

    .line 242
    .line 243
    invoke-static {v5, v5, v1}, Landroidx/work/impl/workers/a;->g(III)Landroid/widget/RelativeLayout$LayoutParams;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    iget-object v3, v0, Lcom/mycompany/app/editor/core/PhotoEditor;->c:Lcom/mycompany/app/editor/core/PhotoEditorView;

    .line 248
    .line 249
    invoke-virtual {v3, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    .line 251
    .line 252
    iget-object v1, v0, Lcom/mycompany/app/editor/core/PhotoEditor;->g:Ljava/util/ArrayList;

    .line 253
    .line 254
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 255
    .line 256
    .line 257
    iget-object v1, v0, Lcom/mycompany/app/editor/core/PhotoEditor;->f:Ljava/util/ArrayList;

    .line 258
    .line 259
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0}, Lcom/mycompany/app/editor/core/PhotoEditor;->f()V

    .line 263
    .line 264
    .line 265
    return-void
.end method
