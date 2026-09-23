.class Lcom/mycompany/app/view/MyThumbView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:J

.field public final synthetic f:J

.field public final synthetic g:Ljava/lang/String;

.field public final synthetic h:I

.field public final synthetic i:Lcom/mycompany/app/view/MyThumbView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyThumbView;JJLjava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyThumbView$1;->i:Lcom/mycompany/app/view/MyThumbView;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/mycompany/app/view/MyThumbView$1;->c:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/mycompany/app/view/MyThumbView$1;->f:J

    .line 9
    .line 10
    iput-object p6, p0, Lcom/mycompany/app/view/MyThumbView$1;->g:Ljava/lang/String;

    .line 11
    .line 12
    iput p7, p0, Lcom/mycompany/app/view/MyThumbView$1;->h:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyThumbView$1;->i:Lcom/mycompany/app/view/MyThumbView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyThumbView;->c:Z

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget v1, v0, Lcom/mycompany/app/view/MyThumbView;->B:I

    .line 9
    .line 10
    int-to-long v1, v1

    .line 11
    iget-wide v3, p0, Lcom/mycompany/app/view/MyThumbView$1;->c:J

    .line 12
    .line 13
    cmp-long v1, v3, v1

    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iget-wide v2, p0, Lcom/mycompany/app/view/MyThumbView$1;->f:J

    .line 23
    .line 24
    invoke-static {v1, v2, v3}, Lcom/mycompany/app/db/book/DbTabThumb;->d(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->f6(Landroid/graphics/Bitmap;)Z

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->f()Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->g()Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/mycompany/app/view/MyThumbView$1;->g:Ljava/lang/String;

    .line 44
    .line 45
    invoke-virtual {v2, v3, v1}, Lcom/nostra13/universalimageloader/cache/memory/impl/LruMemoryCache;->b(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    .line 46
    .line 47
    .line 48
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyThumbView;->c:Z

    .line 49
    .line 50
    if-nez v2, :cond_3

    .line 51
    .line 52
    :goto_0
    return-void

    .line 53
    :cond_3
    iget v2, p0, Lcom/mycompany/app/view/MyThumbView$1;->h:I

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/view/MyThumbView;->m(Landroid/graphics/Bitmap;I)V

    .line 56
    .line 57
    .line 58
    new-instance v1, Lcom/mycompany/app/view/MyThumbView$1$1;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/mycompany/app/view/MyThumbView$1$1;-><init>(Lcom/mycompany/app/view/MyThumbView$1;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 64
    .line 65
    .line 66
    return-void
.end method
