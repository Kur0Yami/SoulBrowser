.class public Lcom/mycompany/app/main/MainTxtAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/main/MainTxtAdapter$MainTxtListener;,
        Lcom/mycompany/app/main/MainTxtAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/main/MainTxtAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:I

.field public e:I

.field public f:Ljava/util/List;

.field public g:Z

.field public h:Landroid/graphics/Typeface;

.field public i:I

.field public j:I

.field public k:I

.field public l:Lcom/mycompany/app/view/MyManagerLinear;

.field public m:Lcom/mycompany/app/main/MainTxtAdapter$MainTxtListener;

.field public n:I


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/mycompany/app/main/MainTxtAdapter;->n:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtAdapter;->f:Ljava/util/List;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    return v0

    .line 12
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public final e(I)J
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final f(I)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/mycompany/app/main/MainTxtAdapter;->g:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtAdapter;->f:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_2

    .line 9
    .line 10
    if-ltz p1, :cond_2

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-lt p1, v0, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtAdapter;->f:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x1

    .line 26
    sub-int/2addr v0, v1

    .line 27
    if-ne p1, v0, :cond_2

    .line 28
    .line 29
    return v1

    .line 30
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 31
    return p1
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 1
    check-cast p1, Lcom/mycompany/app/main/MainTxtAdapter$ViewHolder;

    .line 2
    .line 3
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto/16 :goto_4

    .line 8
    .line 9
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/main/MainTxtAdapter;->f:Ljava/util/List;

    .line 10
    .line 11
    if-eqz v1, :cond_a

    .line 12
    .line 13
    if-ltz p2, :cond_a

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-lt p2, v1, :cond_1

    .line 20
    .line 21
    goto :goto_4

    .line 22
    :cond_1
    iget-object v1, p1, Lcom/mycompany/app/main/MainTxtAdapter$ViewHolder;->u:Landroidx/appcompat/widget/AppCompatTextView;

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    goto :goto_4

    .line 27
    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtAdapter;->f:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtAdapter;->m:Lcom/mycompany/app/main/MainTxtAdapter$MainTxtListener;

    .line 42
    .line 43
    if-eqz v0, :cond_7

    .line 44
    .line 45
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    const/4 p1, 0x0

    .line 52
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 56
    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_3
    new-instance p1, Lcom/mycompany/app/main/MainTxtAdapter$1;

    .line 60
    .line 61
    invoke-direct {p1, p0}, Lcom/mycompany/app/main/MainTxtAdapter$1;-><init>(Lcom/mycompany/app/main/MainTxtAdapter;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 65
    .line 66
    .line 67
    iget p1, p0, Lcom/mycompany/app/main/MainTxtAdapter;->k:I

    .line 68
    .line 69
    if-ne p2, p1, :cond_5

    .line 70
    .line 71
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 72
    .line 73
    if-eqz p1, :cond_4

    .line 74
    .line 75
    const p1, 0x611976d2

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    const p1, 0x61b3e5fc

    .line 80
    .line 81
    .line 82
    :goto_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_5
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 87
    .line 88
    if-eqz p1, :cond_6

    .line 89
    .line 90
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_6
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 94
    .line 95
    :goto_1
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 96
    .line 97
    .line 98
    :cond_7
    :goto_2
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 99
    .line 100
    if-eqz p1, :cond_8

    .line 101
    .line 102
    const p1, -0x50506

    .line 103
    .line 104
    .line 105
    goto :goto_3

    .line 106
    :cond_8
    const/high16 p1, -0x1000000

    .line 107
    .line 108
    :goto_3
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    .line 110
    .line 111
    iget-boolean p1, p0, Lcom/mycompany/app/main/MainTxtAdapter;->g:Z

    .line 112
    .line 113
    if-eqz p1, :cond_9

    .line 114
    .line 115
    iget-object p1, p0, Lcom/mycompany/app/main/MainTxtAdapter;->h:Landroid/graphics/Typeface;

    .line 116
    .line 117
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 118
    .line 119
    .line 120
    :cond_9
    invoke-virtual {p0, v1}, Lcom/mycompany/app/main/MainTxtAdapter;->y(Landroid/widget/TextView;)V

    .line 121
    .line 122
    .line 123
    :cond_a
    :goto_4
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    const/4 v1, 0x1

    .line 10
    const/4 v2, -0x1

    .line 11
    if-ne p2, v1, :cond_1

    .line 12
    .line 13
    new-instance p2, Landroid/view/View;

    .line 14
    .line 15
    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    new-instance p1, Landroid/widget/AbsListView$LayoutParams;

    .line 19
    .line 20
    sget v0, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 21
    .line 22
    mul-int/lit8 v0, v0, 0xa

    .line 23
    .line 24
    invoke-direct {p1, v2, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    .line 29
    .line 30
    new-instance p1, Lcom/mycompany/app/main/MainTxtAdapter$ViewHolder;

    .line 31
    .line 32
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    return-object p1

    .line 36
    :cond_1
    new-instance p2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 37
    .line 38
    invoke-direct {p2, p1, v0}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    .line 40
    .line 41
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 42
    .line 43
    const/4 v0, -0x2

    .line 44
    invoke-direct {p1, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 48
    .line 49
    .line 50
    iget-boolean p1, p0, Lcom/mycompany/app/main/MainTxtAdapter;->g:Z

    .line 51
    .line 52
    if-eqz p1, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    sget p1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 56
    .line 57
    const/4 v0, 0x0

    .line 58
    invoke-virtual {p2, p1, v0, p1, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 59
    .line 60
    .line 61
    :goto_0
    invoke-virtual {p0, p2}, Lcom/mycompany/app/main/MainTxtAdapter;->y(Landroid/widget/TextView;)V

    .line 62
    .line 63
    .line 64
    new-instance p1, Lcom/mycompany/app/main/MainTxtAdapter$ViewHolder;

    .line 65
    .line 66
    invoke-direct {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 67
    .line 68
    .line 69
    iput-object p2, p1, Lcom/mycompany/app/main/MainTxtAdapter$ViewHolder;->u:Landroidx/appcompat/widget/AppCompatTextView;

    .line 70
    .line 71
    return-object p1
.end method

.method public final v(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtAdapter;->f:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_a

    .line 4
    .line 5
    if-ltz p1, :cond_a

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lt p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_4

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/main/MainTxtAdapter;->l:Lcom/mycompany/app/view/MyManagerLinear;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    goto :goto_4

    .line 19
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->s(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    goto :goto_4

    .line 26
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-nez v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    instance-of v1, v0, Lcom/mycompany/app/main/MainTxtAdapter$ViewHolder;

    .line 34
    .line 35
    if-nez v1, :cond_4

    .line 36
    .line 37
    :goto_0
    const/4 v0, 0x0

    .line 38
    goto :goto_1

    .line 39
    :cond_4
    check-cast v0, Lcom/mycompany/app/main/MainTxtAdapter$ViewHolder;

    .line 40
    .line 41
    :goto_1
    if-eqz v0, :cond_a

    .line 42
    .line 43
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 44
    .line 45
    if-nez v1, :cond_5

    .line 46
    .line 47
    goto :goto_4

    .line 48
    :cond_5
    iget-object v0, v0, Lcom/mycompany/app/main/MainTxtAdapter$ViewHolder;->u:Landroidx/appcompat/widget/AppCompatTextView;

    .line 49
    .line 50
    if-nez v0, :cond_6

    .line 51
    .line 52
    goto :goto_4

    .line 53
    :cond_6
    iget v1, p0, Lcom/mycompany/app/main/MainTxtAdapter;->k:I

    .line 54
    .line 55
    if-ne p1, v1, :cond_8

    .line 56
    .line 57
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 58
    .line 59
    if-eqz p1, :cond_7

    .line 60
    .line 61
    const p1, 0x611976d2

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_7
    const p1, 0x61b3e5fc

    .line 66
    .line 67
    .line 68
    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_8
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 73
    .line 74
    if-eqz p1, :cond_9

    .line 75
    .line 76
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_9
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 80
    .line 81
    :goto_3
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/AppCompatTextView;->setBackgroundResource(I)V

    .line 82
    .line 83
    .line 84
    :cond_a
    :goto_4
    return-void
.end method

.method public final w(Landroid/view/ScaleGestureDetector;)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/16 v0, 0x64

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 8
    .line 9
    :cond_0
    if-nez p1, :cond_1

    .line 10
    .line 11
    iget p1, p0, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 12
    .line 13
    return p1

    .line 14
    :cond_1
    iget v0, p0, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 15
    .line 16
    int-to-float v0, v0

    .line 17
    const/high16 v1, 0x42c80000    # 100.0f

    .line 18
    .line 19
    div-float v0, v1, v0

    .line 20
    .line 21
    const/high16 v2, 0x3f800000    # 1.0f

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    sub-float/2addr v2, p1

    .line 28
    add-float/2addr v2, v0

    .line 29
    div-float/2addr v1, v2

    .line 30
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    iput p1, p0, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/mycompany/app/main/MainTxtAdapter;->x(I)I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    return p1
.end method

.method public final x(I)I
    .locals 1

    .line 1
    iput p1, p0, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 2
    .line 3
    iget v0, p0, Lcom/mycompany/app/main/MainTxtAdapter;->d:I

    .line 4
    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    iput v0, p0, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lcom/mycompany/app/main/MainTxtAdapter;->e:I

    .line 11
    .line 12
    if-le p1, v0, :cond_1

    .line 13
    .line 14
    iput v0, p0, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 15
    .line 16
    :cond_1
    :goto_0
    iget p1, p0, Lcom/mycompany/app/main/MainTxtAdapter;->j:I

    .line 17
    .line 18
    iget v0, p0, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 19
    .line 20
    if-eq p1, v0, :cond_2

    .line 21
    .line 22
    iput v0, p0, Lcom/mycompany/app/main/MainTxtAdapter;->j:I

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 25
    .line 26
    .line 27
    :cond_2
    iget p1, p0, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 28
    .line 29
    return p1
.end method

.method public final y(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/mycompany/app/main/MainTxtAdapter;->i:I

    .line 5
    .line 6
    int-to-float v0, v0

    .line 7
    const/high16 v1, 0x42c80000    # 100.0f

    .line 8
    .line 9
    div-float/2addr v0, v1

    .line 10
    const/4 v1, 0x0

    .line 11
    cmpg-float v1, v0, v1

    .line 12
    .line 13
    if-gtz v1, :cond_1

    .line 14
    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    .line 17
    :cond_1
    iget-boolean v1, p0, Lcom/mycompany/app/main/MainTxtAdapter;->g:Z

    .line 18
    .line 19
    if-eqz v1, :cond_2

    .line 20
    .line 21
    const/high16 v1, 0x41900000    # 18.0f

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/high16 v1, 0x41400000    # 12.0f

    .line 25
    .line 26
    :goto_0
    const/4 v2, 0x1

    .line 27
    mul-float/2addr v1, v0

    .line 28
    invoke-virtual {p1, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
