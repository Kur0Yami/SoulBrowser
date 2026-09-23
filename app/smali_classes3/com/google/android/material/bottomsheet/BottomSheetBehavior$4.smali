.class Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/ViewUtils$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomsheet/BottomSheetBehavior;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->a:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/ViewUtils$RelativePadding;)Landroidx/core/view/WindowInsetsCompat;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, 0x7

    .line 10
    invoke-virtual {v2, v4}, Landroidx/core/view/WindowInsetsCompat;->d(I)Landroidx/core/graphics/Insets;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    const/16 v5, 0x20

    .line 15
    .line 16
    invoke-virtual {v2, v5}, Landroidx/core/view/WindowInsetsCompat;->d(I)Landroidx/core/graphics/Insets;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    iget-object v6, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->b:Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    .line 21
    .line 22
    iget-boolean v7, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->s:Z

    .line 23
    .line 24
    iget v8, v4, Landroidx/core/graphics/Insets;->b:I

    .line 25
    .line 26
    iget v9, v4, Landroidx/core/graphics/Insets;->c:I

    .line 27
    .line 28
    iget v10, v4, Landroidx/core/graphics/Insets;->a:I

    .line 29
    .line 30
    iput v8, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->A:I

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    .line 33
    .line 34
    .line 35
    move-result v8

    .line 36
    const/4 v12, 0x1

    .line 37
    if-ne v8, v12, :cond_0

    .line 38
    .line 39
    move v8, v12

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v8, 0x0

    .line 42
    :goto_0
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    .line 43
    .line 44
    .line 45
    move-result v13

    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    .line 47
    .line 48
    .line 49
    move-result v14

    .line 50
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    .line 51
    .line 52
    .line 53
    move-result v15

    .line 54
    if-eqz v7, :cond_1

    .line 55
    .line 56
    invoke-virtual {v2}, Landroidx/core/view/WindowInsetsCompat;->f()I

    .line 57
    .line 58
    .line 59
    move-result v13

    .line 60
    iput v13, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->z:I

    .line 61
    .line 62
    iget v11, v3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->d:I

    .line 63
    .line 64
    add-int/2addr v13, v11

    .line 65
    :cond_1
    iget-boolean v11, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->t:Z

    .line 66
    .line 67
    if-eqz v11, :cond_3

    .line 68
    .line 69
    if-eqz v8, :cond_2

    .line 70
    .line 71
    iget v11, v3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->c:I

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_2
    iget v11, v3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->a:I

    .line 75
    .line 76
    :goto_1
    add-int v14, v11, v10

    .line 77
    .line 78
    :cond_3
    iget-boolean v11, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->u:Z

    .line 79
    .line 80
    if-eqz v11, :cond_5

    .line 81
    .line 82
    if-eqz v8, :cond_4

    .line 83
    .line 84
    iget v3, v3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->a:I

    .line 85
    .line 86
    goto :goto_2

    .line 87
    :cond_4
    iget v3, v3, Lcom/google/android/material/internal/ViewUtils$RelativePadding;->c:I

    .line 88
    .line 89
    :goto_2
    add-int v15, v3, v9

    .line 90
    .line 91
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 96
    .line 97
    iget-boolean v8, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->w:Z

    .line 98
    .line 99
    if-eqz v8, :cond_6

    .line 100
    .line 101
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 102
    .line 103
    if-eq v8, v10, :cond_6

    .line 104
    .line 105
    iput v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 106
    .line 107
    move v11, v12

    .line 108
    goto :goto_3

    .line 109
    :cond_6
    const/4 v11, 0x0

    .line 110
    :goto_3
    iget-boolean v8, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->x:Z

    .line 111
    .line 112
    if-eqz v8, :cond_7

    .line 113
    .line 114
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 115
    .line 116
    if-eq v8, v9, :cond_7

    .line 117
    .line 118
    iput v9, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 119
    .line 120
    move v11, v12

    .line 121
    :cond_7
    iget-boolean v8, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->y:Z

    .line 122
    .line 123
    if-eqz v8, :cond_8

    .line 124
    .line 125
    iget v8, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 126
    .line 127
    iget v4, v4, Landroidx/core/graphics/Insets;->b:I

    .line 128
    .line 129
    if-eq v8, v4, :cond_8

    .line 130
    .line 131
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 132
    .line 133
    goto :goto_4

    .line 134
    :cond_8
    move v12, v11

    .line 135
    :goto_4
    if-eqz v12, :cond_9

    .line 136
    .line 137
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    .line 139
    .line 140
    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    .line 141
    .line 142
    .line 143
    move-result v3

    .line 144
    invoke-virtual {v1, v14, v3, v15, v13}, Landroid/view/View;->setPadding(IIII)V

    .line 145
    .line 146
    .line 147
    iget-boolean v1, v0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior$4;->a:Z

    .line 148
    .line 149
    if-eqz v1, :cond_a

    .line 150
    .line 151
    iget v3, v5, Landroidx/core/graphics/Insets;->d:I

    .line 152
    .line 153
    iput v3, v6, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->q:I

    .line 154
    .line 155
    :cond_a
    if-nez v7, :cond_c

    .line 156
    .line 157
    if-eqz v1, :cond_b

    .line 158
    .line 159
    goto :goto_5

    .line 160
    :cond_b
    return-object v2

    .line 161
    :cond_c
    :goto_5
    invoke-virtual {v6}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->T()V

    .line 162
    .line 163
    .line 164
    return-object v2
.end method
