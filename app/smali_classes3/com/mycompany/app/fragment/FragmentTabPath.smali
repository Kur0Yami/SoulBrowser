.class public Lcom/mycompany/app/fragment/FragmentTabPath;
.super Landroid/widget/HorizontalScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/fragment/FragmentTabPath$FragmentTabListener;
    }
.end annotation


# instance fields
.field public c:[Ljava/lang/String;

.field public f:Lcom/mycompany/app/fragment/FragmentTabPath$FragmentTabListener;

.field public g:Landroid/widget/LinearLayout;


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/fragment/FragmentTabPath;->g:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    .line 12
    if-ltz p1, :cond_3

    .line 13
    .line 14
    if-lt p1, v0, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/fragment/FragmentTabPath;->g:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-nez p1, :cond_2

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    sub-int/2addr v0, v1

    .line 35
    int-to-float v0, v0

    .line 36
    const/high16 v1, 0x40000000    # 2.0f

    .line 37
    .line 38
    div-float/2addr v0, v1

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    int-to-float v1, v1

    .line 44
    sub-float/2addr v1, v0

    .line 45
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    int-to-float p1, p1

    .line 50
    const/4 v0, 0x0

    .line 51
    mul-float/2addr v0, p1

    .line 52
    add-float/2addr v0, v1

    .line 53
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    .line 54
    .line 55
    .line 56
    move-result p1

    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, v0}, Landroid/view/View;->scrollTo(II)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_0
    return-void
.end method

