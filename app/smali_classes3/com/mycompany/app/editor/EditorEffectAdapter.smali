.class public Lcom/mycompany/app/editor/EditorEffectAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mycompany/app/editor/EditorEffectAdapter$EditorEffectListener;,
        Lcom/mycompany/app/editor/EditorEffectAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/mycompany/app/editor/EditorEffectAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lcom/mycompany/app/main/MainActivity;

.field public e:Lcom/mycompany/app/editor/EditorEffectAdapter$EditorEffectListener;

.field public f:Lcom/mycompany/app/view/MyRecyclerView;

.field public g:I

.field public h:Lcom/mycompany/app/view/GlideRequests;


# virtual methods
.method public final d()I
    .locals 1

    .line 1
    sget-object v0, Lcom/mycompany/app/editor/core/PhotoEffectView;->o:[Ljava/lang/String;

    .line 2
    .line 3
    const/16 v0, 0x17

    .line 4
    .line 5
    return v0
.end method

.method public final n(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 1
    check-cast p1, Lcom/mycompany/app/editor/EditorEffectAdapter$ViewHolder;

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
    if-ltz p2, :cond_8

    .line 10
    .line 11
    sget-object v0, Lcom/mycompany/app/editor/core/PhotoEffectView;->o:[Ljava/lang/String;

    .line 12
    .line 13
    const/16 v1, 0x17

    .line 14
    .line 15
    if-lt p2, v1, :cond_1

    .line 16
    .line 17
    goto/16 :goto_4

    .line 18
    .line 19
    :cond_1
    iget-object v1, p1, Lcom/mycompany/app/editor/EditorEffectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 20
    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_2
    iget-object v2, p0, Lcom/mycompany/app/editor/EditorEffectAdapter;->h:Lcom/mycompany/app/view/GlideRequests;

    .line 25
    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    sget-object v3, Lcom/mycompany/app/editor/core/PhotoEffectView;->p:[I

    .line 29
    .line 30
    aget v3, v3, p2

    .line 31
    .line 32
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v2, v3}, Lcom/mycompany/app/view/GlideRequests;->s(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    sget-object v3, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->a:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Lcom/bumptech/glide/request/BaseRequestOptions;->e(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/bumptech/glide/RequestBuilder;

    .line 47
    .line 48
    invoke-virtual {v2, v1}, Lcom/bumptech/glide/RequestBuilder;->E(Landroid/widget/ImageView;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object v2, p0, Lcom/mycompany/app/editor/EditorEffectAdapter;->d:Lcom/mycompany/app/main/MainActivity;

    .line 53
    .line 54
    if-nez v2, :cond_4

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_4
    new-instance v3, Lcom/mycompany/app/editor/EditorEffectAdapter$2;

    .line 58
    .line 59
    invoke-direct {v3, p0, p2, v1}, Lcom/mycompany/app/editor/EditorEffectAdapter$2;-><init>(Lcom/mycompany/app/editor/EditorEffectAdapter;ILcom/mycompany/app/view/MyThumbView;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v3}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    iget-object v1, p1, Lcom/mycompany/app/editor/EditorEffectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 66
    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object v1, p1, Lcom/mycompany/app/editor/EditorEffectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 75
    .line 76
    new-instance v2, Lcom/mycompany/app/editor/EditorEffectAdapter$1;

    .line 77
    .line 78
    invoke-direct {v2, p0}, Lcom/mycompany/app/editor/EditorEffectAdapter$1;-><init>(Lcom/mycompany/app/editor/EditorEffectAdapter;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    .line 83
    .line 84
    const/4 v1, 0x5

    .line 85
    const/4 v2, 0x1

    .line 86
    if-eq p2, v1, :cond_6

    .line 87
    .line 88
    const/16 v1, 0x11

    .line 89
    .line 90
    if-eq p2, v1, :cond_6

    .line 91
    .line 92
    const/4 v1, 0x4

    .line 93
    if-eq p2, v1, :cond_6

    .line 94
    .line 95
    const/16 v1, 0x14

    .line 96
    .line 97
    if-eq p2, v1, :cond_6

    .line 98
    .line 99
    const/16 v1, 0x15

    .line 100
    .line 101
    if-ne p2, v1, :cond_5

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_5
    iget-object v1, p1, Lcom/mycompany/app/editor/EditorEffectAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 105
    .line 106
    const/high16 v3, 0x41000000    # 8.0f

    .line 107
    .line 108
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_6
    :goto_1
    iget-object v1, p1, Lcom/mycompany/app/editor/EditorEffectAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 113
    .line 114
    const/high16 v3, 0x40e00000    # 7.0f

    .line 115
    .line 116
    invoke-virtual {v1, v2, v3}, Landroidx/appcompat/widget/AppCompatTextView;->setTextSize(IF)V

    .line 117
    .line 118
    .line 119
    :goto_2
    iget-object v1, p1, Lcom/mycompany/app/editor/EditorEffectAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 120
    .line 121
    aget-object v0, v0, p2

    .line 122
    .line 123
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    .line 125
    .line 126
    iget-object p1, p1, Lcom/mycompany/app/editor/EditorEffectAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 127
    .line 128
    iget v0, p0, Lcom/mycompany/app/editor/EditorEffectAdapter;->g:I

    .line 129
    .line 130
    if-ne p2, v0, :cond_7

    .line 131
    .line 132
    const p2, -0x5e0bbcca

    .line 133
    .line 134
    .line 135
    goto :goto_3

    .line 136
    :cond_7
    const/high16 p2, -0x5f000000

    .line 137
    .line 138
    :goto_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 139
    .line 140
    .line 141
    :cond_8
    :goto_4
    return-void
.end method

.method public final o(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 p2, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object p2

    .line 9
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    sget v1, Lcom/mycompany/app/main/MainApp;->G1:I

    .line 15
    .line 16
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 17
    .line 18
    .line 19
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 20
    .line 21
    sget v2, Lcom/mycompany/app/main/MainApp;->i1:I

    .line 22
    .line 23
    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    new-instance v1, Lcom/mycompany/app/view/MyThumbView;

    .line 30
    .line 31
    invoke-direct {v1, p1}, Lcom/mycompany/app/view/MyThumbView;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    const/4 v2, -0x1

    .line 35
    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 36
    .line 37
    .line 38
    new-instance v3, Landroidx/appcompat/widget/AppCompatTextView;

    .line 39
    .line 40
    invoke-direct {v3, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    .line 42
    .line 43
    const/high16 p2, 0x40000000    # 2.0f

    .line 44
    .line 45
    invoke-static {p1, p2}, Lcom/mycompany/app/main/MainUtil;->G(Landroid/content/Context;F)F

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    float-to-int p1, p1

    .line 50
    invoke-virtual {v3, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 51
    .line 52
    .line 53
    sget p1, Lcom/mycompany/app/main/MainApp;->E1:I

    .line 54
    .line 55
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 56
    .line 57
    .line 58
    const/16 p1, 0x11

    .line 59
    .line 60
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 67
    .line 68
    const/4 p2, -0x2

    .line 69
    invoke-direct {p1, v2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 70
    .line 71
    .line 72
    const p2, 0x800053

    .line 73
    .line 74
    .line 75
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 76
    .line 77
    invoke-virtual {v0, v3, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    .line 79
    .line 80
    new-instance p1, Lcom/mycompany/app/editor/EditorEffectAdapter$ViewHolder;

    .line 81
    .line 82
    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 83
    .line 84
    .line 85
    iput-object v1, p1, Lcom/mycompany/app/editor/EditorEffectAdapter$ViewHolder;->u:Lcom/mycompany/app/view/MyThumbView;

    .line 86
    .line 87
    iput-object v3, p1, Lcom/mycompany/app/editor/EditorEffectAdapter$ViewHolder;->v:Landroidx/appcompat/widget/AppCompatTextView;

    .line 88
    .line 89
    return-object p1
.end method

.method public final v(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/editor/EditorEffectAdapter;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    iget v0, p0, Lcom/mycompany/app/editor/EditorEffectAdapter;->g:I

    .line 7
    .line 8
    if-ne v0, p1, :cond_1

    .line 9
    .line 10
    :goto_0
    return-void

    .line 11
    :cond_1
    iput p1, p0, Lcom/mycompany/app/editor/EditorEffectAdapter;->g:I

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->g()V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/mycompany/app/editor/EditorEffectAdapter;->f:Lcom/mycompany/app/view/MyRecyclerView;

    .line 17
    .line 18
    iget v0, p0, Lcom/mycompany/app/editor/EditorEffectAdapter;->g:I

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
