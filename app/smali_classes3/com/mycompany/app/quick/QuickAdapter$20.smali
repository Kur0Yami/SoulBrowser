.class Lcom/mycompany/app/quick/QuickAdapter$20;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/quick/QuickAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter$20;->a:Lcom/mycompany/app/quick/QuickAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Lcom/mycompany/app/quick/QuickAdapter$20;->a:Lcom/mycompany/app/quick/QuickAdapter;

    .line 5
    .line 6
    iget-object v0, p3, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p2}, Lcom/mycompany/app/quick/QuickAdapter;->J(Landroid/view/View;)Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    if-nez p2, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    iget-object v0, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->x:Lcom/mycompany/app/view/MyRoundImage;

    .line 19
    .line 20
    if-nez v0, :cond_3

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget v1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 28
    .line 29
    if-eq v0, v1, :cond_4

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_4
    iget-object v0, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->v:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p3, v0}, Lcom/mycompany/app/quick/QuickAdapter;->G(Ljava/lang/String;)Lcom/mycompany/app/quick/QuickAdapter$QuickItem;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    if-eqz v0, :cond_8

    .line 39
    .line 40
    iget-object p2, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->x:Lcom/mycompany/app/view/MyRoundImage;

    .line 41
    .line 42
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 43
    .line 44
    if-nez p2, :cond_5

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_5
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->q:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-eqz v1, :cond_6

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_6
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->q:Ljava/lang/String;

    .line 57
    .line 58
    const/4 v2, 0x2

    .line 59
    invoke-static {v2, v1}, Lcom/nostra13/universalimageloader/utils/MemoryCacheUtils;->a(ILjava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3, v1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    if-eqz v3, :cond_7

    .line 80
    .line 81
    invoke-virtual {p3, p2, v1}, Lcom/mycompany/app/quick/QuickAdapter;->X(Lcom/mycompany/app/view/MyRoundImage;Landroid/graphics/Bitmap;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_7
    new-instance v1, Lcom/mycompany/app/main/MainItem$ViewItem;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 88
    .line 89
    .line 90
    const/4 v3, 0x7

    .line 91
    iput v3, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->a:I

    .line 92
    .line 93
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickAdapter$QuickItem;->q:Ljava/lang/String;

    .line 94
    .line 95
    iput-object v0, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->q:Ljava/lang/String;

    .line 96
    .line 97
    iput p1, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 98
    .line 99
    iput v2, v1, Lcom/mycompany/app/main/MainItem$ViewItem;->t:I

    .line 100
    .line 101
    invoke-virtual {p3, v1, p2}, Lcom/mycompany/app/quick/QuickAdapter;->W(Lcom/mycompany/app/main/MainItem$ViewItem;Lcom/mycompany/app/view/MyRoundImage;)V

    .line 102
    .line 103
    .line 104
    :cond_8
    :goto_0
    return-void
.end method

.method public final c(Lcom/mycompany/app/main/MainItem$ViewItem;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter$20;->a:Lcom/mycompany/app/quick/QuickAdapter;

    .line 5
    .line 6
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->f:Landroid/content/Context;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-static {p3}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    invoke-static {p2}, Lcom/mycompany/app/quick/QuickAdapter;->J(Landroid/view/View;)Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    if-nez p2, :cond_3

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_3
    iget-object v1, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->x:Lcom/mycompany/app/view/MyRoundImage;

    .line 26
    .line 27
    if-nez v1, :cond_4

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_4
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    iget p1, p1, Lcom/mycompany/app/main/MainItem$ViewItem;->f:I

    .line 35
    .line 36
    if-eq v1, p1, :cond_5

    .line 37
    .line 38
    :goto_0
    return-void

    .line 39
    :cond_5
    iget-object p1, p2, Lcom/mycompany/app/quick/QuickAdapter$QuickHolder;->x:Lcom/mycompany/app/view/MyRoundImage;

    .line 40
    .line 41
    invoke-virtual {v0, p1, p3}, Lcom/mycompany/app/quick/QuickAdapter;->X(Lcom/mycompany/app/view/MyRoundImage;Landroid/graphics/Bitmap;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
