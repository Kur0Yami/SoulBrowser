.class public Lcom/bumptech/glide/ListPreloader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/ListPreloader$PreloadModelProvider;,
        Lcom/bumptech/glide/ListPreloader$PreloadSizeProvider;,
        Lcom/bumptech/glide/ListPreloader$PreloadTargetQueue;,
        Lcom/bumptech/glide/ListPreloader$PreloadTarget;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:Z


# virtual methods
.method public final a(IZ)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/bumptech/glide/ListPreloader;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-ne v0, p2, :cond_1

    .line 5
    .line 6
    iget p2, p0, Lcom/bumptech/glide/ListPreloader;->a:I

    .line 7
    .line 8
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iget v0, p0, Lcom/bumptech/glide/ListPreloader;->c:I

    .line 13
    .line 14
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    iget v0, p0, Lcom/bumptech/glide/ListPreloader;->c:I

    .line 19
    .line 20
    const/4 v2, 0x0

    .line 21
    invoke-static {v2, p1}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    add-int/lit8 p2, p2, -0x1

    .line 30
    .line 31
    if-ge p2, p1, :cond_0

    .line 32
    .line 33
    iput p1, p0, Lcom/bumptech/glide/ListPreloader;->a:I

    .line 34
    .line 35
    return-void

    .line 36
    :cond_0
    throw v1

    .line 37
    :cond_1
    iput-boolean p2, p0, Lcom/bumptech/glide/ListPreloader;->d:Z

    .line 38
    .line 39
    throw v1
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    .line 1
    iget p1, p0, Lcom/bumptech/glide/ListPreloader;->c:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    if-nez p4, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput p4, p0, Lcom/bumptech/glide/ListPreloader;->c:I

    .line 9
    .line 10
    iget p1, p0, Lcom/bumptech/glide/ListPreloader;->b:I

    .line 11
    .line 12
    if-le p2, p1, :cond_1

    .line 13
    .line 14
    add-int/2addr p3, p2

    .line 15
    const/4 p1, 0x1

    .line 16
    invoke-virtual {p0, p3, p1}, Lcom/bumptech/glide/ListPreloader;->a(IZ)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    if-ge p2, p1, :cond_2

    .line 21
    .line 22
    const/4 p1, 0x0

    .line 23
    invoke-virtual {p0, p2, p1}, Lcom/bumptech/glide/ListPreloader;->a(IZ)V

    .line 24
    .line 25
    .line 26
    :cond_2
    :goto_0
    iput p2, p0, Lcom/bumptech/glide/ListPreloader;->b:I

    .line 27
    .line 28
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
