.class Lcom/mycompany/app/main/image/MainImageWallpaper$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/image/MainImageWallpaper;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/image/MainImageWallpaper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/image/MainImageWallpaper$4;->c:Lcom/mycompany/app/main/image/MainImageWallpaper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/image/MainImageWallpaper$4;->c:Lcom/mycompany/app/main/image/MainImageWallpaper;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/main/image/MainImageWallpaper;->k1:Lcom/mycompany/app/main/image/MainImageView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v1, v0, Lcom/mycompany/app/main/image/MainImageView;->p:Z

    .line 9
    .line 10
    if-eqz v1, :cond_1

    .line 11
    .line 12
    sget v0, Lnet/kaki87/soul2/testing/R$string;->wait_retry:I

    .line 13
    .line 14
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-boolean v0, v0, Lcom/mycompany/app/main/image/MainImageView;->F:Z

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    sget v0, Lnet/kaki87/soul2/testing/R$string;->image_fail:I

    .line 23
    .line 24
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_2
    iget-boolean v0, p1, Lcom/mycompany/app/main/image/MainImageWallpaper;->r1:Z

    .line 29
    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_3
    const/4 v0, 0x1

    .line 34
    iput-boolean v0, p1, Lcom/mycompany/app/main/image/MainImageWallpaper;->r1:Z

    .line 35
    .line 36
    iget-object v1, p1, Lcom/mycompany/app/main/image/MainImageWallpaper;->p1:Lcom/mycompany/app/view/MyCoverView;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Lcom/mycompany/app/view/MyCoverView;->m(Z)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 42
    .line 43
    if-nez v0, :cond_4

    .line 44
    .line 45
    :goto_0
    return-void

    .line 46
    :cond_4
    new-instance v1, Lcom/mycompany/app/main/image/MainImageWallpaper$10;

    .line 47
    .line 48
    invoke-direct {v1, p1}, Lcom/mycompany/app/main/image/MainImageWallpaper$10;-><init>(Lcom/mycompany/app/main/image/MainImageWallpaper;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method
