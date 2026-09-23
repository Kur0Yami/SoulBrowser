.class public Lcom/mycompany/app/view/MyTextImage;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field public final c:Z

.field public f:F

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Landroid/graphics/Paint;

.field public j:F

.field public k:F

.field public l:F

.field public m:I

.field public n:Landroid/graphics/Paint;

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyTextImage;->c:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final a(IILjava/lang/String;Ljava/util/regex/Pattern;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyTextImage;->o:Z

    .line 3
    .line 4
    invoke-static {p3, p4}, Lcom/mycompany/app/main/MainUtil;->y2(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result p4

    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyTextImage;->setImageResource(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 23
    .line 24
    sget p4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 25
    .line 26
    div-int/lit8 p4, p4, 0x2

    .line 27
    .line 28
    add-int/2addr p4, p1

    .line 29
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->h:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v1, 0x1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    iput-object p3, p0, Lcom/mycompany/app/view/MyTextImage;->h:Ljava/lang/String;

    .line 39
    .line 40
    move v0, v1

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->n:Landroid/graphics/Paint;

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    new-instance p1, Landroid/graphics/Paint;

    .line 46
    .line 47
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->n:Landroid/graphics/Paint;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->n:Landroid/graphics/Paint;

    .line 56
    .line 57
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 58
    .line 59
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->n:Landroid/graphics/Paint;

    .line 63
    .line 64
    sget p3, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 65
    .line 66
    int-to-float p3, p3

    .line 67
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->n:Landroid/graphics/Paint;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    .line 74
    .line 75
    iput p2, p0, Lcom/mycompany/app/view/MyTextImage;->m:I

    .line 76
    .line 77
    move v0, v1

    .line 78
    :cond_2
    iget p1, p0, Lcom/mycompany/app/view/MyTextImage;->m:I

    .line 79
    .line 80
    if-eq p1, p2, :cond_3

    .line 81
    .line 82
    iput p2, p0, Lcom/mycompany/app/view/MyTextImage;->m:I

    .line 83
    .line 84
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->n:Landroid/graphics/Paint;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    .line 88
    .line 89
    move v0, v1

    .line 90
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 91
    .line 92
    if-nez p1, :cond_4

    .line 93
    .line 94
    new-instance p1, Landroid/graphics/Paint;

    .line 95
    .line 96
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 105
    .line 106
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 107
    .line 108
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 112
    .line 113
    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 114
    .line 115
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 119
    .line 120
    sget-object p3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 121
    .line 122
    invoke-static {p3, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 130
    .line 131
    int-to-float p3, p4

    .line 132
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    .line 139
    .line 140
    iput p3, p0, Lcom/mycompany/app/view/MyTextImage;->f:F

    .line 141
    .line 142
    iput p2, p0, Lcom/mycompany/app/view/MyTextImage;->g:I

    .line 143
    .line 144
    move v0, v1

    .line 145
    :cond_4
    iget p1, p0, Lcom/mycompany/app/view/MyTextImage;->f:F

    .line 146
    .line 147
    int-to-float p3, p4

    .line 148
    cmpl-float p1, p1, p3

    .line 149
    .line 150
    if-eqz p1, :cond_5

    .line 151
    .line 152
    iput p3, p0, Lcom/mycompany/app/view/MyTextImage;->f:F

    .line 153
    .line 154
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 155
    .line 156
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 157
    .line 158
    .line 159
    move v0, v1

    .line 160
    :cond_5
    iget p1, p0, Lcom/mycompany/app/view/MyTextImage;->g:I

    .line 161
    .line 162
    if-eq p1, p2, :cond_6

    .line 163
    .line 164
    iput p2, p0, Lcom/mycompany/app/view/MyTextImage;->g:I

    .line 165
    .line 166
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_6
    move v1, v0

    .line 173
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 174
    .line 175
    if-eqz p1, :cond_7

    .line 176
    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    int-to-float p1, p1

    .line 182
    const/high16 p2, 0x40000000    # 2.0f

    .line 183
    .line 184
    div-float/2addr p1, p2

    .line 185
    iput p1, p0, Lcom/mycompany/app/view/MyTextImage;->l:F

    .line 186
    .line 187
    iget-object p3, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 188
    .line 189
    invoke-virtual {p3}, Landroid/graphics/Paint;->descent()F

    .line 190
    .line 191
    .line 192
    move-result p3

    .line 193
    iget-object p4, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 194
    .line 195
    invoke-virtual {p4}, Landroid/graphics/Paint;->ascent()F

    .line 196
    .line 197
    .line 198
    move-result p4

    .line 199
    add-float/2addr p4, p3

    .line 200
    div-float/2addr p4, p2

    .line 201
    sub-float/2addr p1, p4

    .line 202
    iput p1, p0, Lcom/mycompany/app/view/MyTextImage;->j:F

    .line 203
    .line 204
    :cond_7
    if-eqz v1, :cond_8

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyTextImage;->invalidate()V

    .line 207
    .line 208
    .line 209
    :cond_8
    return-void
.end method

.method public final b(IILjava/lang/String;Ljava/util/regex/Pattern;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyTextImage;->o:Z

    .line 3
    .line 4
    invoke-static {p3, p4}, Lcom/mycompany/app/main/MainUtil;->y2(Ljava/lang/String;Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p3

    .line 8
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result p4

    .line 12
    if-eqz p4, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyTextImage;->setImageResource(I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 20
    .line 21
    .line 22
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 23
    .line 24
    sget p4, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 25
    .line 26
    div-int/lit8 p4, p4, 0x2

    .line 27
    .line 28
    add-int/2addr p4, p1

    .line 29
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->h:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v1, 0x1

    .line 36
    if-nez p1, :cond_1

    .line 37
    .line 38
    iput-object p3, p0, Lcom/mycompany/app/view/MyTextImage;->h:Ljava/lang/String;

    .line 39
    .line 40
    move v0, v1

    .line 41
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->n:Landroid/graphics/Paint;

    .line 42
    .line 43
    if-nez p1, :cond_2

    .line 44
    .line 45
    new-instance p1, Landroid/graphics/Paint;

    .line 46
    .line 47
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 48
    .line 49
    .line 50
    iput-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->n:Landroid/graphics/Paint;

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->n:Landroid/graphics/Paint;

    .line 56
    .line 57
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 58
    .line 59
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->n:Landroid/graphics/Paint;

    .line 63
    .line 64
    sget p3, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 65
    .line 66
    int-to-float p3, p3

    .line 67
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->n:Landroid/graphics/Paint;

    .line 71
    .line 72
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    .line 74
    .line 75
    iput p2, p0, Lcom/mycompany/app/view/MyTextImage;->m:I

    .line 76
    .line 77
    move v0, v1

    .line 78
    :cond_2
    iget p1, p0, Lcom/mycompany/app/view/MyTextImage;->m:I

    .line 79
    .line 80
    if-eq p1, p2, :cond_3

    .line 81
    .line 82
    iput p2, p0, Lcom/mycompany/app/view/MyTextImage;->m:I

    .line 83
    .line 84
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->n:Landroid/graphics/Paint;

    .line 85
    .line 86
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    .line 88
    .line 89
    move v0, v1

    .line 90
    :cond_3
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 91
    .line 92
    if-nez p1, :cond_4

    .line 93
    .line 94
    new-instance p1, Landroid/graphics/Paint;

    .line 95
    .line 96
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 97
    .line 98
    .line 99
    iput-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 105
    .line 106
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 107
    .line 108
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    .line 110
    .line 111
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 112
    .line 113
    sget-object p3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 114
    .line 115
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 116
    .line 117
    .line 118
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 119
    .line 120
    sget-object p3, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 121
    .line 122
    invoke-static {p3, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 123
    .line 124
    .line 125
    move-result-object p3

    .line 126
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 130
    .line 131
    int-to-float p3, p4

    .line 132
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 133
    .line 134
    .line 135
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 138
    .line 139
    .line 140
    iput p3, p0, Lcom/mycompany/app/view/MyTextImage;->f:F

    .line 141
    .line 142
    iput p2, p0, Lcom/mycompany/app/view/MyTextImage;->g:I

    .line 143
    .line 144
    move v0, v1

    .line 145
    :cond_4
    iget p1, p0, Lcom/mycompany/app/view/MyTextImage;->f:F

    .line 146
    .line 147
    int-to-float p3, p4

    .line 148
    cmpl-float p1, p1, p3

    .line 149
    .line 150
    if-eqz p1, :cond_5

    .line 151
    .line 152
    iput p3, p0, Lcom/mycompany/app/view/MyTextImage;->f:F

    .line 153
    .line 154
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 155
    .line 156
    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 157
    .line 158
    .line 159
    move v0, v1

    .line 160
    :cond_5
    iget p1, p0, Lcom/mycompany/app/view/MyTextImage;->g:I

    .line 161
    .line 162
    if-eq p1, p2, :cond_6

    .line 163
    .line 164
    iput p2, p0, Lcom/mycompany/app/view/MyTextImage;->g:I

    .line 165
    .line 166
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 167
    .line 168
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_6
    move v1, v0

    .line 173
    :goto_0
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 174
    .line 175
    if-eqz p1, :cond_7

    .line 176
    .line 177
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    int-to-float p1, p1

    .line 182
    const/high16 p2, 0x40000000    # 2.0f

    .line 183
    .line 184
    div-float/2addr p1, p2

    .line 185
    iput p1, p0, Lcom/mycompany/app/view/MyTextImage;->l:F

    .line 186
    .line 187
    iget-object p3, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 188
    .line 189
    invoke-virtual {p3}, Landroid/graphics/Paint;->descent()F

    .line 190
    .line 191
    .line 192
    move-result p3

    .line 193
    iget-object p4, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 194
    .line 195
    invoke-virtual {p4}, Landroid/graphics/Paint;->ascent()F

    .line 196
    .line 197
    .line 198
    move-result p4

    .line 199
    add-float/2addr p4, p3

    .line 200
    div-float/2addr p4, p2

    .line 201
    sub-float/2addr p1, p4

    .line 202
    iput p1, p0, Lcom/mycompany/app/view/MyTextImage;->j:F

    .line 203
    .line 204
    :cond_7
    if-eqz v1, :cond_8

    .line 205
    .line 206
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyTextImage;->invalidate()V

    .line 207
    .line 208
    .line 209
    :cond_8
    return-void
.end method

.method public final c(II)V
    .locals 3

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    iput-boolean v1, p0, Lcom/mycompany/app/view/MyTextImage;->o:Z

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyTextImage;->setImageResource(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    .line 19
    .line 20
    .line 21
    sget p1, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 22
    .line 23
    sget v0, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 24
    .line 25
    div-int/lit8 v0, v0, 0x2

    .line 26
    .line 27
    add-int/2addr v0, p1

    .line 28
    const-string p1, ""

    .line 29
    .line 30
    invoke-static {p2, p1}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iget-object p2, p0, Lcom/mycompany/app/view/MyTextImage;->h:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    const/4 v2, 0x1

    .line 41
    if-nez p2, :cond_1

    .line 42
    .line 43
    iput-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->h:Ljava/lang/String;

    .line 44
    .line 45
    move v1, v2

    .line 46
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 47
    .line 48
    const/4 p2, -0x1

    .line 49
    if-nez p1, :cond_2

    .line 50
    .line 51
    new-instance p1, Landroid/graphics/Paint;

    .line 52
    .line 53
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 62
    .line 63
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 69
    .line 70
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    .line 71
    .line 72
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 73
    .line 74
    .line 75
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 76
    .line 77
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 78
    .line 79
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 87
    .line 88
    int-to-float v1, v0

    .line 89
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 90
    .line 91
    .line 92
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 93
    .line 94
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 95
    .line 96
    .line 97
    iput v1, p0, Lcom/mycompany/app/view/MyTextImage;->f:F

    .line 98
    .line 99
    iput p2, p0, Lcom/mycompany/app/view/MyTextImage;->g:I

    .line 100
    .line 101
    move v1, v2

    .line 102
    :cond_2
    iget p1, p0, Lcom/mycompany/app/view/MyTextImage;->f:F

    .line 103
    .line 104
    int-to-float v0, v0

    .line 105
    cmpl-float p1, p1, v0

    .line 106
    .line 107
    if-eqz p1, :cond_3

    .line 108
    .line 109
    iput v0, p0, Lcom/mycompany/app/view/MyTextImage;->f:F

    .line 110
    .line 111
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 112
    .line 113
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 114
    .line 115
    .line 116
    move v1, v2

    .line 117
    :cond_3
    iget p1, p0, Lcom/mycompany/app/view/MyTextImage;->g:I

    .line 118
    .line 119
    if-eq p1, p2, :cond_4

    .line 120
    .line 121
    iput p2, p0, Lcom/mycompany/app/view/MyTextImage;->g:I

    .line 122
    .line 123
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 124
    .line 125
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    .line 127
    .line 128
    move v1, v2

    .line 129
    :cond_4
    iput-boolean v2, p0, Lcom/mycompany/app/view/MyTextImage;->o:Z

    .line 130
    .line 131
    iget-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 132
    .line 133
    if-eqz p1, :cond_5

    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    int-to-float p1, p1

    .line 140
    const/high16 p2, 0x40000000    # 2.0f

    .line 141
    .line 142
    div-float/2addr p1, p2

    .line 143
    iput p1, p0, Lcom/mycompany/app/view/MyTextImage;->l:F

    .line 144
    .line 145
    iget-object v0, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 146
    .line 147
    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    .line 148
    .line 149
    .line 150
    move-result v0

    .line 151
    iget-object v2, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 152
    .line 153
    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    add-float/2addr v2, v0

    .line 158
    div-float/2addr v2, p2

    .line 159
    sub-float/2addr p1, v2

    .line 160
    iput p1, p0, Lcom/mycompany/app/view/MyTextImage;->j:F

    .line 161
    .line 162
    sget p2, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 163
    .line 164
    int-to-float p2, p2

    .line 165
    add-float/2addr p1, p2

    .line 166
    iput p1, p0, Lcom/mycompany/app/view/MyTextImage;->j:F

    .line 167
    .line 168
    :cond_5
    if-eqz v1, :cond_6

    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyTextImage;->invalidate()V

    .line 171
    .line 172
    .line 173
    :cond_6
    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyTextImage;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final invalidate()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyTextImage;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyTextImage;->c:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_2

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 33
    .line 34
    .line 35
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyTextImage;->o:Z

    .line 36
    .line 37
    if-eqz v0, :cond_6

    .line 38
    .line 39
    iget-object v0, p0, Lcom/mycompany/app/view/MyTextImage;->h:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_6

    .line 46
    .line 47
    iget-object v0, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 48
    .line 49
    if-eqz v0, :cond_6

    .line 50
    .line 51
    iget-object v1, p0, Lcom/mycompany/app/view/MyTextImage;->h:Ljava/lang/String;

    .line 52
    .line 53
    iget v2, p0, Lcom/mycompany/app/view/MyTextImage;->k:F

    .line 54
    .line 55
    iget v3, p0, Lcom/mycompany/app/view/MyTextImage;->j:F

    .line 56
    .line 57
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_3
    iget v0, p0, Lcom/mycompany/app/view/MyTextImage;->m:I

    .line 62
    .line 63
    if-eqz v0, :cond_5

    .line 64
    .line 65
    iget-object v1, p0, Lcom/mycompany/app/view/MyTextImage;->n:Landroid/graphics/Paint;

    .line 66
    .line 67
    if-eqz v1, :cond_4

    .line 68
    .line 69
    iget v0, p0, Lcom/mycompany/app/view/MyTextImage;->k:F

    .line 70
    .line 71
    iget v2, p0, Lcom/mycompany/app/view/MyTextImage;->l:F

    .line 72
    .line 73
    sget v3, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 74
    .line 75
    div-int/lit8 v3, v3, 0x2

    .line 76
    .line 77
    int-to-float v3, v3

    .line 78
    sub-float v3, v0, v3

    .line 79
    .line 80
    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 85
    .line 86
    .line 87
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/mycompany/app/view/MyTextImage;->h:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_6

    .line 94
    .line 95
    iget-object v0, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 96
    .line 97
    if-eqz v0, :cond_6

    .line 98
    .line 99
    iget-object v1, p0, Lcom/mycompany/app/view/MyTextImage;->h:Ljava/lang/String;

    .line 100
    .line 101
    iget v2, p0, Lcom/mycompany/app/view/MyTextImage;->k:F

    .line 102
    .line 103
    iget v3, p0, Lcom/mycompany/app/view/MyTextImage;->j:F

    .line 104
    .line 105
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    :goto_2
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    int-to-float p1, p1

    .line 5
    const/high16 p3, 0x40000000    # 2.0f

    .line 6
    .line 7
    div-float/2addr p1, p3

    .line 8
    iput p1, p0, Lcom/mycompany/app/view/MyTextImage;->k:F

    .line 9
    .line 10
    int-to-float p1, p2

    .line 11
    div-float/2addr p1, p3

    .line 12
    iput p1, p0, Lcom/mycompany/app/view/MyTextImage;->l:F

    .line 13
    .line 14
    iget-object p2, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 15
    .line 16
    if-eqz p2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    .line 19
    .line 20
    .line 21
    move-result p2

    .line 22
    iget-object p4, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 23
    .line 24
    invoke-virtual {p4}, Landroid/graphics/Paint;->ascent()F

    .line 25
    .line 26
    .line 27
    move-result p4

    .line 28
    add-float/2addr p4, p2

    .line 29
    div-float/2addr p4, p3

    .line 30
    sub-float/2addr p1, p4

    .line 31
    iput p1, p0, Lcom/mycompany/app/view/MyTextImage;->j:F

    .line 32
    .line 33
    iget-boolean p2, p0, Lcom/mycompany/app/view/MyTextImage;->o:Z

    .line 34
    .line 35
    if-eqz p2, :cond_0

    .line 36
    .line 37
    sget p2, Lcom/mycompany/app/main/MainApp;->n1:I

    .line 38
    .line 39
    int-to-float p2, p2

    .line 40
    add-float/2addr p1, p2

    .line 41
    iput p1, p0, Lcom/mycompany/app/view/MyTextImage;->j:F

    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mycompany/app/view/MyTextImage;->g:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/mycompany/app/view/MyTextImage;->h:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 8
    .line 9
    iput v0, p0, Lcom/mycompany/app/view/MyTextImage;->m:I

    .line 10
    .line 11
    iput-object v1, p0, Lcom/mycompany/app/view/MyTextImage;->n:Landroid/graphics/Paint;

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyTextImage;->o:Z

    .line 14
    .line 15
    invoke-static {p1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-super {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mycompany/app/view/MyTextImage;->g:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/mycompany/app/view/MyTextImage;->h:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 8
    .line 9
    iput v0, p0, Lcom/mycompany/app/view/MyTextImage;->m:I

    .line 10
    .line 11
    iput-object v1, p0, Lcom/mycompany/app/view/MyTextImage;->n:Landroid/graphics/Paint;

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyTextImage;->o:Z

    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/mycompany/app/view/MyTextImage;->g:I

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    iput-object v1, p0, Lcom/mycompany/app/view/MyTextImage;->h:Ljava/lang/String;

    .line 6
    .line 7
    iput-object v1, p0, Lcom/mycompany/app/view/MyTextImage;->i:Landroid/graphics/Paint;

    .line 8
    .line 9
    iput v0, p0, Lcom/mycompany/app/view/MyTextImage;->m:I

    .line 10
    .line 11
    iput-object v1, p0, Lcom/mycompany/app/view/MyTextImage;->n:Landroid/graphics/Paint;

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyTextImage;->o:Z

    .line 14
    .line 15
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public setRoundClip(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyTextImage;->q:Z

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/mycompany/app/view/MyTextImage;->q:Z

    .line 7
    .line 8
    if-nez p1, :cond_1

    .line 9
    .line 10
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    new-instance p1, Lcom/mycompany/app/view/MyTextImage$1;

    .line 16
    .line 17
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyTextImage$1;-><init>(Lcom/mycompany/app/view/MyTextImage;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 21
    .line 22
    .line 23
    const/4 p1, 0x1

    .line 24
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyTextImage;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
