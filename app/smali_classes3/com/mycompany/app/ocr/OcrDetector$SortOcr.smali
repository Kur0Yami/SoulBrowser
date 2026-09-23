.class Lcom/mycompany/app/ocr/OcrDetector$SortOcr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/ocr/OcrDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SortOcr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/mycompany/app/ocr/OcrDetector$OcrItem;",
        ">;"
    }
.end annotation


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4

    .line 1
    check-cast p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 2
    .line 3
    check-cast p2, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    goto/16 :goto_2

    .line 8
    .line 9
    :cond_0
    if-nez p2, :cond_1

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_1
    iget v0, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 14
    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    goto/16 :goto_2

    .line 18
    .line 19
    :cond_2
    iget v1, p2, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->f:I

    .line 20
    .line 21
    if-nez v1, :cond_3

    .line 22
    .line 23
    goto/16 :goto_3

    .line 24
    .line 25
    :cond_3
    if-ge v0, v1, :cond_4

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_4
    if-le v0, v1, :cond_5

    .line 30
    .line 31
    goto/16 :goto_3

    .line 32
    .line 33
    :cond_5
    iget-object v0, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 34
    .line 35
    iget-object p2, p2, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->j:Landroid/graphics/RectF;

    .line 36
    .line 37
    if-nez v0, :cond_6

    .line 38
    .line 39
    goto/16 :goto_2

    .line 40
    .line 41
    :cond_6
    if-nez p2, :cond_7

    .line 42
    .line 43
    goto/16 :goto_3

    .line 44
    .line 45
    :cond_7
    iget-boolean v1, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->h:Z

    .line 46
    .line 47
    const/high16 v2, 0x40000000    # 2.0f

    .line 48
    .line 49
    if-eqz v1, :cond_10

    .line 50
    .line 51
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 52
    .line 53
    iget v3, p2, Landroid/graphics/RectF;->right:F

    .line 54
    .line 55
    sub-float/2addr v1, v3

    .line 56
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    iget v3, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->i:F

    .line 61
    .line 62
    div-float/2addr v3, v2

    .line 63
    cmpl-float v1, v1, v3

    .line 64
    .line 65
    if-gtz v1, :cond_c

    .line 66
    .line 67
    iget p1, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->g:F

    .line 68
    .line 69
    invoke-static {p1}, Lcom/mycompany/app/ocr/OcrDetector;->C(F)Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_8

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_8
    iget p1, v0, Landroid/graphics/RectF;->top:F

    .line 77
    .line 78
    iget v1, p2, Landroid/graphics/RectF;->top:F

    .line 79
    .line 80
    cmpg-float v2, p1, v1

    .line 81
    .line 82
    if-gez v2, :cond_9

    .line 83
    .line 84
    goto/16 :goto_2

    .line 85
    .line 86
    :cond_9
    cmpg-float p1, v1, p1

    .line 87
    .line 88
    if-gez p1, :cond_a

    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_a
    iget p1, v0, Landroid/graphics/RectF;->right:F

    .line 93
    .line 94
    iget p2, p2, Landroid/graphics/RectF;->right:F

    .line 95
    .line 96
    cmpl-float v0, p1, p2

    .line 97
    .line 98
    if-lez v0, :cond_b

    .line 99
    .line 100
    goto/16 :goto_2

    .line 101
    .line 102
    :cond_b
    cmpl-float p1, p2, p1

    .line 103
    .line 104
    if-lez p1, :cond_19

    .line 105
    .line 106
    goto/16 :goto_3

    .line 107
    .line 108
    :cond_c
    :goto_0
    iget p1, v0, Landroid/graphics/RectF;->right:F

    .line 109
    .line 110
    iget v1, p2, Landroid/graphics/RectF;->right:F

    .line 111
    .line 112
    cmpl-float v2, p1, v1

    .line 113
    .line 114
    if-lez v2, :cond_d

    .line 115
    .line 116
    goto/16 :goto_2

    .line 117
    .line 118
    :cond_d
    cmpl-float p1, v1, p1

    .line 119
    .line 120
    if-lez p1, :cond_e

    .line 121
    .line 122
    goto/16 :goto_3

    .line 123
    .line 124
    :cond_e
    iget p1, v0, Landroid/graphics/RectF;->top:F

    .line 125
    .line 126
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 127
    .line 128
    cmpg-float v0, p1, p2

    .line 129
    .line 130
    if-gez v0, :cond_f

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_f
    cmpg-float p1, p2, p1

    .line 134
    .line 135
    if-gez p1, :cond_19

    .line 136
    .line 137
    goto :goto_3

    .line 138
    :cond_10
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 139
    .line 140
    iget v3, p2, Landroid/graphics/RectF;->top:F

    .line 141
    .line 142
    sub-float/2addr v1, v3

    .line 143
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    iget v3, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->i:F

    .line 148
    .line 149
    div-float/2addr v3, v2

    .line 150
    cmpl-float v1, v1, v3

    .line 151
    .line 152
    if-gtz v1, :cond_15

    .line 153
    .line 154
    iget p1, p1, Lcom/mycompany/app/ocr/OcrDetector$OcrItem;->g:F

    .line 155
    .line 156
    invoke-static {p1}, Lcom/mycompany/app/ocr/OcrDetector;->C(F)Z

    .line 157
    .line 158
    .line 159
    move-result p1

    .line 160
    if-eqz p1, :cond_11

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_11
    iget p1, v0, Landroid/graphics/RectF;->left:F

    .line 164
    .line 165
    iget v1, p2, Landroid/graphics/RectF;->left:F

    .line 166
    .line 167
    cmpg-float v2, p1, v1

    .line 168
    .line 169
    if-gez v2, :cond_12

    .line 170
    .line 171
    goto :goto_2

    .line 172
    :cond_12
    cmpg-float p1, v1, p1

    .line 173
    .line 174
    if-gez p1, :cond_13

    .line 175
    .line 176
    goto :goto_3

    .line 177
    :cond_13
    iget p1, v0, Landroid/graphics/RectF;->top:F

    .line 178
    .line 179
    iget p2, p2, Landroid/graphics/RectF;->top:F

    .line 180
    .line 181
    cmpg-float v0, p1, p2

    .line 182
    .line 183
    if-gez v0, :cond_14

    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_14
    cmpg-float p1, p2, p1

    .line 187
    .line 188
    if-gez p1, :cond_19

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_15
    :goto_1
    iget p1, v0, Landroid/graphics/RectF;->top:F

    .line 192
    .line 193
    iget v1, p2, Landroid/graphics/RectF;->top:F

    .line 194
    .line 195
    cmpg-float v2, p1, v1

    .line 196
    .line 197
    if-gez v2, :cond_16

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_16
    cmpg-float p1, v1, p1

    .line 201
    .line 202
    if-gez p1, :cond_17

    .line 203
    .line 204
    goto :goto_3

    .line 205
    :cond_17
    iget p1, v0, Landroid/graphics/RectF;->left:F

    .line 206
    .line 207
    iget p2, p2, Landroid/graphics/RectF;->left:F

    .line 208
    .line 209
    cmpg-float v0, p1, p2

    .line 210
    .line 211
    if-gez v0, :cond_18

    .line 212
    .line 213
    :goto_2
    const/4 p1, -0x1

    .line 214
    return p1

    .line 215
    :cond_18
    cmpg-float p1, p2, p1

    .line 216
    .line 217
    if-gez p1, :cond_19

    .line 218
    .line 219
    :goto_3
    const/4 p1, 0x1

    .line 220
    return p1

    .line 221
    :cond_19
    const/4 p1, 0x0

    .line 222
    return p1
.end method