.method public final b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/fragment/FragmentTabPath;->g:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_6

    .line 6
    .line 7
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 8
    .line 9
    .line 10
    sget v0, Lnet/kaki87/soul2/testing/R$string;->bookmark:I

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/mycompany/app/fragment/FragmentTabPath;->g:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto/16 :goto_5

    .line 21
    .line 22
    :cond_1
    invoke-static {p2}, Lcom/mycompany/app/main/MainUtil;->Y6(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    const-string v2, "/"

    .line 31
    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    filled-new-array {v0}, [Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    goto :goto_0

    .line 39
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    :goto_0
    iput-object p2, p0, Lcom/mycompany/app/fragment/FragmentTabPath;->c:[Ljava/lang/String;

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    const/4 v3, 0x0

    .line 65
    if-eqz p2, :cond_3

    .line 66
    .line 67
    array-length p2, p2

    .line 68
    if-nez p2, :cond_4

    .line 69
    .line 70
    :cond_3
    new-array p2, v1, [Ljava/lang/String;

    .line 71
    .line 72
    iput-object p2, p0, Lcom/mycompany/app/fragment/FragmentTabPath;->c:[Ljava/lang/String;

    .line 73
    .line 74
    aput-object v0, p2, v3

    .line 75
    .line 76
    :cond_4
    iget-object p2, p0, Lcom/mycompany/app/fragment/FragmentTabPath;->c:[Ljava/lang/String;

    .line 77
    .line 78
    array-length p2, p2

    .line 79
    move v0, v3

    .line 80
    :goto_1
    if-ge v0, p2, :cond_a

    .line 81
    .line 82
    const/4 v4, -0x2

    .line 83
    const/high16 v5, 0x41800000    # 16.0f

    .line 84
    .line 85
    const/16 v6, 0x11

    .line 86
    .line 87
    const/4 v7, 0x0

    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    invoke-static {p1, v7, v6, v1, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->C(Landroid/content/Context;Landroid/util/AttributeSet;IIF)Landroidx/appcompat/widget/AppCompatTextView;

    .line 91
    .line 92
    .line 93
    move-result-object v8

    .line 94
    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    iget-object v9, p0, Lcom/mycompany/app/fragment/FragmentTabPath;->g:Landroid/widget/LinearLayout;

    .line 98
    .line 99
    sget v10, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 100
    .line 101
    invoke-virtual {v9, v8, v4, v10}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 102
    .line 103
    .line 104
    goto :goto_2

    .line 105
    :cond_5
    move-object v8, v7

    .line 106
    :goto_2
    new-instance v9, Landroidx/appcompat/widget/AppCompatTextView;

    .line 107
    .line 108
    invoke-direct {v9, p1, v7}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    .line 110
    .line 111
    sget v7, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 112
    .line 113
    invoke-virtual {v9, v7, v3, v7, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v9, v1, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 120
    .line 121
    .line 122
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v5

    .line 126
    invoke-virtual {v9, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    iget-object v5, p0, Lcom/mycompany/app/fragment/FragmentTabPath;->c:[Ljava/lang/String;

    .line 130
    .line 131
    aget-object v5, v5, v0

    .line 132
    .line 133
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    sget-boolean v5, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 137
    .line 138
    if-eqz v5, :cond_7

    .line 139
    .line 140
    const v5, -0x50506

    .line 141
    .line 142
    .line 143
    if-eqz v8, :cond_6

    .line 144
    .line 145
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    .line 147
    .line 148
    :cond_6
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 149
    .line 150
    .line 151
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 152
    .line 153
    invoke-virtual {v9, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :cond_7
    const/high16 v5, -0x1000000

    .line 158
    .line 159
    if-eqz v8, :cond_8

    .line 160
    .line 161
    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 162
    .line 163
    .line 164
    :cond_8
    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    .line 166
    .line 167
    sget v5, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_gray:I

    .line 168
    .line 169
    invoke-virtual {v9, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 170
    .line 171
    .line 172
    :goto_3
    iget-object v5, p0, Lcom/mycompany/app/fragment/FragmentTabPath;->f:Lcom/mycompany/app/fragment/FragmentTabPath$FragmentTabListener;

    .line 173
    .line 174
    if-nez v5, :cond_9

    .line 175
    .line 176
    invoke-virtual {v9, v3}, Landroid/view/View;->setClickable(Z)V

    .line 177
    .line 178
    .line 179
    goto :goto_4

    .line 180
    :cond_9
    new-instance v5, Lcom/mycompany/app/fragment/FragmentTabPath$2;

    .line 181
    .line 182
    invoke-direct {v5, p0}, Lcom/mycompany/app/fragment/FragmentTabPath$2;-><init>(Lcom/mycompany/app/fragment/FragmentTabPath;)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v9, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    .line 187
    .line 188
    :goto_4
    iget-object v5, p0, Lcom/mycompany/app/fragment/FragmentTabPath;->g:Landroid/widget/LinearLayout;

    .line 189
    .line 190
    sget v6, Lcom/mycompany/app/main/MainApp;->f1:I

    .line 191
    .line 192
    invoke-virtual {v5, v9, v4, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 193
    .line 194
    .line 195
    add-int/lit8 v0, v0, 0x1

    .line 196
    .line 197
    goto :goto_1

    .line 198
    :cond_a
    :goto_5
    iget-object p1, p0, Lcom/mycompany/app/fragment/FragmentTabPath;->g:Landroid/widget/LinearLayout;

    .line 199
    .line 200
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 201
    .line 202
    .line 203
    move-result p1

    .line 204
    if-nez p1, :cond_b

    .line 205
    .line 206
    :goto_6
    return-void

    .line 207
    :cond_b
    new-instance p1, Lcom/mycompany/app/fragment/FragmentTabPath$1;

    .line 208
    .line 209
    invoke-direct {p1, p0}, Lcom/mycompany/app/fragment/FragmentTabPath$1;-><init>(Lcom/mycompany/app/fragment/FragmentTabPath;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 213
    .line 214
    .line 215
    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    return p1
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/HorizontalScrollView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/mycompany/app/fragment/FragmentTabPath;->g:Landroid/widget/LinearLayout;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/mycompany/app/fragment/FragmentTabPath;->g:Landroid/widget/LinearLayout;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    add-int/lit8 p1, p1, -0x1

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/mycompany/app/fragment/FragmentTabPath;->a(I)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public setListener(Lcom/mycompany/app/fragment/FragmentTabPath$FragmentTabListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/fragment/FragmentTabPath;->f:Lcom/mycompany/app/fragment/FragmentTabPath$FragmentTabListener;

    .line 2
    .line 3
    return-void
.end method
