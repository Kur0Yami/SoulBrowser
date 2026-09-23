.class Lcom/mycompany/app/main/image/MainImageWallpaper$10$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageWallpaper$10$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageWallpaper$10$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageWallpaper$10$1$1;->c:Lcom/mycompany/app/main/image/MainImageWallpaper$10$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/image/MainImageWallpaper$10$1$1;->c:Lcom/mycompany/app/main/image/MainImageWallpaper$10$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageWallpaper$10$1;->c:Lcom/mycompany/app/main/image/MainImageWallpaper$10;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageWallpaper$10;->c:Lcom/mycompany/app/main/image/MainImageWallpaper;

    .line 6
    .line 7
    iget-boolean v2, v1, Lcom/mycompany/app/main/image/MainImageWallpaper;->t1:Z

    .line 8
    .line 9
    iget-object v3, v1, Lcom/mycompany/app/main/image/MainImageWallpaper;->p1:Lcom/mycompany/app/view/MyCoverView;

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v4, 0x0

    .line 15
    iput-boolean v4, v1, Lcom/mycompany/app/main/image/MainImageWallpaper;->r1:Z

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v3, v1}, Lcom/mycompany/app/view/MyCoverView;->f(Z)V

    .line 19
    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageWallpaper$10;->c:Lcom/mycompany/app/main/image/MainImageWallpaper;

    .line 24
    .line 25
    sget v1, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageWallpaper$10;->c:Lcom/mycompany/app/main/image/MainImageWallpaper;

    .line 32
    .line 33
    sget v2, Lnet/kaki87/soul2/testing/R$string;->setted:I

    .line 34
    .line 35
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 36
    .line 37
    .line 38
    iget-object v1, v0, Lcom/mycompany/app/main/image/MainImageWallpaper$10;->c:Lcom/mycompany/app/main/image/MainImageWallpaper;

    .line 39
    .line 40
    const/4 v2, -0x1

    .line 41
    invoke-virtual {v1, v2}, Landroid/app/Activity;->setResult(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, v0, Lcom/mycompany/app/main/image/MainImageWallpaper$10;->c:Lcom/mycompany/app/main/image/MainImageWallpaper;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/mycompany/app/main/image/MainImageWallpaper;->finish()V

    .line 47
    .line 48
    .line 49
    return-void
.end method
