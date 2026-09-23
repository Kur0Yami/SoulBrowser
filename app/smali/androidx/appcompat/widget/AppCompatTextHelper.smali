.class Landroidx/appcompat/widget/AppCompatTextHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;,
        Landroidx/appcompat/widget/AppCompatTextHelper$Api24Impl;,
        Landroidx/appcompat/widget/AppCompatTextHelper$Api21Impl;,
        Landroidx/appcompat/widget/AppCompatTextHelper$Api28Impl;
    }
.end annotation


# instance fields
.field public final a:Landroid/widget/TextView;

.field public b:Landroidx/appcompat/widget/TintInfo;

.field public c:Landroidx/appcompat/widget/TintInfo;

.field public d:Landroidx/appcompat/widget/TintInfo;

.field public e:Landroidx/appcompat/widget/TintInfo;

.field public f:Landroidx/appcompat/widget/TintInfo;

.field public g:Landroidx/appcompat/widget/TintInfo;

.field public h:Landroidx/appcompat/widget/TintInfo;

.field public final i:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

.field public j:I

.field public k:I

.field public l:Landroid/graphics/Typeface;

.field public m:Z


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->k:I

    .line 9
    .line 10
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    .line 11
    .line 12
    new-instance v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;-><init>(Landroid/widget/TextView;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->i:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 18
    .line 19
    return-void
.end method

.method public static c(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;
    .locals 1

    .line 1
    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p1, Landroidx/appcompat/widget/AppCompatDrawableManager;->a:Landroidx/appcompat/widget/ResourceManagerInternal;

    .line 3
    .line 4
    invoke-virtual {v0, p0, p2}, Landroidx/appcompat/widget/ResourceManagerInternal;->h(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    .line 7
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p1

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    new-instance p1, Landroidx/appcompat/widget/TintInfo;

    .line 12
    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    iput-boolean p2, p1, Landroidx/appcompat/widget/TintInfo;->d:Z

    .line 18
    .line 19
    iput-object p0, p1, Landroidx/appcompat/widget/TintInfo;->a:Landroid/content/res/ColorStateList;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    return-object p0

    .line 24
    :catchall_0
    move-exception p0

    .line 25
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p0
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getDrawableState()[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/AppCompatDrawableManager;->e(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;[I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->b:Landroidx/appcompat/widget/TintInfo;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->c:Landroidx/appcompat/widget/TintInfo;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->d:Landroidx/appcompat/widget/TintInfo;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->e:Landroidx/appcompat/widget/TintInfo;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    aget-object v4, v0, v2

    .line 26
    .line 27
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->b:Landroidx/appcompat/widget/TintInfo;

    .line 28
    .line 29
    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 30
    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    aget-object v4, v0, v4

    .line 34
    .line 35
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->c:Landroidx/appcompat/widget/TintInfo;

    .line 36
    .line 37
    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 38
    .line 39
    .line 40
    aget-object v4, v0, v1

    .line 41
    .line 42
    iget-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->d:Landroidx/appcompat/widget/TintInfo;

    .line 43
    .line 44
    invoke-virtual {p0, v4, v5}, Landroidx/appcompat/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 45
    .line 46
    .line 47
    const/4 v4, 0x3

    .line 48
    aget-object v0, v0, v4

    .line 49
    .line 50
    iget-object v4, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->e:Landroidx/appcompat/widget/TintInfo;

    .line 51
    .line 52
    invoke-virtual {p0, v0, v4}, Landroidx/appcompat/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->f:Landroidx/appcompat/widget/TintInfo;

    .line 56
    .line 57
    if-nez v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->g:Landroidx/appcompat/widget/TintInfo;

    .line 60
    .line 61
    if-eqz v0, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    return-void

    .line 65
    :cond_3
    :goto_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    aget-object v2, v0, v2

    .line 70
    .line 71
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->f:Landroidx/appcompat/widget/TintInfo;

    .line 72
    .line 73
    invoke-virtual {p0, v2, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 74
    .line 75
    .line 76
    aget-object v0, v0, v1

    .line 77
    .line 78
    iget-object v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->g:Landroidx/appcompat/widget/TintInfo;

    .line 79
    .line 80
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->a(Landroid/graphics/drawable/Drawable;Landroidx/appcompat/widget/TintInfo;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final d()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->h:Landroidx/appcompat/widget/TintInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->a:Landroid/content/res/ColorStateList;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public final e()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->h:Landroidx/appcompat/widget/TintInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroidx/appcompat/widget/TintInfo;->b:Landroid/graphics/PorterDuff$Mode;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    return-object v0
.end method

.method public final f(Landroid/util/AttributeSet;I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v4, p1

    .line 4
    .line 5
    move/from16 v6, p2

    .line 6
    .line 7
    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v7

    .line 13
    invoke-static {}, Landroidx/appcompat/widget/AppCompatDrawableManager;->a()Landroidx/appcompat/widget/AppCompatDrawableManager;

    .line 14
    .line 15
    .line 16
    move-result-object v8

    .line 17
    sget-object v2, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    .line 18
    .line 19
    invoke-static {v7, v4, v2, v6}, Landroidx/appcompat/widget/TintTypedArray;->e(Landroid/content/Context;Landroid/util/AttributeSet;[II)Landroidx/appcompat/widget/TintTypedArray;

    .line 20
    .line 21
    .line 22
    move-result-object v9

    .line 23
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper:[I

    .line 28
    .line 29
    iget-object v5, v9, Landroidx/appcompat/widget/TintTypedArray;->b:Landroid/content/res/TypedArray;

    .line 30
    .line 31
    invoke-static/range {v1 .. v6}, Landroidx/core/view/ViewCompat;->y(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 32
    .line 33
    .line 34
    move-object v10, v1

    .line 35
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_textAppearance:I

    .line 36
    .line 37
    iget-object v2, v9, Landroidx/appcompat/widget/TintTypedArray;->b:Landroid/content/res/TypedArray;

    .line 38
    .line 39
    const/4 v11, -0x1

    .line 40
    invoke-virtual {v2, v1, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    const/4 v12, 0x0

    .line 51
    if-eqz v3, :cond_0

    .line 52
    .line 53
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableLeft:I

    .line 54
    .line 55
    invoke-virtual {v2, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    invoke-static {v7, v8, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->c(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    iput-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->b:Landroidx/appcompat/widget/TintInfo;

    .line 64
    .line 65
    :cond_0
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_1

    .line 72
    .line 73
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableTop:I

    .line 74
    .line 75
    invoke-virtual {v2, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    invoke-static {v7, v8, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->c(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    iput-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->c:Landroidx/appcompat/widget/TintInfo;

    .line 84
    .line 85
    :cond_1
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    .line 86
    .line 87
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 88
    .line 89
    .line 90
    move-result v3

    .line 91
    if-eqz v3, :cond_2

    .line 92
    .line 93
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableRight:I

    .line 94
    .line 95
    invoke-virtual {v2, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-static {v7, v8, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->c(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 100
    .line 101
    .line 102
    move-result-object v3

    .line 103
    iput-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->d:Landroidx/appcompat/widget/TintInfo;

    .line 104
    .line 105
    :cond_2
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    .line 106
    .line 107
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 108
    .line 109
    .line 110
    move-result v3

    .line 111
    if-eqz v3, :cond_3

    .line 112
    .line 113
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableBottom:I

    .line 114
    .line 115
    invoke-virtual {v2, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    invoke-static {v7, v8, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->c(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    iput-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->e:Landroidx/appcompat/widget/TintInfo;

    .line 124
    .line 125
    :cond_3
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    if-eqz v3, :cond_4

    .line 132
    .line 133
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableStart:I

    .line 134
    .line 135
    invoke-virtual {v2, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 136
    .line 137
    .line 138
    move-result v3

    .line 139
    invoke-static {v7, v8, v3}, Landroidx/appcompat/widget/AppCompatTextHelper;->c(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    iput-object v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->f:Landroidx/appcompat/widget/TintInfo;

    .line 144
    .line 145
    :cond_4
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    .line 146
    .line 147
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 148
    .line 149
    .line 150
    move-result v3

    .line 151
    if-eqz v3, :cond_5

    .line 152
    .line 153
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextHelper_android_drawableEnd:I

    .line 154
    .line 155
    invoke-virtual {v2, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 156
    .line 157
    .line 158
    move-result v2

    .line 159
    invoke-static {v7, v8, v2}, Landroidx/appcompat/widget/AppCompatTextHelper;->c(Landroid/content/Context;Landroidx/appcompat/widget/AppCompatDrawableManager;I)Landroidx/appcompat/widget/TintInfo;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    iput-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->g:Landroidx/appcompat/widget/TintInfo;

    .line 164
    .line 165
    :cond_5
    invoke-virtual {v9}, Landroidx/appcompat/widget/TintTypedArray;->f()V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v10}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    instance-of v2, v2, Landroid/text/method/PasswordTransformationMethod;

    .line 173
    .line 174
    const/16 v3, 0x1a

    .line 175
    .line 176
    if-eq v1, v11, :cond_9

    .line 177
    .line 178
    sget-object v5, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 179
    .line 180
    new-instance v14, Landroidx/appcompat/widget/TintTypedArray;

    .line 181
    .line 182
    invoke-virtual {v7, v1, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-direct {v14, v7, v1}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 187
    .line 188
    .line 189
    if-nez v2, :cond_6

    .line 190
    .line 191
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    .line 192
    .line 193
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 194
    .line 195
    .line 196
    move-result v5

    .line 197
    if-eqz v5, :cond_6

    .line 198
    .line 199
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    .line 200
    .line 201
    invoke-virtual {v1, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 202
    .line 203
    .line 204
    move-result v5

    .line 205
    const/4 v15, 0x1

    .line 206
    goto :goto_0

    .line 207
    :cond_6
    move v5, v12

    .line 208
    move v15, v5

    .line 209
    :goto_0
    invoke-virtual {v0, v7, v14}, Landroidx/appcompat/widget/AppCompatTextHelper;->m(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 210
    .line 211
    .line 212
    sget v13, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 213
    .line 214
    sget v9, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    .line 215
    .line 216
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 217
    .line 218
    .line 219
    move-result v9

    .line 220
    if-eqz v9, :cond_7

    .line 221
    .line 222
    sget v9, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    .line 223
    .line 224
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v9

    .line 228
    goto :goto_1

    .line 229
    :cond_7
    const/4 v9, 0x0

    .line 230
    :goto_1
    if-lt v13, v3, :cond_8

    .line 231
    .line 232
    sget v13, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 233
    .line 234
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 235
    .line 236
    .line 237
    move-result v13

    .line 238
    if-eqz v13, :cond_8

    .line 239
    .line 240
    sget v13, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 241
    .line 242
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v1

    .line 246
    goto :goto_2

    .line 247
    :cond_8
    const/4 v1, 0x0

    .line 248
    :goto_2
    invoke-virtual {v14}, Landroidx/appcompat/widget/TintTypedArray;->f()V

    .line 249
    .line 250
    .line 251
    goto :goto_3

    .line 252
    :cond_9
    move v5, v12

    .line 253
    move v15, v5

    .line 254
    const/4 v1, 0x0

    .line 255
    const/4 v9, 0x0

    .line 256
    :goto_3
    sget-object v13, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 257
    .line 258
    new-instance v14, Landroidx/appcompat/widget/TintTypedArray;

    .line 259
    .line 260
    invoke-virtual {v7, v4, v13, v6, v12}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 261
    .line 262
    .line 263
    move-result-object v13

    .line 264
    invoke-direct {v14, v7, v13}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 265
    .line 266
    .line 267
    if-nez v2, :cond_a

    .line 268
    .line 269
    sget v11, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    .line 270
    .line 271
    invoke-virtual {v13, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 272
    .line 273
    .line 274
    move-result v11

    .line 275
    if-eqz v11, :cond_a

    .line 276
    .line 277
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    .line 278
    .line 279
    invoke-virtual {v13, v5, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 280
    .line 281
    .line 282
    move-result v5

    .line 283
    const/4 v15, 0x1

    .line 284
    :cond_a
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 285
    .line 286
    sget v12, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    .line 287
    .line 288
    invoke-virtual {v13, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 289
    .line 290
    .line 291
    move-result v12

    .line 292
    if-eqz v12, :cond_b

    .line 293
    .line 294
    sget v9, Landroidx/appcompat/R$styleable;->TextAppearance_textLocale:I

    .line 295
    .line 296
    invoke-virtual {v13, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v9

    .line 300
    :cond_b
    if-lt v11, v3, :cond_c

    .line 301
    .line 302
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 303
    .line 304
    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 305
    .line 306
    .line 307
    move-result v3

    .line 308
    if-eqz v3, :cond_c

    .line 309
    .line 310
    sget v1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 311
    .line 312
    invoke-virtual {v13, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v1

    .line 316
    :cond_c
    const/16 v3, 0x1c

    .line 317
    .line 318
    if-lt v11, v3, :cond_d

    .line 319
    .line 320
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 321
    .line 322
    invoke-virtual {v13, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    if-eqz v3, :cond_d

    .line 327
    .line 328
    sget v3, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 329
    .line 330
    const/4 v12, -0x1

    .line 331
    invoke-virtual {v13, v3, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 332
    .line 333
    .line 334
    move-result v3

    .line 335
    if-nez v3, :cond_d

    .line 336
    .line 337
    const/4 v3, 0x0

    .line 338
    const/4 v12, 0x0

    .line 339
    invoke-virtual {v10, v12, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 340
    .line 341
    .line 342
    :cond_d
    invoke-virtual {v0, v7, v14}, Landroidx/appcompat/widget/AppCompatTextHelper;->m(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 343
    .line 344
    .line 345
    invoke-virtual {v14}, Landroidx/appcompat/widget/TintTypedArray;->f()V

    .line 346
    .line 347
    .line 348
    if-nez v2, :cond_e

    .line 349
    .line 350
    if-eqz v15, :cond_e

    .line 351
    .line 352
    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 353
    .line 354
    .line 355
    :cond_e
    iget-object v2, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 356
    .line 357
    if-eqz v2, :cond_10

    .line 358
    .line 359
    iget v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->k:I

    .line 360
    .line 361
    const/4 v12, -0x1

    .line 362
    if-ne v3, v12, :cond_f

    .line 363
    .line 364
    iget v3, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 365
    .line 366
    invoke-virtual {v10, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 367
    .line 368
    .line 369
    goto :goto_4

    .line 370
    :cond_f
    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 371
    .line 372
    .line 373
    :cond_10
    :goto_4
    if-eqz v1, :cond_11

    .line 374
    .line 375
    invoke-static {v10, v1}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 376
    .line 377
    .line 378
    :cond_11
    const/16 v12, 0x18

    .line 379
    .line 380
    if-eqz v9, :cond_12

    .line 381
    .line 382
    if-lt v11, v12, :cond_13

    .line 383
    .line 384
    invoke-static {v9}, Landroidx/appcompat/widget/AppCompatTextHelper$Api24Impl;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    .line 385
    .line 386
    .line 387
    move-result-object v1

    .line 388
    invoke-static {v10, v1}, Landroidx/appcompat/widget/AppCompatTextHelper$Api24Impl;->b(Landroid/widget/TextView;Landroid/os/LocaleList;)V

    .line 389
    .line 390
    .line 391
    :cond_12
    const/4 v9, 0x0

    .line 392
    goto :goto_5

    .line 393
    :cond_13
    const-string v1, ","

    .line 394
    .line 395
    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v1

    .line 399
    const/4 v9, 0x0

    .line 400
    aget-object v1, v1, v9

    .line 401
    .line 402
    invoke-static {v1}, Landroidx/appcompat/widget/AppCompatTextHelper$Api21Impl;->a(Ljava/lang/String;)Ljava/util/Locale;

    .line 403
    .line 404
    .line 405
    move-result-object v1

    .line 406
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setTextLocale(Ljava/util/Locale;)V

    .line 407
    .line 408
    .line 409
    :goto_5
    iget-object v11, v0, Landroidx/appcompat/widget/AppCompatTextHelper;->i:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 410
    .line 411
    iget-object v13, v11, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->j:Landroid/content/Context;

    .line 412
    .line 413
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    .line 414
    .line 415
    invoke-virtual {v13, v4, v1, v6, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 416
    .line 417
    .line 418
    move-result-object v5

    .line 419
    iget-object v1, v11, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->i:Landroid/widget/TextView;

    .line 420
    .line 421
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 422
    .line 423
    .line 424
    move-result-object v2

    .line 425
    sget-object v3, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    .line 426
    .line 427
    invoke-static/range {v1 .. v6}, Landroidx/core/view/ViewCompat;->y(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;I)V

    .line 428
    .line 429
    .line 430
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    .line 431
    .line 432
    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 433
    .line 434
    .line 435
    move-result v1

    .line 436
    if-eqz v1, :cond_14

    .line 437
    .line 438
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeTextType:I

    .line 439
    .line 440
    invoke-virtual {v5, v1, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 441
    .line 442
    .line 443
    move-result v1

    .line 444
    iput v1, v11, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->a:I

    .line 445
    .line 446
    :cond_14
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    .line 447
    .line 448
    invoke-virtual {v5, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 449
    .line 450
    .line 451
    move-result v1

    .line 452
    const/high16 v2, -0x40800000    # -1.0f

    .line 453
    .line 454
    if-eqz v1, :cond_15

    .line 455
    .line 456
    sget v1, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeStepGranularity:I

    .line 457
    .line 458
    invoke-virtual {v5, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 459
    .line 460
    .line 461
    move-result v1

    .line 462
    goto :goto_6

    .line 463
    :cond_15
    move v1, v2

    .line 464
    :goto_6
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    .line 465
    .line 466
    invoke-virtual {v5, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 467
    .line 468
    .line 469
    move-result v3

    .line 470
    if-eqz v3, :cond_16

    .line 471
    .line 472
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMinTextSize:I

    .line 473
    .line 474
    invoke-virtual {v5, v3, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 475
    .line 476
    .line 477
    move-result v3

    .line 478
    goto :goto_7

    .line 479
    :cond_16
    move v3, v2

    .line 480
    :goto_7
    sget v6, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    .line 481
    .line 482
    invoke-virtual {v5, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 483
    .line 484
    .line 485
    move-result v6

    .line 486
    if-eqz v6, :cond_17

    .line 487
    .line 488
    sget v6, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizeMaxTextSize:I

    .line 489
    .line 490
    invoke-virtual {v5, v6, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 491
    .line 492
    .line 493
    move-result v6

    .line 494
    goto :goto_8

    .line 495
    :cond_17
    move v6, v2

    .line 496
    :goto_8
    sget v9, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    .line 497
    .line 498
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 499
    .line 500
    .line 501
    move-result v9

    .line 502
    if-eqz v9, :cond_1a

    .line 503
    .line 504
    sget v9, Landroidx/appcompat/R$styleable;->AppCompatTextView_autoSizePresetSizes:I

    .line 505
    .line 506
    const/4 v14, 0x0

    .line 507
    invoke-virtual {v5, v9, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 508
    .line 509
    .line 510
    move-result v9

    .line 511
    if-lez v9, :cond_1a

    .line 512
    .line 513
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getResources()Landroid/content/res/Resources;

    .line 514
    .line 515
    .line 516
    move-result-object v14

    .line 517
    invoke-virtual {v14, v9}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    .line 518
    .line 519
    .line 520
    move-result-object v9

    .line 521
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->length()I

    .line 522
    .line 523
    .line 524
    move-result v14

    .line 525
    new-array v15, v14, [I

    .line 526
    .line 527
    if-lez v14, :cond_19

    .line 528
    .line 529
    move/from16 p2, v2

    .line 530
    .line 531
    const/4 v2, 0x0

    .line 532
    :goto_9
    if-ge v2, v14, :cond_18

    .line 533
    .line 534
    const/4 v12, -0x1

    .line 535
    invoke-virtual {v9, v2, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 536
    .line 537
    .line 538
    move-result v18

    .line 539
    aput v18, v15, v2

    .line 540
    .line 541
    add-int/lit8 v2, v2, 0x1

    .line 542
    .line 543
    const/16 v12, 0x18

    .line 544
    .line 545
    goto :goto_9

    .line 546
    :cond_18
    invoke-static {v15}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->b([I)[I

    .line 547
    .line 548
    .line 549
    move-result-object v2

    .line 550
    iput-object v2, v11, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->f:[I

    .line 551
    .line 552
    invoke-virtual {v11}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->i()Z

    .line 553
    .line 554
    .line 555
    goto :goto_a

    .line 556
    :cond_19
    move/from16 p2, v2

    .line 557
    .line 558
    :goto_a
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    .line 559
    .line 560
    .line 561
    goto :goto_b

    .line 562
    :cond_1a
    move/from16 p2, v2

    .line 563
    .line 564
    :goto_b
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v11}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->j()Z

    .line 568
    .line 569
    .line 570
    move-result v2

    .line 571
    const/4 v5, 0x2

    .line 572
    if-eqz v2, :cond_1f

    .line 573
    .line 574
    iget v2, v11, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->a:I

    .line 575
    .line 576
    const/4 v9, 0x1

    .line 577
    if-ne v2, v9, :cond_20

    .line 578
    .line 579
    iget-boolean v2, v11, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->g:Z

    .line 580
    .line 581
    if-nez v2, :cond_1e

    .line 582
    .line 583
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 584
    .line 585
    .line 586
    move-result-object v2

    .line 587
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    cmpl-float v9, v3, p2

    .line 592
    .line 593
    if-nez v9, :cond_1b

    .line 594
    .line 595
    const/high16 v3, 0x41400000    # 12.0f

    .line 596
    .line 597
    invoke-static {v5, v3, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 598
    .line 599
    .line 600
    move-result v3

    .line 601
    :cond_1b
    cmpl-float v9, v6, p2

    .line 602
    .line 603
    if-nez v9, :cond_1c

    .line 604
    .line 605
    const/high16 v6, 0x42e00000    # 112.0f

    .line 606
    .line 607
    invoke-static {v5, v6, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 608
    .line 609
    .line 610
    move-result v6

    .line 611
    :cond_1c
    cmpl-float v2, v1, p2

    .line 612
    .line 613
    if-nez v2, :cond_1d

    .line 614
    .line 615
    const/high16 v1, 0x3f800000    # 1.0f

    .line 616
    .line 617
    :cond_1d
    invoke-virtual {v11, v3, v6, v1}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->k(FFF)V

    .line 618
    .line 619
    .line 620
    :cond_1e
    invoke-virtual {v11}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->h()Z

    .line 621
    .line 622
    .line 623
    goto :goto_c

    .line 624
    :cond_1f
    const/4 v14, 0x0

    .line 625
    iput v14, v11, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->a:I

    .line 626
    .line 627
    :cond_20
    :goto_c
    sget-boolean v1, Landroidx/appcompat/widget/ViewUtils;->c:Z

    .line 628
    .line 629
    if-eqz v1, :cond_22

    .line 630
    .line 631
    iget v1, v11, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->a:I

    .line 632
    .line 633
    if-eqz v1, :cond_22

    .line 634
    .line 635
    iget-object v1, v11, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->f:[I

    .line 636
    .line 637
    array-length v2, v1

    .line 638
    if-lez v2, :cond_22

    .line 639
    .line 640
    invoke-static {v10}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->a(Landroid/widget/TextView;)I

    .line 641
    .line 642
    .line 643
    move-result v2

    .line 644
    int-to-float v2, v2

    .line 645
    cmpl-float v2, v2, p2

    .line 646
    .line 647
    if-eqz v2, :cond_21

    .line 648
    .line 649
    iget v1, v11, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->d:F

    .line 650
    .line 651
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 652
    .line 653
    .line 654
    move-result v1

    .line 655
    iget v2, v11, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->e:F

    .line 656
    .line 657
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 658
    .line 659
    .line 660
    move-result v2

    .line 661
    iget v3, v11, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->c:F

    .line 662
    .line 663
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    .line 664
    .line 665
    .line 666
    move-result v3

    .line 667
    const/4 v14, 0x0

    .line 668
    invoke-static {v10, v1, v2, v3, v14}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->b(Landroid/widget/TextView;IIII)V

    .line 669
    .line 670
    .line 671
    goto :goto_d

    .line 672
    :cond_21
    const/4 v14, 0x0

    .line 673
    invoke-static {v10, v1, v14}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->c(Landroid/widget/TextView;[II)V

    .line 674
    .line 675
    .line 676
    :cond_22
    :goto_d
    sget-object v1, Landroidx/appcompat/R$styleable;->AppCompatTextView:[I

    .line 677
    .line 678
    new-instance v2, Landroidx/appcompat/widget/TintTypedArray;

    .line 679
    .line 680
    invoke-virtual {v7, v4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 681
    .line 682
    .line 683
    move-result-object v1

    .line 684
    invoke-direct {v2, v7, v1}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 685
    .line 686
    .line 687
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableLeftCompat:I

    .line 688
    .line 689
    const/4 v12, -0x1

    .line 690
    invoke-virtual {v1, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 691
    .line 692
    .line 693
    move-result v3

    .line 694
    if-eq v3, v12, :cond_23

    .line 695
    .line 696
    invoke-virtual {v8, v7, v3}, Landroidx/appcompat/widget/AppCompatDrawableManager;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 697
    .line 698
    .line 699
    move-result-object v3

    .line 700
    goto :goto_e

    .line 701
    :cond_23
    const/4 v3, 0x0

    .line 702
    :goto_e
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTopCompat:I

    .line 703
    .line 704
    invoke-virtual {v1, v4, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 705
    .line 706
    .line 707
    move-result v4

    .line 708
    if-eq v4, v12, :cond_24

    .line 709
    .line 710
    invoke-virtual {v8, v7, v4}, Landroidx/appcompat/widget/AppCompatDrawableManager;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 711
    .line 712
    .line 713
    move-result-object v4

    .line 714
    goto :goto_f

    .line 715
    :cond_24
    const/4 v4, 0x0

    .line 716
    :goto_f
    sget v6, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableRightCompat:I

    .line 717
    .line 718
    invoke-virtual {v1, v6, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 719
    .line 720
    .line 721
    move-result v6

    .line 722
    if-eq v6, v12, :cond_25

    .line 723
    .line 724
    invoke-virtual {v8, v7, v6}, Landroidx/appcompat/widget/AppCompatDrawableManager;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 725
    .line 726
    .line 727
    move-result-object v6

    .line 728
    goto :goto_10

    .line 729
    :cond_25
    const/4 v6, 0x0

    .line 730
    :goto_10
    sget v9, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableBottomCompat:I

    .line 731
    .line 732
    invoke-virtual {v1, v9, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 733
    .line 734
    .line 735
    move-result v9

    .line 736
    if-eq v9, v12, :cond_26

    .line 737
    .line 738
    invoke-virtual {v8, v7, v9}, Landroidx/appcompat/widget/AppCompatDrawableManager;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 739
    .line 740
    .line 741
    move-result-object v9

    .line 742
    goto :goto_11

    .line 743
    :cond_26
    const/4 v9, 0x0

    .line 744
    :goto_11
    sget v11, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableStartCompat:I

    .line 745
    .line 746
    invoke-virtual {v1, v11, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 747
    .line 748
    .line 749
    move-result v11

    .line 750
    if-eq v11, v12, :cond_27

    .line 751
    .line 752
    invoke-virtual {v8, v7, v11}, Landroidx/appcompat/widget/AppCompatDrawableManager;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 753
    .line 754
    .line 755
    move-result-object v11

    .line 756
    goto :goto_12

    .line 757
    :cond_27
    const/4 v11, 0x0

    .line 758
    :goto_12
    sget v13, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableEndCompat:I

    .line 759
    .line 760
    invoke-virtual {v1, v13, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 761
    .line 762
    .line 763
    move-result v13

    .line 764
    if-eq v13, v12, :cond_28

    .line 765
    .line 766
    invoke-virtual {v8, v7, v13}, Landroidx/appcompat/widget/AppCompatDrawableManager;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 767
    .line 768
    .line 769
    move-result-object v7

    .line 770
    goto :goto_13

    .line 771
    :cond_28
    const/4 v7, 0x0

    .line 772
    :goto_13
    const/4 v8, 0x3

    .line 773
    if-nez v11, :cond_33

    .line 774
    .line 775
    if-eqz v7, :cond_29

    .line 776
    .line 777
    goto :goto_1b

    .line 778
    :cond_29
    if-nez v3, :cond_2a

    .line 779
    .line 780
    if-nez v4, :cond_2a

    .line 781
    .line 782
    if-nez v6, :cond_2a

    .line 783
    .line 784
    if-eqz v9, :cond_38

    .line 785
    .line 786
    :cond_2a
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 787
    .line 788
    .line 789
    move-result-object v7

    .line 790
    const/16 v17, 0x0

    .line 791
    .line 792
    aget-object v11, v7, v17

    .line 793
    .line 794
    if-nez v11, :cond_30

    .line 795
    .line 796
    aget-object v12, v7, v5

    .line 797
    .line 798
    if-eqz v12, :cond_2b

    .line 799
    .line 800
    goto :goto_18

    .line 801
    :cond_2b
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    .line 802
    .line 803
    .line 804
    move-result-object v7

    .line 805
    if-eqz v3, :cond_2c

    .line 806
    .line 807
    goto :goto_14

    .line 808
    :cond_2c
    aget-object v3, v7, v17

    .line 809
    .line 810
    :goto_14
    if-eqz v4, :cond_2d

    .line 811
    .line 812
    goto :goto_15

    .line 813
    :cond_2d
    const/16 v16, 0x1

    .line 814
    .line 815
    aget-object v4, v7, v16

    .line 816
    .line 817
    :goto_15
    if-eqz v6, :cond_2e

    .line 818
    .line 819
    goto :goto_16

    .line 820
    :cond_2e
    aget-object v6, v7, v5

    .line 821
    .line 822
    :goto_16
    if-eqz v9, :cond_2f

    .line 823
    .line 824
    goto :goto_17

    .line 825
    :cond_2f
    aget-object v9, v7, v8

    .line 826
    .line 827
    :goto_17
    invoke-virtual {v10, v3, v4, v6, v9}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 828
    .line 829
    .line 830
    goto :goto_20

    .line 831
    :cond_30
    :goto_18
    if-eqz v4, :cond_31

    .line 832
    .line 833
    goto :goto_19

    .line 834
    :cond_31
    const/16 v16, 0x1

    .line 835
    .line 836
    aget-object v4, v7, v16

    .line 837
    .line 838
    :goto_19
    if-eqz v9, :cond_32

    .line 839
    .line 840
    goto :goto_1a

    .line 841
    :cond_32
    aget-object v9, v7, v8

    .line 842
    .line 843
    :goto_1a
    aget-object v3, v7, v5

    .line 844
    .line 845
    invoke-virtual {v10, v11, v4, v3, v9}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 846
    .line 847
    .line 848
    goto :goto_20

    .line 849
    :cond_33
    :goto_1b
    invoke-virtual {v10}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    .line 850
    .line 851
    .line 852
    move-result-object v3

    .line 853
    if-eqz v11, :cond_34

    .line 854
    .line 855
    goto :goto_1c

    .line 856
    :cond_34
    const/16 v17, 0x0

    .line 857
    .line 858
    aget-object v11, v3, v17

    .line 859
    .line 860
    :goto_1c
    if-eqz v4, :cond_35

    .line 861
    .line 862
    goto :goto_1d

    .line 863
    :cond_35
    const/16 v16, 0x1

    .line 864
    .line 865
    aget-object v4, v3, v16

    .line 866
    .line 867
    :goto_1d
    if-eqz v7, :cond_36

    .line 868
    .line 869
    goto :goto_1e

    .line 870
    :cond_36
    aget-object v7, v3, v5

    .line 871
    .line 872
    :goto_1e
    if-eqz v9, :cond_37

    .line 873
    .line 874
    goto :goto_1f

    .line 875
    :cond_37
    aget-object v9, v3, v8

    .line 876
    .line 877
    :goto_1f
    invoke-virtual {v10, v11, v4, v7, v9}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 878
    .line 879
    .line 880
    :cond_38
    :goto_20
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    .line 881
    .line 882
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 883
    .line 884
    .line 885
    move-result v3

    .line 886
    if-eqz v3, :cond_3a

    .line 887
    .line 888
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTint:I

    .line 889
    .line 890
    invoke-virtual {v2, v3}, Landroidx/appcompat/widget/TintTypedArray;->a(I)Landroid/content/res/ColorStateList;

    .line 891
    .line 892
    .line 893
    move-result-object v3

    .line 894
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 895
    .line 896
    const/16 v5, 0x18

    .line 897
    .line 898
    if-lt v4, v5, :cond_39

    .line 899
    .line 900
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setCompoundDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 901
    .line 902
    .line 903
    goto :goto_21

    .line 904
    :cond_39
    instance-of v4, v10, Landroidx/core/widget/TintableCompoundDrawablesView;

    .line 905
    .line 906
    if-eqz v4, :cond_3a

    .line 907
    .line 908
    move-object v4, v10

    .line 909
    check-cast v4, Landroidx/core/widget/TintableCompoundDrawablesView;

    .line 910
    .line 911
    invoke-interface {v4, v3}, Landroidx/core/widget/TintableCompoundDrawablesView;->setSupportCompoundDrawablesTintList(Landroid/content/res/ColorStateList;)V

    .line 912
    .line 913
    .line 914
    :cond_3a
    :goto_21
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    .line 915
    .line 916
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 917
    .line 918
    .line 919
    move-result v3

    .line 920
    if-eqz v3, :cond_3c

    .line 921
    .line 922
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_drawableTintMode:I

    .line 923
    .line 924
    const/4 v12, -0x1

    .line 925
    invoke-virtual {v1, v3, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 926
    .line 927
    .line 928
    move-result v3

    .line 929
    const/4 v4, 0x0

    .line 930
    invoke-static {v3, v4}, Landroidx/appcompat/widget/DrawableUtils;->c(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 931
    .line 932
    .line 933
    move-result-object v3

    .line 934
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 935
    .line 936
    const/16 v5, 0x18

    .line 937
    .line 938
    if-lt v4, v5, :cond_3b

    .line 939
    .line 940
    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setCompoundDrawableTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 941
    .line 942
    .line 943
    goto :goto_22

    .line 944
    :cond_3b
    instance-of v4, v10, Landroidx/core/widget/TintableCompoundDrawablesView;

    .line 945
    .line 946
    if-eqz v4, :cond_3c

    .line 947
    .line 948
    move-object v4, v10

    .line 949
    check-cast v4, Landroidx/core/widget/TintableCompoundDrawablesView;

    .line 950
    .line 951
    invoke-interface {v4, v3}, Landroidx/core/widget/TintableCompoundDrawablesView;->setSupportCompoundDrawablesTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 952
    .line 953
    .line 954
    :cond_3c
    :goto_22
    sget v3, Landroidx/appcompat/R$styleable;->AppCompatTextView_firstBaselineToTopHeight:I

    .line 955
    .line 956
    const/4 v12, -0x1

    .line 957
    invoke-virtual {v1, v3, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 958
    .line 959
    .line 960
    move-result v3

    .line 961
    sget v4, Landroidx/appcompat/R$styleable;->AppCompatTextView_lastBaselineToBottomHeight:I

    .line 962
    .line 963
    invoke-virtual {v1, v4, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 964
    .line 965
    .line 966
    move-result v4

    .line 967
    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    .line 968
    .line 969
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 970
    .line 971
    .line 972
    move-result v5

    .line 973
    if-eqz v5, :cond_3e

    .line 974
    .line 975
    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    .line 976
    .line 977
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 978
    .line 979
    .line 980
    move-result-object v5

    .line 981
    if-eqz v5, :cond_3d

    .line 982
    .line 983
    iget v6, v5, Landroid/util/TypedValue;->type:I

    .line 984
    .line 985
    const/4 v7, 0x5

    .line 986
    if-ne v6, v7, :cond_3d

    .line 987
    .line 988
    iget v1, v5, Landroid/util/TypedValue;->data:I

    .line 989
    .line 990
    and-int/lit8 v12, v1, 0xf

    .line 991
    .line 992
    invoke-static {v1}, Landroid/util/TypedValue;->complexToFloat(I)F

    .line 993
    .line 994
    .line 995
    move-result v1

    .line 996
    move v5, v12

    .line 997
    const/4 v12, -0x1

    .line 998
    goto :goto_24

    .line 999
    :cond_3d
    sget v5, Landroidx/appcompat/R$styleable;->AppCompatTextView_lineHeight:I

    .line 1000
    .line 1001
    const/4 v12, -0x1

    .line 1002
    invoke-virtual {v1, v5, v12}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 1003
    .line 1004
    .line 1005
    move-result v1

    .line 1006
    int-to-float v1, v1

    .line 1007
    :goto_23
    move v5, v12

    .line 1008
    goto :goto_24

    .line 1009
    :cond_3e
    const/4 v12, -0x1

    .line 1010
    move/from16 v1, p2

    .line 1011
    .line 1012
    goto :goto_23

    .line 1013
    :goto_24
    invoke-virtual {v2}, Landroidx/appcompat/widget/TintTypedArray;->f()V

    .line 1014
    .line 1015
    .line 1016
    if-eq v3, v12, :cond_3f

    .line 1017
    .line 1018
    invoke-static {v10, v3}, Landroidx/core/widget/TextViewCompat;->b(Landroid/widget/TextView;I)V

    .line 1019
    .line 1020
    .line 1021
    :cond_3f
    if-eq v4, v12, :cond_40

    .line 1022
    .line 1023
    invoke-static {v10, v4}, Landroidx/core/widget/TextViewCompat;->c(Landroid/widget/TextView;I)V

    .line 1024
    .line 1025
    .line 1026
    :cond_40
    cmpl-float v2, v1, p2

    .line 1027
    .line 1028
    if-eqz v2, :cond_42

    .line 1029
    .line 1030
    if-ne v5, v12, :cond_41

    .line 1031
    .line 1032
    float-to-int v1, v1

    .line 1033
    invoke-static {v10, v1}, Landroidx/core/widget/TextViewCompat;->d(Landroid/widget/TextView;I)V

    .line 1034
    .line 1035
    .line 1036
    return-void

    .line 1037
    :cond_41
    invoke-static {v10, v5, v1}, Landroidx/core/widget/TextViewCompat;->e(Landroid/widget/TextView;IF)V

    .line 1038
    .line 1039
    .line 1040
    :cond_42
    return-void
.end method

.method public final g(Landroid/content/Context;I)V
    .locals 6

    .line 1
    sget-object v0, Landroidx/appcompat/R$styleable;->TextAppearance:[I

    .line 2
    .line 3
    new-instance v1, Landroidx/appcompat/widget/TintTypedArray;

    .line 4
    .line 5
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {v1, p1, p2}, Landroidx/appcompat/widget/TintTypedArray;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 10
    .line 11
    .line 12
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x0

    .line 19
    iget-object v3, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_textAllCaps:I

    .line 24
    .line 25
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAllCaps(Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 33
    .line 34
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 35
    .line 36
    invoke-virtual {p2, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    sget v4, Landroidx/appcompat/R$styleable;->TextAppearance_android_textSize:I

    .line 43
    .line 44
    const/4 v5, -0x1

    .line 45
    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    if-nez v4, :cond_1

    .line 50
    .line 51
    const/4 v4, 0x0

    .line 52
    invoke-virtual {v3, v2, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/widget/AppCompatTextHelper;->m(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V

    .line 56
    .line 57
    .line 58
    const/16 p1, 0x1a

    .line 59
    .line 60
    if-lt v0, p1, :cond_2

    .line 61
    .line 62
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_2

    .line 69
    .line 70
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_fontVariationSettings:I

    .line 71
    .line 72
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_2

    .line 77
    .line 78
    invoke-static {v3, p1}, Landroidx/appcompat/widget/AppCompatTextHelper$Api26Impl;->d(Landroid/widget/TextView;Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    :cond_2
    invoke-virtual {v1}, Landroidx/appcompat/widget/TintTypedArray;->f()V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 85
    .line 86
    if-eqz p1, :cond_3

    .line 87
    .line 88
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 89
    .line 90
    invoke-virtual {v3, p1, p2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 91
    .line 92
    .line 93
    :cond_3
    return-void
.end method

.method public final h(IIII)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->i:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->j:Landroid/content/Context;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    int-to-float p1, p1

    .line 20
    invoke-static {p4, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    int-to-float p2, p2

    .line 25
    invoke-static {p4, p2, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    int-to-float p3, p3

    .line 30
    invoke-static {p4, p3, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 31
    .line 32
    .line 33
    move-result p3

    .line 34
    invoke-virtual {v0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->k(FFF)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->h()Z

    .line 38
    .line 39
    .line 40
    move-result p1

    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->a()V

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method

.method public final i([II)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->i:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    .line 9
    array-length v1, p1

    .line 10
    const/4 v2, 0x0

    .line 11
    if-lez v1, :cond_3

    .line 12
    .line 13
    new-array v3, v1, [I

    .line 14
    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v4, v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->j:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    :goto_0
    if-ge v2, v1, :cond_1

    .line 33
    .line 34
    aget v5, p1, v2

    .line 35
    .line 36
    int-to-float v5, v5

    .line 37
    invoke-static {p2, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    aput v5, v3, v2

    .line 46
    .line 47
    add-int/lit8 v2, v2, 0x1

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    :goto_1
    invoke-static {v3}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->b([I)[I

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    iput-object p2, v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->f:[I

    .line 55
    .line 56
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->i()Z

    .line 57
    .line 58
    .line 59
    move-result p2

    .line 60
    if-eqz p2, :cond_2

    .line 61
    .line 62
    goto :goto_2

    .line 63
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v1, "None of the preset sizes is valid: "

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p2

    .line 87
    :cond_3
    iput-boolean v2, v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->g:Z

    .line 88
    .line 89
    :goto_2
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->h()Z

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->a()V

    .line 96
    .line 97
    .line 98
    :cond_4
    return-void
.end method

.method public final j(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->i:Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->j()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    if-eqz p1, :cond_1

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    if-ne p1, v1, :cond_0

    .line 13
    .line 14
    iget-object p1, v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->j:Landroid/content/Context;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/high16 v1, 0x41400000    # 12.0f

    .line 25
    .line 26
    const/4 v2, 0x2

    .line 27
    invoke-static {v2, v1, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/high16 v3, 0x42e00000    # 112.0f

    .line 32
    .line 33
    invoke-static {v2, v3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    const/high16 v2, 0x3f800000    # 1.0f

    .line 38
    .line 39
    invoke-virtual {v0, v1, p1, v2}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->k(FFF)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->h()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-eqz p1, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->a()V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 53
    .line 54
    const-string v1, "Unknown auto-size text type: "

    .line 55
    .line 56
    invoke-static {p1, v1}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    throw v0

    .line 64
    :cond_1
    const/4 p1, 0x0

    .line 65
    iput p1, v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->a:I

    .line 66
    .line 67
    const/high16 v1, -0x40800000    # -1.0f

    .line 68
    .line 69
    iput v1, v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->d:F

    .line 70
    .line 71
    iput v1, v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->e:F

    .line 72
    .line 73
    iput v1, v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->c:F

    .line 74
    .line 75
    new-array v1, p1, [I

    .line 76
    .line 77
    iput-object v1, v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->f:[I

    .line 78
    .line 79
    iput-boolean p1, v0, Landroidx/appcompat/widget/AppCompatTextViewAutoSizeHelper;->b:Z

    .line 80
    .line 81
    :cond_2
    return-void
.end method

.method public final k(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->h:Landroidx/appcompat/widget/TintInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->h:Landroidx/appcompat/widget/TintInfo;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->h:Landroidx/appcompat/widget/TintInfo;

    .line 13
    .line 14
    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->a:Landroid/content/res/ColorStateList;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->d:Z

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->b:Landroidx/appcompat/widget/TintInfo;

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->c:Landroidx/appcompat/widget/TintInfo;

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->d:Landroidx/appcompat/widget/TintInfo;

    .line 28
    .line 29
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->e:Landroidx/appcompat/widget/TintInfo;

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->f:Landroidx/appcompat/widget/TintInfo;

    .line 32
    .line 33
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->g:Landroidx/appcompat/widget/TintInfo;

    .line 34
    .line 35
    return-void
.end method

.method public final l(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->h:Landroidx/appcompat/widget/TintInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroidx/appcompat/widget/TintInfo;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->h:Landroidx/appcompat/widget/TintInfo;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->h:Landroidx/appcompat/widget/TintInfo;

    .line 13
    .line 14
    iput-object p1, v0, Landroidx/appcompat/widget/TintInfo;->b:Landroid/graphics/PorterDuff$Mode;

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_0
    iput-boolean p1, v0, Landroidx/appcompat/widget/TintInfo;->c:Z

    .line 22
    .line 23
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->b:Landroidx/appcompat/widget/TintInfo;

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->c:Landroidx/appcompat/widget/TintInfo;

    .line 26
    .line 27
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->d:Landroidx/appcompat/widget/TintInfo;

    .line 28
    .line 29
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->e:Landroidx/appcompat/widget/TintInfo;

    .line 30
    .line 31
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->f:Landroidx/appcompat/widget/TintInfo;

    .line 32
    .line 33
    iput-object v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->g:Landroidx/appcompat/widget/TintInfo;

    .line 34
    .line 35
    return-void
.end method

.method public final m(Landroid/content/Context;Landroidx/appcompat/widget/TintTypedArray;)V
    .locals 11

    .line 1
    sget v0, Landroidx/appcompat/R$styleable;->TextAppearance_android_textStyle:I

    .line 2
    .line 3
    iget v1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 4
    .line 5
    iget-object v2, p2, Landroidx/appcompat/widget/TintTypedArray;->b:Landroid/content/res/TypedArray;

    .line 6
    .line 7
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 12
    .line 13
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    const/4 v3, -0x1

    .line 17
    const/16 v4, 0x1c

    .line 18
    .line 19
    if-lt v0, v4, :cond_0

    .line 20
    .line 21
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_textFontWeight:I

    .line 22
    .line 23
    invoke-virtual {v2, v5, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    iput v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->k:I

    .line 28
    .line 29
    if-eq v5, v3, :cond_0

    .line 30
    .line 31
    iget v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 32
    .line 33
    and-int/2addr v5, v1

    .line 34
    iput v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 35
    .line 36
    :cond_0
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    .line 37
    .line 38
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 39
    .line 40
    .line 41
    move-result v5

    .line 42
    const/4 v6, 0x1

    .line 43
    const/4 v7, 0x0

    .line 44
    if-nez v5, :cond_5

    .line 45
    .line 46
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 47
    .line 48
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    if-eqz v5, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    .line 56
    .line 57
    invoke-virtual {v2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_e

    .line 62
    .line 63
    iput-boolean v7, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->m:Z

    .line 64
    .line 65
    sget p1, Landroidx/appcompat/R$styleable;->TextAppearance_android_typeface:I

    .line 66
    .line 67
    invoke-virtual {v2, p1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    if-eq p1, v6, :cond_4

    .line 72
    .line 73
    if-eq p1, v1, :cond_3

    .line 74
    .line 75
    const/4 p2, 0x3

    .line 76
    if-eq p1, p2, :cond_2

    .line 77
    .line 78
    goto/16 :goto_6

    .line 79
    .line 80
    :cond_2
    sget-object p1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 81
    .line 82
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 83
    .line 84
    return-void

    .line 85
    :cond_3
    sget-object p1, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 86
    .line 87
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 88
    .line 89
    return-void

    .line 90
    :cond_4
    sget-object p1, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 91
    .line 92
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 93
    .line 94
    return-void

    .line 95
    :cond_5
    :goto_0
    const/4 v5, 0x0

    .line 96
    iput-object v5, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 97
    .line 98
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 99
    .line 100
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 101
    .line 102
    .line 103
    move-result v5

    .line 104
    if-eqz v5, :cond_6

    .line 105
    .line 106
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_fontFamily:I

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_6
    sget v5, Landroidx/appcompat/R$styleable;->TextAppearance_android_fontFamily:I

    .line 110
    .line 111
    :goto_1
    iget v8, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->k:I

    .line 112
    .line 113
    iget v9, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 114
    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->isRestricted()Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_b

    .line 120
    .line 121
    new-instance p1, Ljava/lang/ref/WeakReference;

    .line 122
    .line 123
    iget-object v10, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->a:Landroid/widget/TextView;

    .line 124
    .line 125
    invoke-direct {p1, v10}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    new-instance v10, Landroidx/appcompat/widget/AppCompatTextHelper$1;

    .line 129
    .line 130
    invoke-direct {v10, p0, v8, v9, p1}, Landroidx/appcompat/widget/AppCompatTextHelper$1;-><init>(Landroidx/appcompat/widget/AppCompatTextHelper;IILjava/lang/ref/WeakReference;)V

    .line 131
    .line 132
    .line 133
    :try_start_0
    iget p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 134
    .line 135
    invoke-virtual {p2, v5, p1, v10}, Landroidx/appcompat/widget/TintTypedArray;->d(IILandroidx/core/content/res/ResourcesCompat$FontCallback;)Landroid/graphics/Typeface;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-eqz p1, :cond_9

    .line 140
    .line 141
    if-lt v0, v4, :cond_8

    .line 142
    .line 143
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->k:I

    .line 144
    .line 145
    if-eq p2, v3, :cond_8

    .line 146
    .line 147
    invoke-static {p1, v7}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->k:I

    .line 152
    .line 153
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 154
    .line 155
    and-int/2addr v0, v1

    .line 156
    if-eqz v0, :cond_7

    .line 157
    .line 158
    move v0, v6

    .line 159
    goto :goto_2

    .line 160
    :cond_7
    move v0, v7

    .line 161
    :goto_2
    invoke-static {p1, p2, v0}, Landroidx/appcompat/widget/AppCompatTextHelper$Api28Impl;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 166
    .line 167
    goto :goto_3

    .line 168
    :cond_8
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 169
    .line 170
    :cond_9
    :goto_3
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 171
    .line 172
    if-nez p1, :cond_a

    .line 173
    .line 174
    move p1, v6

    .line 175
    goto :goto_4

    .line 176
    :cond_a
    move p1, v7

    .line 177
    :goto_4
    iput-boolean p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->m:Z
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    :catch_0
    :cond_b
    iget-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 180
    .line 181
    if-nez p1, :cond_e

    .line 182
    .line 183
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    if-eqz p1, :cond_e

    .line 188
    .line 189
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 190
    .line 191
    if-lt p2, v4, :cond_d

    .line 192
    .line 193
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->k:I

    .line 194
    .line 195
    if-eq p2, v3, :cond_d

    .line 196
    .line 197
    invoke-static {p1, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->k:I

    .line 202
    .line 203
    iget v0, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 204
    .line 205
    and-int/2addr v0, v1

    .line 206
    if-eqz v0, :cond_c

    .line 207
    .line 208
    goto :goto_5

    .line 209
    :cond_c
    move v6, v7

    .line 210
    :goto_5
    invoke-static {p1, p2, v6}, Landroidx/appcompat/widget/AppCompatTextHelper$Api28Impl;->a(Landroid/graphics/Typeface;IZ)Landroid/graphics/Typeface;

    .line 211
    .line 212
    .line 213
    move-result-object p1

    .line 214
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 215
    .line 216
    goto :goto_6

    .line 217
    :cond_d
    iget p2, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->j:I

    .line 218
    .line 219
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    iput-object p1, p0, Landroidx/appcompat/widget/AppCompatTextHelper;->l:Landroid/graphics/Typeface;

    .line 224
    .line 225
    :cond_e
    :goto_6
    return-void
.end method
