.class public Lcom/mycompany/app/view/MyLinkView;
.super Landroidx/core/widget/NestedScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/view/MyLinkView$MainLinkListener;,
        Lcom/mycompany/app/view/MyLinkView$MainLinkItem;
    }
.end annotation


# static fields
.field public static final synthetic S:I


# instance fields
.field public J:Landroid/content/Context;

.field public K:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;

.field public L:Ljava/util/List;

.field public M:Landroid/widget/LinearLayout;

.field public N:Ljava/util/ArrayList;

.field public O:Ljava/util/ArrayList;

.field public P:Ljava/util/ArrayList;

.field public Q:Landroid/graphics/drawable/Drawable;

.field public R:Z

# Optional long-press listener (same MainLinkListener contract as K; id is offset by 1000)
.field public T:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/mycompany/app/view/MyLinkView;->J:Landroid/content/Context;

    .line 6
    .line 7
    return-void
.end method

.method private setItemView(I)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/mycompany/app/view/MyLinkView;->y(I)Lcom/mycompany/app/view/MyLinkView$MainLinkItem;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_2

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/view/MyLinkView;->N:Ljava/util/ArrayList;

    .line 9
    .line 10
    if-eqz v1, :cond_5

    .line 11
    .line 12
    if-ltz p1, :cond_5

    .line 13
    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-lt p1, v1, :cond_1

    .line 19
    .line 20
    goto :goto_2

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/mycompany/app/view/MyLinkView;->N:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Landroid/widget/FrameLayout;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/mycompany/app/view/MyLinkView;->O:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Landroid/view/View;

    .line 36
    .line 37
    iget-object v3, p0, Lcom/mycompany/app/view/MyLinkView;->P:Ljava/util/ArrayList;

    .line 38
    .line 39
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Landroid/widget/TextView;

    .line 44
    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    new-instance p1, Lcom/mycompany/app/view/MyLinkView$1;

    .line 53
    .line 54
    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyLinkView$1;-><init>(Lcom/mycompany/app/view/MyLinkView;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p1, Lcom/mycompany/app/view/MyLinkView$2;

    invoke-direct {p1, p0}, Lcom/mycompany/app/view/MyLinkView$2;-><init>(Lcom/mycompany/app/view/MyLinkView;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 58
    .line 59
    .line 60
    iget p1, v0, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;->b:I

    .line 61
    .line 62
    if-lez p1, :cond_2

    .line 63
    .line 64
    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    .line 66
    .line 67
    const/high16 p1, 0x3f800000    # 1.0f

    .line 68
    .line 69
    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    const/4 p1, 0x0

    .line 74
    invoke-virtual {v2, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    iget p1, v0, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;->c:I

    .line 78
    .line 79
    if-lez p1, :cond_3

    .line 80
    .line 81
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    iget-object p1, v0, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;->d:Ljava/lang/String;

    .line 86
    .line 87
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    :goto_1
    sget-boolean p1, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 91
    .line 92
    if-eqz p1, :cond_4

    .line 93
    .line 94
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal_dark:I

    .line 95
    .line 96
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 97
    .line 98
    .line 99
    const p1, -0x50506

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 103
    .line 104
    .line 105
    return-void

    .line 106
    :cond_4
    sget p1, Lnet/kaki87/soul2/testing/R$drawable;->selector_normal:I

    .line 107
    .line 108
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 109
    .line 110
    .line 111
    const/high16 p1, -0x1000000

    .line 112
    .line 113
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 114
    .line 115
    .line 116
    :cond_5
    :goto_2
    return-void
.end method

.method private setShadowRect(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyLinkView;->Q:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    if-nez p1, :cond_1

    .line 7
    .line 8
    :goto_0
    return-void

    .line 9
    :cond_1
    sget v1, Lcom/mycompany/app/main/MainApp;->e1:I

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v0, v2, v2, p1, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final A()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyLinkView;->J:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/mycompany/app/view/MyLinkView;->Q:Landroid/graphics/drawable/Drawable;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    sget v1, Lnet/kaki87/soul2/testing/R$drawable;->shadow_list_up:I

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->S(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/mycompany/app/view/MyLinkView;->Q:Landroid/graphics/drawable/Drawable;

    .line 17
    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-direct {p0, v0}, Lcom/mycompany/app/view/MyLinkView;->setShadowRect(I)V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/mycompany/app/view/MyLinkView;->R:Z

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/mycompany/app/view/MyLinkView;->R:Z

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/mycompany/app/view/MyLinkView;->Q:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-float v1, v0

    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/mycompany/app/view/MyLinkView;->Q:Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 24
    .line 25
    .line 26
    neg-int v0, v0

    .line 27
    int-to-float v0, v0

    .line 28
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/core/widget/NestedScrollView;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/mycompany/app/view/MyLinkView;->setShadowRect(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/mycompany/app/view/MyLinkView$MainLinkItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyLinkView;->L:Ljava/util/List;

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/mycompany/app/view/MyLinkView;->z()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    .line 6
    :catch_0
    return-void
.end method

.method public setListener(Lcom/mycompany/app/view/MyLinkView$MainLinkListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/view/MyLinkView;->K:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;

    .line 2
    .line 3
    return-void
.end method

.method public setLongListener(Lcom/mycompany/app/view/MyLinkView$MainLinkListener;)V
    .locals 0

    iput-object p1, p0, Lcom/mycompany/app/view/MyLinkView;->T:Lcom/mycompany/app/view/MyLinkView$MainLinkListener;

    return-void
.end method

.method public final y(I)Lcom/mycompany/app/view/MyLinkView$MainLinkItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyLinkView;->L:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-ltz p1, :cond_1

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
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyLinkView;->L:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/mycompany/app/view/MyLinkView$MainLinkItem;

    .line 21
    .line 22
    return-object p1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    return-object p1
.end method

.method public final z()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyLinkView;->J:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto/16 :goto_5

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/view/MyLinkView;->L:Ljava/util/List;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    move v0, v1

    .line 18
    :goto_0
    if-nez v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/mycompany/app/view/MyLinkView;->M:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    if-eqz v0, :cond_f

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/view/MyLinkView;->M:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    const/4 v3, -0x1

    .line 31
    const/4 v4, 0x1

    .line 32
    if-nez v2, :cond_3

    .line 33
    .line 34
    new-instance v2, Landroid/widget/LinearLayout;

    .line 35
    .line 36
    iget-object v5, p0, Lcom/mycompany/app/view/MyLinkView;->J:Landroid/content/Context;

    .line 37
    .line 38
    invoke-direct {v2, v5}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 39
    .line 40
    .line 41
    iput-object v2, p0, Lcom/mycompany/app/view/MyLinkView;->M:Landroid/widget/LinearLayout;

    .line 42
    .line 43
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/mycompany/app/view/MyLinkView;->M:Landroid/widget/LinearLayout;

    .line 47
    .line 48
    invoke-virtual {p0, v2, v3, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 49
    .line 50
    .line 51
    :cond_3
    iget-object v2, p0, Lcom/mycompany/app/view/MyLinkView;->N:Ljava/util/ArrayList;

    .line 52
    .line 53
    if-nez v2, :cond_4

    .line 54
    .line 55
    new-instance v2, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    iput-object v2, p0, Lcom/mycompany/app/view/MyLinkView;->N:Ljava/util/ArrayList;

    .line 61
    .line 62
    :cond_4
    iget-object v2, p0, Lcom/mycompany/app/view/MyLinkView;->O:Ljava/util/ArrayList;

    .line 63
    .line 64
    if-nez v2, :cond_5

    .line 65
    .line 66
    new-instance v2, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v2, p0, Lcom/mycompany/app/view/MyLinkView;->O:Ljava/util/ArrayList;

    .line 72
    .line 73
    :cond_5
    iget-object v2, p0, Lcom/mycompany/app/view/MyLinkView;->P:Ljava/util/ArrayList;

    .line 74
    .line 75
    if-nez v2, :cond_6

    .line 76
    .line 77
    new-instance v2, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    iput-object v2, p0, Lcom/mycompany/app/view/MyLinkView;->P:Ljava/util/ArrayList;

    .line 83
    .line 84
    :cond_6
    iget-object v2, p0, Lcom/mycompany/app/view/MyLinkView;->M:Landroid/widget/LinearLayout;

    .line 85
    .line 86
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-le v2, v0, :cond_8

    .line 91
    .line 92
    move v3, v0

    .line 93
    :goto_1
    if-ge v3, v2, :cond_e

    .line 94
    .line 95
    iget-object v4, p0, Lcom/mycompany/app/view/MyLinkView;->N:Ljava/util/ArrayList;

    .line 96
    .line 97
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    check-cast v4, Landroid/widget/FrameLayout;

    .line 102
    .line 103
    if-nez v4, :cond_7

    .line 104
    .line 105
    goto/16 :goto_4

    .line 106
    .line 107
    :cond_7
    iget-object v5, p0, Lcom/mycompany/app/view/MyLinkView;->M:Landroid/widget/LinearLayout;

    .line 108
    .line 109
    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 110
    .line 111
    .line 112
    add-int/lit8 v3, v3, 0x1

    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_8
    if-ge v2, v0, :cond_e

    .line 116
    .line 117
    :goto_2
    if-ge v2, v0, :cond_e

    .line 118
    .line 119
    iget-object v5, p0, Lcom/mycompany/app/view/MyLinkView;->J:Landroid/content/Context;

    .line 120
    .line 121
    const/4 v6, 0x0

    .line 122
    if-nez v5, :cond_9

    .line 123
    .line 124
    goto/16 :goto_3

    .line 125
    .line 126
    :cond_9
    iget-object v5, p0, Lcom/mycompany/app/view/MyLinkView;->N:Ljava/util/ArrayList;

    .line 127
    .line 128
    if-eqz v5, :cond_c

    .line 129
    .line 130
    if-gez v2, :cond_a

    .line 131
    .line 132
    goto/16 :goto_3

    .line 133
    .line 134
    :cond_a
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    .line 135
    .line 136
    .line 137
    move-result v5

    .line 138
    if-ge v2, v5, :cond_b

    .line 139
    .line 140
    iget-object v5, p0, Lcom/mycompany/app/view/MyLinkView;->N:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    move-object v6, v5

    .line 147
    check-cast v6, Landroid/widget/FrameLayout;

    .line 148
    .line 149
    goto :goto_3

    .line 150
    :cond_b
    new-instance v5, Landroid/widget/FrameLayout;

    .line 151
    .line 152
    iget-object v7, p0, Lcom/mycompany/app/view/MyLinkView;->J:Landroid/content/Context;

    .line 153
    .line 154
    invoke-direct {v5, v7}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 155
    .line 156
    .line 157
    new-instance v7, Landroid/view/View;

    .line 158
    .line 159
    iget-object v8, p0, Lcom/mycompany/app/view/MyLinkView;->J:Landroid/content/Context;

    .line 160
    .line 161
    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 162
    .line 163
    .line 164
    iget-object v8, p0, Lcom/mycompany/app/view/MyLinkView;->J:Landroid/content/Context;

    .line 165
    .line 166
    const/high16 v9, 0x41a00000    # 20.0f

    .line 167
    .line 168
    invoke-static {v8, v9}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 169
    .line 170
    .line 171
    move-result v8

    .line 172
    float-to-int v8, v8

    .line 173
    new-instance v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 174
    .line 175
    invoke-direct {v9, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 176
    .line 177
    .line 178
    iget-object v8, p0, Lcom/mycompany/app/view/MyLinkView;->J:Landroid/content/Context;

    .line 179
    .line 180
    const/high16 v10, 0x41600000    # 14.0f

    .line 181
    .line 182
    invoke-static {v8, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    float-to-int v8, v8

    .line 187
    iput v8, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 188
    .line 189
    iget-object v8, p0, Lcom/mycompany/app/view/MyLinkView;->J:Landroid/content/Context;

    .line 190
    .line 191
    const/high16 v10, 0x41b00000    # 22.0f

    .line 192
    .line 193
    invoke-static {v8, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 194
    .line 195
    .line 196
    move-result v8

    .line 197
    float-to-int v8, v8

    .line 198
    invoke-virtual {v9, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    .line 203
    .line 204
    new-instance v8, Landroidx/appcompat/widget/AppCompatTextView;

    .line 205
    .line 206
    iget-object v9, p0, Lcom/mycompany/app/view/MyLinkView;->J:Landroid/content/Context;

    .line 207
    .line 208
    invoke-direct {v8, v9, v6}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 209
    .line 210
    .line 211
    const/16 v6, 0x10

    .line 212
    .line 213
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 214
    .line 215
    .line 216
    invoke-virtual {v8, v4}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 217
    .line 218
    .line 219
    const/high16 v6, 0x41800000    # 16.0f

    .line 220
    .line 221
    invoke-virtual {v8, v4, v6}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 222
    .line 223
    .line 224
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    .line 225
    .line 226
    invoke-direct {v6, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 227
    .line 228
    .line 229
    iget-object v9, p0, Lcom/mycompany/app/view/MyLinkView;->J:Landroid/content/Context;

    .line 230
    .line 231
    const/high16 v10, 0x42800000    # 64.0f

    .line 232
    .line 233
    invoke-static {v9, v10}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 234
    .line 235
    .line 236
    move-result v9

    .line 237
    float-to-int v9, v9

    .line 238
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 239
    .line 240
    .line 241
    sget v9, Lcom/mycompany/app/main/MainApp;->F1:I

    .line 242
    .line 243
    invoke-virtual {v6, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v5, v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    .line 248
    .line 249
    iget-object v6, p0, Lcom/mycompany/app/view/MyLinkView;->N:Ljava/util/ArrayList;

    .line 250
    .line 251
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    iget-object v6, p0, Lcom/mycompany/app/view/MyLinkView;->O:Ljava/util/ArrayList;

    .line 255
    .line 256
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    iget-object v6, p0, Lcom/mycompany/app/view/MyLinkView;->P:Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    .line 263
    .line 264
    move-object v6, v5

    .line 265
    :cond_c
    :goto_3
    if-nez v6, :cond_d

    .line 266
    .line 267
    goto :goto_4

    .line 268
    :cond_d
    iget-object v5, p0, Lcom/mycompany/app/view/MyLinkView;->M:Landroid/widget/LinearLayout;

    .line 269
    .line 270
    sget v7, Lcom/mycompany/app/main/MainApp;->g1:I

    .line 271
    .line 272
    invoke-virtual {v5, v6, v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 273
    .line 274
    .line 275
    add-int/lit8 v2, v2, 0x1

    .line 276
    .line 277
    goto/16 :goto_2

    .line 278
    .line 279
    :cond_e
    :goto_4
    if-ge v1, v0, :cond_f

    .line 280
    .line 281
    invoke-direct {p0, v1}, Lcom/mycompany/app/view/MyLinkView;->setItemView(I)V

    .line 282
    .line 283
    .line 284
    add-int/lit8 v1, v1, 0x1

    .line 285
    .line 286
    goto :goto_4

    .line 287
    :cond_f
    :goto_5
    return-void
.end method
