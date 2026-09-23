.class Lcom/mycompany/app/image/ImageViewPageScroll$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/image/ImageViewPageScroll$8;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageViewPageScroll$8;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageViewPageScroll$8$1;->c:Lcom/mycompany/app/image/ImageViewPageScroll$8;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageViewPageScroll$8$1;->c:Lcom/mycompany/app/image/ImageViewPageScroll$8;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageScroll$8;->c:Lcom/mycompany/app/image/ImageViewPageScroll;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->J:Lcom/mycompany/app/view/MySizeFrame;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->l:Z

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-boolean v2, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->l:Z

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageScroll;->Z0()V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    iget v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->v:I

    .line 22
    .line 23
    const/4 v2, 0x2

    .line 24
    if-ne v1, v2, :cond_3

    .line 25
    .line 26
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageScroll$9;

    .line 32
    .line 33
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageScroll$9;-><init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    const/4 v2, 0x3

    .line 41
    if-ne v1, v2, :cond_5

    .line 42
    .line 43
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->c:Lcom/mycompany/app/image/ImageViewActivity;

    .line 44
    .line 45
    if-nez v1, :cond_4

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_4
    new-instance v2, Lcom/mycompany/app/image/ImageViewPageScroll$10;

    .line 49
    .line 50
    invoke-direct {v2, v0}, Lcom/mycompany/app/image/ImageViewPageScroll$10;-><init>(Lcom/mycompany/app/image/ImageViewPageScroll;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1, v2}, Lcom/mycompany/app/main/MainActivity;->m0(Ljava/lang/Runnable;)V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_5
    invoke-virtual {v0}, Lcom/mycompany/app/image/ImageViewPageScroll;->Z0()V

    .line 58
    .line 59
    .line 60
    :goto_0
    iget-object v1, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 61
    .line 62
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->d5(Landroid/content/Context;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, v0, Lcom/mycompany/app/image/ImageViewPageScroll;->b:Landroid/content/Context;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/mycompany/app/main/MainUtil;->s7(Landroid/content/Context;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method
